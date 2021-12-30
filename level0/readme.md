```
terraform init
terraform plan
terraform apply -auto-approve -parallelism=50
```
first time I ran apply it created the root management group but failed on children, probably because root wasn't created yet (parallelism). Ran w/o parallelism and it worked

Includes
- management group hierarchy
- policies defined at root
- ~ 16 managed identities for Deployment and enforcement of policy


```
deploy_demo_landing_zones = true
```
This demos landing zone archtypes