# list instance

aws ec2 describe-instances --endpoint-url=http://localhost:4566

# up a server
aws ec2 run-instances 
  --image-id <AMI-ID> 
  --instance-type <TIPO_DA_INSTANCIA>
  --key-name <NOME_DA_CHAVE> 
  --security-group-ids <ID-DO-SG> 
  --subnet-id <ID-DA-SUBNET> 
  --count 1

# example

aws ec2 run-instances 
  --image-id ami-0c55b159cbfafe1f0 \
  --instance-type t2.micro \
  --key-name api_spring \
  --security-group-ids sg-cc3a760a56bf7bc17 \
  --subnet-id subnet-0123456789abcdef0 \
  --endpoint-url=http://localhost:4566 \
  --count 1
    
# check instance status and show id

aws ec2 describe-instances --query "Reservations[*].Instances[*].InstanceId" --output table --endpoint-url=http://localhost:4566

# finish instance
aws ec2 terminate-instances --instance-ids i-05824a3f994df3d9d --endpoint-url=http://localhost:4566

# start an instance
aws ec2 start-instances --instance-ids i-05824a3f994df3d9d --endpoint-url=http://localhost:4566