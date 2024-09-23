# terraform {
#   backend "gcs" {
#     bucket = "mansaini-burner"
#     prefix = "service-access"
#   }
# }

# terraform {
#   backend "local" {}
# }

terraform { 
  cloud { 
    
    organization = "learnwithray" 

    workspaces { 
      name = "sentinel-policy-check-terraform-cloud" 
    } 
  } 
}

