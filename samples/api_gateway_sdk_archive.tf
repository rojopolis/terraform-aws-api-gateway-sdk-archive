module "javascript_api_archive" {
    source         = ".."
    api_gateway_id = "abc123"
    stage_name     = "test"
    sdk_type       = "javascript"
    archive_file   = "sdk.zip"
}