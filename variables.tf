variable "api_gateway_id" {
    description = "ID of api_gateway resource"
    type        = "string"
}

variable "stage_name" {
    description = "Name of API Gateway stage to generate SDK from"
    type        = "string"
}

variable "sdk_type" {
    description = <<EOF
        The  language  for  the  generated SDK. Currently java ,
        javascript , android , objectivec (for iOS), swift  (for  iOS),  and
        ruby are supported.
    EOF
    type       = "string"
}

variable "parameters" {
    description = <<EOF
        A string-to-string key-value map of query parameters sdkType -depen-
        dent properties of the SDK. For sdkType of objectivec or swift  ,  a
        parameter  named  classPrefix  is required. For sdkType of android ,
        parameters named groupId , artifactId , artifactVersion , and invok-
        erPackage  are required. For sdkType of java , parameters named ser-
        viceName and javaPackageName are required.
    EOF
    type        = "string"
    default     = "none=none"
}

variable "archive_file" {
    description = "Full path to output zip file"
    type        = "string"
}