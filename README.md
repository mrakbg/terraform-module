
## Using Terraform Modules to Create Resources in GCP

You can use these modules to create resources in GCP by just creating a `main.tf` file as follows:

```hcl
provider "google" {
  project = "projectid"  # enter projectID
  region  = "region"     # enter region
}

module "ec2" {
  source = "https://github.com/mrakbg/terraform-module.git//foldername"  # enter link of module repo and foldername
  image  = "debian-cloud/debian-11"  # enter whatever variables are required
}
```

### Steps

1. **Create the `main.tf` file** with the content above.
2. **Replace placeholders** (`projectid`, `region`, `foldername`, and variables) with actual values.
3. **Initialize Terraform** by running:
   ```sh
   terraform init
   ```
4. **Apply the configuration** by running:
   ```sh
   terraform apply
   ```

That's it!

---
