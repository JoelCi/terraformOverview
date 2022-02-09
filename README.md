# Terraform Overview

## Index

* [Purpose](#purpose)
* [Instructions](#instructions)
* [Architecture](#architecture)


## Purpose

Here we will find how to create an environment for our servers on AWS using terraform and terraform modules that can be consumed directly from this public github repo.

## Instructions 

1. Clone this repo locally.
2. Initialize you AWS credential using "aws configure" command and enter you accessKey and secretKey.
3. Run "terrafom init" from the root directory.
4. Check "aws-dev.tfvars" file and edit the variables with the values that you want.
5. Run "terrafom plan -var-file='./aws-dev.tfvars'" from the root directory.
6. Check the output plan.
7. Run "terrafom apply -var-file='./aws-dev.tfvars' -auto-approve" from the root directory.

Now if you login AWS management console, you should be able to see all the resources already in place.


## Architecture

![alt text](/images/architecture.JPG "diagram")
<details>
<summary><b>Details</b></summary>

---

• One VPC

• Two subnets, a public one where each EC2 instance will have a public IP, and a private one where each EC2 intance will need to go through NatGateway for updates or internet access.

• An internet Gateway

• A Natgateway on the public subnet with its own public IP

• A variable number of EC2 instances on each subnet


</details>