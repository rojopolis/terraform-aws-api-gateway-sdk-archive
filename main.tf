data "external" "get_sdk" {
    program = [
        "aws",
        "apigateway", "get-sdk",
        "--rest-api-id", "${var.api_gateway_id}",
        "--stage-name", "${var.stage_name}",
        "--sdk-type", "${var.sdk_type}",
        "--parameters", "${var.parameters}",
        "${var.archive_file}"
    ]
}