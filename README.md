# Hashicorp Vault Demo

This requires a deployed Vault instance.

Start by updating the Vault URL in `provider.tf`, then setting up the auth token as an environmental variable:
```sh
export VAULT_TOKEN=''
```

Add values for the secrets:
```sh
export TF_VAR_secret_sauce=pepper
export TF_VAR_magic_spice=coriander
export TF_VAR_special_herb=basil
export TF_VAR_supreme_protein=wagyu
```

For password rotation, use the following trigger:
```sh
# daily rotation
export TF_VAR_password_change_trigger=$(date +%Y-%m-%d)

# monthly rotation
# date +%Y-%m

# # weekly rotation
# date +%Y-week-%U
```