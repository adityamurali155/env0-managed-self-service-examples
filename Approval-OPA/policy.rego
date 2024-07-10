package env0

# METADATA
# description: Denies a destroy operation of the VPC template environment

deny[format(rego.metadata.rule())]{
    input.deploymentRequest.type == "destroy"
    input.template.name == "VPC"
    reason:= sprintf("Deny a destroy operation for the VPC template environment")
}

format(meta) := meta.description