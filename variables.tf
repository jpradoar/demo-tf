
# ACCOUNT
variable "role_arn" 			{ default = "arn:aws:iam::99999999999:role/ZZZZZZZ" }   # You aws user account or permission
variable "role_session_name" 	{ default = "terraform" }   # used for declare who has deployed it (in aws logs)
variable "aws_region" 			{ default = "us-west-1" }   

# EKS
variable "cluster-name" 		{ default = "cluster-demo" }
variable "k8s-version" 			{ default = "1.19"}   	# Version of kubernetes
variable "eks_min_size" 		{ default = "1"}		
variable "eks_desired_size" 	{ default = "1"}		# if you prefere mantain in X count of nodes
variable "eks_max_size" 		{ default = "3"}
variable "eks_ec2_flavor" 		{ default = "t2.large" } 
variable "capacity_type" 		{ default = "SPOT" } # ON_DEMAND or SPOT. If you need to do test, SPOT is much more cheap ;) 
variable "disk_size" 			{ default = "80" }

# VPC
variable "vpc_name" 			{ default = "main-vpc" }
variable "enable_dns_support" 	{ default = "true" }    # your instances can resolv internal dns 
variable "enable_dns_hostnames" { default = "true" } 	# your instances can resolv dns names and ips
variable "enable_classiclink" 	{ default = "true" }
variable "enable_classiclink_dns_support" { default = "true" }
variable "enable_nat_gateway" 	{ default = "true" }
variable "single_nat_gateway" 	{ default = "true" }

# ECR
variable "ecr_name" 				{ default = "demoregistry" }
variable "ecr_image_tag_mutability" { default = "MUTABLE" }
variable "ecr_scan_on_push" 		{ default = "true" }



