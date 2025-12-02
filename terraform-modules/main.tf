provider "aws" {
  region = "us-east-1"
}

# The Developer simply "calls" your pre-made module
module "finance_team_bucket" {
  source = "./terraform-modules/secure-bucket"  # <--- Points to your folder

  bucket_name = "finance-data-2025-app-xyz"
  
  # Notice: They CANNOT turn off encryption here. 
  # They can only provide what you allowed in variables.tf.
}
