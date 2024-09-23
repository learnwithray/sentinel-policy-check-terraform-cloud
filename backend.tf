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
      name = "module-testing" 
    } 
  } 
}

