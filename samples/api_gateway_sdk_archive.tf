module "javascript_api_archive" {
    source         = ".."
    api_gateway_id = "12345"
    stage_name     = "rj-test"
    sdk_type       = "javascript"
    archive_file   = "sdk.zip"
}

output "archive_file" {
    value = "${module.javascript_api_archive.archive_file}"
}