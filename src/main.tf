resource "vault_generic_secret" "sauce" {
  path = "secret/sauce"

  data_json = <<EOT
{
  "secret_sauce": "${var.secret_sauce}",
  "magic_spice": "${var.magic_spice}",
  "special_herb": "${var.special_herb}"
}
EOT
}

resource "vault_generic_secret" "ingredient" {
  path = "secret/ingredient"

  data_json = <<EOT
{
  "supreme_protein": "${var.supreme_protein}",
  "barcode": "${local.barcode}"
}
EOT
}

# Password rotates every day using 
# export TF_VAR_password_change_trigger=$(date +%Y-%m-%d)
resource "random_password" "barcode" {
  for_each = toset([var.password_change_trigger])
  length   = 16
  special  = true
}
# Password result stored in locals, to be used where needed
locals {
  barcode = random_password.barcode[var.password_change_trigger].result
}

