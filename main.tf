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
