# AWS Public-Priviate Server infrastructure with Terraform! 
We will create a AWS setup with server in public and private subnet using terraform(IaC) with very minimum complexity to keep it simple. 
Just clone the GitHub code and run it locally.


## Prerequisite
- Terraform installed
- AWS IAM user keys configured (with relevent access)

## How to run terraform code

terraform apply

![Terraform_apply](https://user-images.githubusercontent.com/47947075/86493240-5d819300-bd8e-11ea-8d00-446a8286833f.png)



```yaml
# Sample terraform run from console
 terraform apply
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  + aws_eip.MyNat-eip
      id:                                          <computed>
      allocation_id:                               <computed>
      association_id:                              <computed>
      customer_owned_ip:                           <computed>
      domain:                                      <computed>
      instance:                                    <computed>
      network_interface:                           <computed>
      private_dns:                                 <computed>
      private_ip:                                  <computed>
      public_dns:                                  <computed>
      public_ip:                                   <computed>
      public_ipv4_pool:                            <computed>
      vpc:                                         "true"

  + aws_instance.Private-instance1
      id:                                          <computed>
      ami:                                         "ami-0affd4508a5d2481b"
      arn:                                         <computed>
      associate_public_ip_address:                 <computed>
      .......
```

## To list terraform resource so created 

![Terraform_StateList](https://user-images.githubusercontent.com/47947075/86493513-763e7880-bd8f-11ea-9102-926c34d1f50a.png)

## Sample snip for AWS component created via this Terraform code
![AWS_VPC_via-Terraform](https://user-images.githubusercontent.com/47947075/86493616-cb7a8a00-bd8f-11ea-9eac-5026555ed1e3.png)


    Do remember to run "terraform destroy" (to terminate all resource) if these where not meant to keep running!
