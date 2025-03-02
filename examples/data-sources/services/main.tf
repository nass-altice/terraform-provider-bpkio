terraform {
  required_providers {
    bpkio = {
      source = "rmcbfm.io/terraform/bpkio"
    }
  }
}

provider "bpkio" {
  api_key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Ik5hc3NpbSAtIHRmX3Byb3ZpZGVyX3Rlc3RzIiwidGVuYW50SWQiOjM0NDAsImlhdCI6MTc0MDE1MDU0MCwiZ3JhbnRzIjpbImFsbCJdLCJ2ZXJzaW9uIjoxLCJlbnYiOiIiLCJkb21haW4iOiJiIiwiZXhwIjoxNzQzMzc5MjAwfQ.jo5g2uuAk91HWLTAj31FL03UwfzTwzZd1ySEOKK14LI"
}

data "bpkio_services" "all" {}

output "all_services" {
  value = data.bpkio_services.all
}

data "bpkio_services" "ad-insertion" {
  type = "ad-insertion"
}

output "ad-insertion" {
  value = data.bpkio_services.ad-insertion
}

data "bpkio_services" "content-replacement" {
  type = "content-replacement"
}

output "content-replacement" {
  value = data.bpkio_services.content-replacement
}
