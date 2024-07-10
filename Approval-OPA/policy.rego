package env0

# METADATA
# description: Denies a destroy operation of the VPC template environment

deny[format(rego.metadata.rule())]{
    input.deploymentRequest.type == "destroy"
    input.template.name == "VPC"
}

format(meta) := meta.description