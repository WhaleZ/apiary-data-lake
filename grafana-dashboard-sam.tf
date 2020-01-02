
resource "grafana_dashboard" "sam-test-tf" {
  config_json = "${file("${path.module}/templates/grafana-sam-test.json")}"
}

resource "grafana_data_source" "test_cloudwatch-sam-tf" {
  type = "cloudwatch"
  name = "cw-example"

  json_data {
    default_region = "us-east-1"
  }


}