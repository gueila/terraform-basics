resource "aws_s3_bucket" "proveedores" {
  count  = 2
  bucket = "my-tf-test-bucket-proveedores-karen${random_string.sufijo[count.index].id}"
  tags = {
    Owner      = "Karen"
    Enviroment = "dev"
  }
}

resource "random_string" "sufijo" {
  count   = 2
  length  = 4
  special = false
  upper   = false
  numeric = false
}
