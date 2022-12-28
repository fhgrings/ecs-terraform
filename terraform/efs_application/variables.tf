variable "name" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "subnets_ids" {
  type = list(string)
}