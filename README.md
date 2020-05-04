# terraform-lll
_Linkedin Learning Course_

````shell script
terraform output first_output

terraform apply -var 'new_map={ subnet1="saly", subnet2="frank" }'

terraform apply -var-file="newvariableassignments.tfvars"

````


The referenced S3 bucket must have been previously created. If the S3 bucket
was created within the last minute, please wait for a minute or two and try
again.

 terraform plan -var-file="starter.tfvars"


TF_LOG=trace terraform init