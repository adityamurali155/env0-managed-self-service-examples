package env0


warn[format(rego.metadata.rule())]{
    input.deploymentRequest.type == "destroy"
    input.deploymentRequest.triggerName == "user" 
}

format(meta) := meta.description