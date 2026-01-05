# Terraform basics

Descarga el provider necesario para ejecutar el code

```bash
terraform init
```

Genera un plan respecto al code, y nos lo presenta q hara

```bash
terraform plan
```

Crea el plan, lo presenta y pregunta
```bash
terraform apply
```

Borra todo respecto al code
```bash
terraform destroy
```

```bash
terraform show
```

Format doc y valida la sintaxis
```bash
terraform fmt
terraform validate
```

## Versiones


## Prioridad en la definicion de las variables

1. Variable de entorno (export TF_VAR_EJEMPLO="valor")
2. terraform.tfvars
3. *.auto.tfvars (por orden alfabetico)
4. -var o --var-file (por linea de comando) 

```bash
terraform apply --auto-approve=true 
```

## Target

```bash
terraform apply --target aws_subnet.public_subnet
```

Refresca el .state desde la infraestructura
```bash
terraform refresh
```

```bash
terraform state list
```

```bash
terraform taint
```

### Logs

Menor detalle   | info
...             | warning
...             | error
...             | debug
Maximo detalle  | trace

```bash
export TF_LOG=TRACE
export TF_LOG_PATH=logs.txt
```
