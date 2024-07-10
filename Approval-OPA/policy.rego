package env0

deny[format(rego.metadata.rule())]{
    input.deploymentRequest.type == "destroy"
    input.deploymentRequest.triggerName == "user" 
}

format(meta) := meta.description