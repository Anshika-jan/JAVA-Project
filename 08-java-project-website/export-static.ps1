$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force -Path "public/css", "public/js", "public/admin" | Out-Null
Copy-Item "web/src/main/webapp/css/style.css" "public/css/style.css" -Force

$custSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
Invoke-WebRequest -Uri "http://localhost:8080/login" -Method Post -Body @{ email="customer@shopsphere.com"; password="user123" } -WebSession $custSession -UseBasicParsing | Out-Null

$adminSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
Invoke-WebRequest -Uri "http://localhost:8080/login" -Method Post -Body @{ email="admin@shopsphere.com"; password="admin123" } -WebSession $adminSession -UseBasicParsing | Out-Null

$publicUrls = @{
    "public/index.html" = "http://localhost:8080/"
    "public/products.html" = "http://localhost:8080/products"
    "public/product-details.html" = "http://localhost:8080/product-details.jsp?id=1"
    "public/login.html" = "http://localhost:8080/login.jsp"
    "public/register.html" = "http://localhost:8080/register.jsp"
}

foreach ($file in $publicUrls.Keys) {
    $html = (Invoke-WebRequest -Uri $publicUrls[$file] -UseBasicParsing).Content
    Set-Content -Path $file -Value $html -Encoding UTF8
    Write-Host "Generated $file"
}

$custUrls = @{
    "public/cart.html" = "http://localhost:8080/cart.jsp"
    "public/checkout.html" = "http://localhost:8080/checkout.jsp"
    "public/orders.html" = "http://localhost:8080/orders.jsp"
    "public/profile.html" = "http://localhost:8080/profile.jsp"
    "public/wishlist.html" = "http://localhost:8080/wishlist.jsp"
    "public/order-success.html" = "http://localhost:8080/order-success.jsp"
}

foreach ($file in $custUrls.Keys) {
    $html = (Invoke-WebRequest -Uri $custUrls[$file] -WebSession $custSession -UseBasicParsing).Content
    Set-Content -Path $file -Value $html -Encoding UTF8
    Write-Host "Generated $file"
}

$admUrls = @{
    "public/admin/dashboard.html" = "http://localhost:8080/admin/dashboard"
    "public/admin/products.html" = "http://localhost:8080/admin/products.jsp"
    "public/admin/categories.html" = "http://localhost:8080/admin/categories.jsp"
    "public/admin/orders.html" = "http://localhost:8080/admin/orders.jsp"
    "public/admin/coupons.html" = "http://localhost:8080/admin/coupons.jsp"
    "public/admin/users.html" = "http://localhost:8080/admin/users.jsp"
}

foreach ($file in $admUrls.Keys) {
    $html = (Invoke-WebRequest -Uri $admUrls[$file] -WebSession $adminSession -UseBasicParsing).Content
    Set-Content -Path $file -Value $html -Encoding UTF8
    Write-Host "Generated $file"
}
