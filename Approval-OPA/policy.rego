package env0

deny[format(rego.metadata.rule())]{
    input.deploymentRequest.type == "destroy"
    input.template.name == "VPC"
}

format(meta) := meta.description