module "servers" {
  source = "./111"

}

resource "ad_gpo_security" "gpo_sec" {
  gpo_container = ad_gpo.gpo.id
  password_policies {
    minimum_password_length = 3
  }
}
  variable "hostname" { default = "ad.yourdomain.com" }
variable "username" { default = "user" }
variable "password" { default = "password" }

// remote using Basic authentication
provider "ad" {
  winrm_hostname = var.hostname
  winrm_username = var.username
  winrm_password = var.password
}
  
  
  provider "gitlab" {
  token = var.gitlab_token
}

# Add a project owned by the user
resource "gitlab_project" "sample_project" {
  name = "example"
}

# Add a hook to the project
resource "gitlab_project_hook" "sample_project_hook" {
  project = gitlab_project.sample_project.id
  url     = "https://example.com/project_hook"
}
  
provider "grafana" {
  auth          = "cloud_api_key"
  alias         = "cloud"
  cloud_api_key = "2134231"
}

resource "grafana_cloud_stack" "sm_stack" {
  provider = grafana.cloud

  name        = "stack-name"
  slug        = "stack-slug"
  region_slug = "us"
}  
  

provider "inext" {
  region = "eu"
  # client_id  = ""  // can be set with env var INEXT_CLIENT_ID
  # access_key = "" // can be set with env var INEXT_ACCESS_KEY
}

resource "inext_access_token" "access_token" {}
  
  terraform {
  required_providers {
    android = {
      source = "OJFord/android"
    }
  }
}

provider "android" {
}
  
  
