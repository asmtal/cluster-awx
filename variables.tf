variable "awx-amount" {
  description = "Quantidade de maquinas para o cluster."
  type        = string
  default     = 2
}

variable "awx-name" {
  description = "Nome das instancias."
  type        = string

}

variable "awx-machine-type" {
  description = "Tipo de instancia a ser criada."
  type        = string

}

variable "awx-image" {
  description = "Imagem a ser utilizada nas instancias."
  type        = string

}

variable "awx-zone" {
  description = "Zona onde será criada as instancias."
  type        = string

}

variable "ip-range" {
  description = "Range de ip para ser liberado no firewall."
  type        = string
}

variable "ssh-keys" {
  type = list(object({
    publickey = string
    user      = string
  }))
  description = "Lista de pub ssh key que precisam ter acesso nas vms."
  default = [{
    publickey = "ssh-rsa yourkeyabc username@PC"
    user      = "username"
  }]

}