terraform {
  cloud {
    hostname     = "backend.api.env0.com"
    organization = "2d03541c-1a22-4e76-a10d-2b5e22584b7f.fbd80c90-78fe-46c7-a401-7ab161ec02cb"
    workspaces {
      name = "my-first-remote-apply"
    }
  }
}