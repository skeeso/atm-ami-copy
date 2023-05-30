<!-- Auto generated file -->

# AWS Module for Copying AMIs
 [![Build Status](https://circleci.com/gh/ifunky/terraform-aws-copy-ami.svg?style=svg)](https://circleci.com/gh/ifunky/terraform-aws-copy-ami)

Copies AMIs from one region to another and optionally applies launch permissions to other accounts.

## Features

### AWS AMI Copy

- Support cross region
- Apply launch permissions



## Usage
```hcl
module "copy-ami" {
  source        = "git::https://github.com/ifunky/terraform-aws-copy-ami.git?ref=master"

  account_ids_for_sharing = ["1232323232", "123232321"]
  source_ami_name         = "aws-base-centos-server-1.0.201910031023"
  source_ami_id           = "ami-123456"
  source_ami_region       = "eu-west-1"

  tags = {
    Terraform = "true"
  }
}
```


## Makefile Targets
The following targets are available: 

```
createdocs/help                Create documentation help
polydev/createdocs             Run PolyDev createdocs directly from your shell
polydev/help                   Help on using PolyDev locally
polydev/init                   Initialise the project
polydev/validate               Validate the code
polydev                        Run PolyDev interactive shell to start developing with all the tools or run AWS CLI commands :-)
```
# Module Specifics

Core Version Constraints:
* `~> 0.12.2`

Provider Requirements:
* **aws:** `~> 2.16`

## Input Variables
* `account_ids_for_sharing` (required): List of account IDs to allow launch permissions for
* `attributes` (required): Additional attributes (e.g. `1`)
* `client` (required): client, e.g. 'ifunky'
* `delimiter` (default `"-"`): Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`
* `enabled` (default `true`): Set to false to prevent the module from creating any resources
* `environment` (required): Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'
* `namespace` (required): Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'
* `source_ami_id` (required): Unique ID of AMI to copy from source to target region
* `source_ami_name` (required): Unique name of AMI to copy from source to target region
* `source_ami_region` (required): Source AMI region
* `stage` (required): Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'
* `tags` (required): Additional tags (e.g. `map('BusinessUnit','XYZ')`

## Output Values
* `ami_id`: ID of copied AMI

## Managed Resources
* `aws_ami_copy.default` from `aws`
* `aws_ami_launch_permission.default` from `aws`




## Related Projects

Here are some useful related projects.

- [PolyDev](https://github.com/ifunky/polydev) - PolyDev repo and setup guide



