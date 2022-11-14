terraform {
  required_providers {
    demo = {
      source = "app.terraform.io/tfc-demo-org/demo"
      version = "0.0.1"
    }
  }
}

resource "demo_example" "example" {
  configurable_attribute = "some-resource-value"
}

output "resource_id" {
  value = demo_example.example.id
}

data "demo_example" "example" {
  configurable_attribute = "some-data-value"
}

output "data_attribute" {
  value = data.demo_example.example.configurable_attribute
}
