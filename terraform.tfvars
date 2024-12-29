bucket_name = "dev-proj-1-jenkins-remote-state-bucket-2378"

vpc_cidr             = "11.0.0.0/16"
vpc_name             = "dev-proj-jenkins-us-east-vpc-1"
cidr_public_subnet   = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet  = ["11.0.3.0/24", "11.0.4.0/24"]
us_availability_zone = ["us-east-1a", "us-east-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCtz0J2Yg92Yobp+ONtWKQDPFA+2XlvEhHVC8O2G5nNY8m1qLxa3UhgJic39Kumn7BFTbBdZgXCGprFUjknPvbsofb+yeh1R0vEX5r8nk65ZB0ZHh6paBaQ6V0O0BU0Jb9n+7VI1tKhPRTOSJ8tdQrzyDyrL67/o/vRGxRA6hgtyIwBmec5J1HlUt14bI9JtG+uCL6kKMjIbYgzyO4uYiRUcfzHgaowzrATc3gu62JY8sSr30WonzLY8FBoR06uF9FbSb5/TY2dhe6yIPArDhguB6iA6qJqp9xJJC75aaUudFe7uXotHx0R/yuuRDydRZqdm43WL1KbeRIUCUhV//z7S6ft2NOwRONXJ9wasx28PTFg4TW4F8q9zrGCLNx+PslifGuqryHEa43v9ddX+90IkCgXVev7gINQ2I1gP0XxINFkOl4p9KslDo6VD32tNFsYouvk4aDJumWVJB5Z+m5jaUS8h7dtIAPGaVfQsjsoh8wJANXxZHD/iPmfYA3to0AwiqAKh12FR4BmRHVaOZ/cWIlZJEfP5lOI8Z+L2K/xMIAQJX88Y7vh5ojcZi4zUEgS7dDfBKGfqlCFCEJGE2H+CR8Gw/2YLtCt5BkMojLCvYDICX3F2zTyyY+gqUbPTYFPc786rMmIy7PQIh4OCWudnU3iG9YA1rsQ/s0CmEcB/Q== vasu@vasu-Latitude-3400"
ec2_ami_id = "ami-0e2c8caa4b6378d8c"