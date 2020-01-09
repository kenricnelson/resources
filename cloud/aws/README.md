Amazon Web Services (AWS)
=========================

https://aws.amazon.com/

Getting Started
---------------

The steps below outline creating an AWS account, creating some users,
generating access keys and the importance of selecting a region.
Amazon has extensive tutorials on using their cloud services including
using their UI to [launch a
server.](https://aws.amazon.com/getting-started/tutorials/launch-a-virtual-machine)
Below are the minimum required steps to use Cloud Rails - AWS.

**Note that AWS accounts require a valid credit card**.

1. [Create an AWS account.](https://portal.aws.amazon.com/billing/signup)  
  
2. [Create users](https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started_create-admin-group.html)

3. [Generate api access id and key](https://console.aws.amazon.com/iam/home?#/security_credentials)

4. Select region to use.  We use us-east-2 to store the AMIs

5. Install the [boto3 python API](https://aws.amazon.com/sdk-for-python/)

   ```bash
   pip install boto3
   ```
6. Set up [credentials](credentials) including your aws access id and key as well as the desired availability region.  **Change the credentials to your own id and key.** The credentials are found by default in your home directory; on ubuntu in:

```bash
~/.aws/credentials
```

See [boto3 credentials](https://boto3.amazonaws.com/v1/documentation/api/latest/guide/configuration.html) for complete instructions and additional options.


Network  
-------

There are some preliminary steps to get up and running on AWS that can be done once:  

 . create a network (VPC)  
 . an identity (IAM)  
 . private key pair (KEYPAIR)  

Either step thru the [Network notebook](python/Network.ipynb) filling
in the appropriate local directory to store the generated keypair .pem
file or run the [utils.py](python/utils.py) script.

```bash  
python3 utils.py  
```  

AWS also provides a [Command Line Interface]() and [User
Interface](ui.md) for the requisite network/credential settings.

The network for a Virtual Private Cloud only needs to be done once.
After the initial VPC Network set-up you can create as many or as few EC2
instances as you want and launch multiple blockchain images (AMIs).

The [VPC notebook](VPC.ipynb) are short scripts that create:

1. Key Pair  
2. VPC  
3. InternetGateway  
4. Route Table  
5. Subnet  
6. Security Group  

The Key Pair is stored in a .pem file and provides for secure ssh. The
VPC, IGW, RT, subnet and security groups provide alternative resources
to default settings.  We will use these settings when launching EC2
instances or AMI images.



Server  
------  

We provide two ways to create an instance; new and from an image.

EC2 instance typical settings:

1. tags for security group and instance names
2. key pair pem file
3. vpc id
4. subnet id 
5. IAM role: "blockchain-node-role"
6. security group: "blockchain-nodes-sg" and id
7. availability zone: region_name (e.g. us-east-2) from credentials profile appended with 'a', 'b', 'c' or other
8. instance [type](https://us-east-2.console.aws.amazon.com/ec2/v2/home?region=us-east-2#LaunchInstanceWizard) .e.g. "micro"=1CPU/1G, "large"=4CPU/8Gb
9. node disk size (Gb): Bitcoin would be about 300 full node


In both cases, the server is set-up with a few modifications.

 * an assumed single volume at /dev/xvdf with mount point /data owned by the `ubuntu` user  
 * an environment varible `$CHAIN_DATA=/data/{BLOCKCHAIN_ID}` and updated $PATH
 * install python package manager `pip`.

See the bash shell script below:

```bash
#!/bin/bash
sudo apt-get update

sudo mkfs -t xfs /dev/xvdf
sudo mkdir /data
sudo mount /dev/xvdf /data
sudo chown -R ubuntu:ubuntu /data

export CHAIN_DATA=/data/{BLOCKCHAIN_ID}
echo 'export CHAIN_DATA=/data/{BLOCKCHAIN_ID}'  >> /home/ubuntu/.bashrc

export PATH=$PATH:$CHAIN_DATA
echo 'export PATH=$PATH:/data/{BLOCKCHAIN_ID}'  >> /home/ubuntu/.bashrc

source ~/.bashrc

mkdir $CHAIN_DATA
cd $CHAIN_DATA

sudo apt-get update
sudo apt-get install -y python3-pip
```

Each **coin** also includes additional shell scripts detailed in their
respective folders; for example [bitcoin]()  

2. Create from image

Step thru the [AMI notebook](python/AMI.ipynb) selecting the **ID**
(e.g. ethereum.org) and **node** (e.g. Go Mainnet) for the desired
blockchain from the table generated or run the utils.py script.  This
will launch an EC2 instance (server) and start syncing the blockchain
from the previous block height listed on the image.

The image can be launched using the [AMI notebook](AMI.ipynb).  The
notebook uses the [VPC](VPC.ipynb) resources and will automatically
create an ubuntu EC2 instance and appropriate volumes including a
checkpoint of the node through a certain blockheight, generally
recorded in the AMI name.  This is the typical way to launch a node or
update the node periodically.


Image
-----

After a node is created and fully synced or an existing node
re-synced, a public image can be created or updated.  

1. Create  

2. Update/Delete  


Utility code
------------

The included [python/utils.py](utils.py) script parallels the included notebooks.  
