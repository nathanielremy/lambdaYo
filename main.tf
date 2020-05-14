Provider "aws" {
region = "eu-central-1"
#access_key = "AKIAJV4SKJNKLFL5S34Q"
#secret_key = "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"
}
resource "aws_key_pair" "jenkins" {
key_name = "jenkins"
public_key = "ssh-rsa
AAAAB3NzaC1yc2EAAAADAQABAAABAQC63qEZsm1GqdJxSpmG9ns5XANku/ZyxGI3a4xFRtPE+m8YOaOxfTc4Kom498eKrfIruD3h5LKMpxHND6TyhZ/6bUFBkCEMnBSPLramwxqvkMn1XtwJJsj6i3Wns3RXmLTRi3Yaa8cZsN2u3YrSUk3xZfh6LwMW5fMs/I3/lcRSow0Vp9lWCd0B3NeaT/KN8/HeeiYtdc1paYvrskIco3BasZ/YouPYhYE9kgspSwQifEIKZ2htDuueW0ZbttFoKMRLA8g4lP7BPyAUIls82XjTl0mAsjZxv4vloVyV7eKVxvHd3YBbEqtbtt0sCsXGtDVhoRKRDGC/TbBRBXxFAuW
/ nexus@MacBook-Pro-Maksym.local"
}
resource "aws_instance" "web" {
ami = "ami-0f4734c7a40e8d47e"
instance_type = "t2.micro"
key_name = "jenkins"
security_groups = ["default"]
tags = {
Name = "HelloWorld"
}
}
