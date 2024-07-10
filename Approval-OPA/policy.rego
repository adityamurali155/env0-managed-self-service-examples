package env0

deny[format(rego.metadata.rule())]{
    input.deploymentRequest.type == "destroy"
}

format(meta) := meta.description