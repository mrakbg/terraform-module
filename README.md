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

### Optional: Using GCS for Backend Storage

If you want to use Google Cloud Storage (GCS) for storing the Terraform state, create a `backend.tf` file with the following content:

```hcl
terraform {
  backend "gcs" {
    bucket  = "your-terraform-state-bucket"  # enter your GCS bucket name
    prefix  = "terraform/state"              # optional: directory within the bucket to store the state file
  }
}
```

### Steps

1. **Create the `main.tf` file** with the content above.
2. **(Optional) Create the `backend.tf` file** with the GCS backend configuration.
3. **Replace placeholders** (`projectid`, `region`, `foldername`, `your-terraform-state-bucket`, and variables) with actual values.
4. **Initialize Terraform** by running:
   ```sh
   terraform init
   ```
5. **Apply the configuration** by running:
   ```sh
   terraform apply
   ```

That's it!

---
