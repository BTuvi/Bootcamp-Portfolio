#Print public ip
output "public_ip_address" {
  value = azurerm_lb.publicLB.private_ip_address
}

#Print username
output "username" {
  value = var.STUDENT_NAME
}

#Print password
output "password" {
  value = var.VM_ADMIN_PASSWORD
}
