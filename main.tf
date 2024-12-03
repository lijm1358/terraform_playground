data "aws_ec2_spot_price" "example" {
    instance_type = "g4dn.xlarge"
    # availability_zone = "ap-northeast-2"
    
    filter {
        name = "product-description"
        values = ["Linux/UNIX"]
    }

    filter {
        name = "availability-zone"
        values = ["ap-northeast-2a", "ap-east-1a"]
    }
}
