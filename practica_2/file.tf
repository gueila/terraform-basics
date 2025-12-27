resource "local_file" "productos" {
  count = 3
  content  = "Lista de productos para enero"
  filename = "productos-${random_string.sufijo[count.index].id}.txt"
}
