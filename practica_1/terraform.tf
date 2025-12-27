resource "local_file"  "productos" {
    content = "Lista de productos para enero"
    filename = "productos.txt"
}