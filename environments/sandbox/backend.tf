terraform {
    backend "s3" {
        bucket = "lokesh-sandbox-terraform"
        key = "lokeshtodwal/tf-assignment"
        region = "us-west-2"
        encrypt = true
        dynamodb_table = "lokesh-sandbox-terraform"
        profile = "sandbox"
    }
}
