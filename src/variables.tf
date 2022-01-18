variable "secret_sauce" {
  sensitive = true
}
variable "magic_spice" {
  sensitive = true
}
variable "special_herb" {
  sensitive = true
}
variable "supreme_protein" {
  sensitive = true
}
variable "password_change_trigger" {
  type        = string
  description = "Id to trigger changing the master password"
}
