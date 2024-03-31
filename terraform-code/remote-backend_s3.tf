terraform {
  backend "s3" {
    bucket = "movie-proj-app-remote-state-bucket-123456"
    key    = "movie-app/project/terraform.tfstate"
    region = "us-east-1"
  }
}
