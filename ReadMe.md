# **CloudForce Sky Community Weekly Challenge: Deploy and Secure an AWS Infrastructure with Terraform**

## **Challenge Overview**  
This challenge focuses on deploying a **secure** three-tier AWS architecture using Terraform. You will implement a Virtual Private Cloud (VPC) with public and private subnets across two availability zones, leveraging a NAT instance/gateway, load balancer, and Auto Scaling Groups (ASGs). Your infrastructure will align with the Security Pillar of the AWS Well-Architected Framework, utilizing IAM roles, encryption, and monitoring services.

You’ll start with the provided starter Terraform files and improve them by adding security enhancements with the objective to help you gain hands-on experience in managing infrastructure as code (IaC) and implementing security in the AWS cloud.

## **Challenge Requirements**
1. **Free Tier Usage**: All AWS services used must be within the [AWS Free Tier](https://aws.amazon.com/free/) to minimize costs.
2. **Cloud Security Focus**: Implement security measures using IAM, encryption, AWS Config, CloudTrail, and any other other free AWS security services.
3. **AWS Architectural Diagram**: Create a visual diagram of your AWS infrastructure, highlighting the security components using [draw.io](https://draw.io)
4. **Terraform Files**: Use Terraform to manage and deploy the infrastructure. Starter Terraform files will be provided. To get started on Terraform you can use the Official [AWS Tutorials](https://developer.hashicorp.com/terraform/tutorials/aws-get-started) from HashiCorp

## **Infrastructure Details**
All the infrstructure should be crerated using IaC i.e. Terraform and not via the AWS Management Console. 
- **VPC**: Create a Virtual Private Cloud (VPC) with public and private subnets.
- **EC2 Instances**: Deploy an EC2 instance in the private subnet with an IAM role that restricts access.
- **S3 Bucket**: Set up an S3 bucket with encryption and appropriate IAM policies for secure access.
- **Security Groups**: Define security groups to control inbound and outbound traffic.
- **CloudTrail**: Enable AWS CloudTrail for logging API activity.
- **IAM Policies**: Create least privilege IAM roles and policies for resources.

**Starter Terraform Files**
In this Repository you will find the Terraform files to get you started, feel free to use them or any other set of files to get you started depending on your level of Terraform knowledge. 

This infrastructure is inspired by an awesome blog by one of our members, Macrine on how to create a 3-Tier AWS Architecture on AWS using Terraform I would recommend you read and implement including recreating the architectural diagram.

- [Terraform (IaC) to provision Autoscaling groups and application load balancer](https://medium.com/@marcrinemm/terraform-iac-to-provision-autoscaling-groups-and-application-load-balancer-7c1a51c7b070) 



## **Challenge Outcomes**
By the end of this challenge, you will:
- Deploy a secure AWS environment using Terraform.
- Implement and improve basic security practices including IAM, encryption, and logging.
- Align your infrastructure with the AWS Well-Architected Framework's Security Pillar.
- Gain hands-on experience on infrastructure as code and cloud security.

## **Deliverables**
You will have three deliverables to succesfully complete the challenge:
1. **GitHub Repository**: Submit your updated and functional Terraform code and improvements in a [GitHub repository](https://github.com/).
2. **Blog Post**: Write a blog post on [Medium](https://medium.com), [Hashnode](https://hashnode.com/) or [Dev.to](https://dev.to/) detailing your approach, the security enhancements you implemented, and how it aligns with the AWS Well-Architected Framework. Make sure you include your AWS Architectral diagram from [draw.io](https://draw.io). Ensure you use the AWS 2024 Icons 
3. **Security Best Practices**: Include recommendations for further security improvements based on AWS best practices from the [Security Pillar](https://docs.aws.amazon.com/wellarchitected/latest/security-pillar/welcome.html?did=wp_card&trk=wp_card) of the [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)


## **Bonus Challenge**
Improve the security of the application by restricting access to the Application Load Balancer using Cloudfront. There are several ways of doing (e.g. Georestriction) this choose one and implement it on your terraform code and be sure to include it on your repository and blog. 