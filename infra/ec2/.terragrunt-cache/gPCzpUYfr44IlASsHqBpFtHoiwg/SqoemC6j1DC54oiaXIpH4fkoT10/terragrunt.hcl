terraform {
  source = "./"
}

inputs = {
  region        = "us-east-1"
  ami_id        = "ami-08c40ec9ead489470" # Amazon Linux 2 em us-east-1
  instance_type = "t2.micro"              # Mais barata possível
}
