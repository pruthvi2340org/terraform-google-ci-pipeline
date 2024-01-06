# This terraform can used by passing below inputs retail app

# Release 1.0.0
Description added with the inital requirements for CI

```
project_id = ""
name="retail-demo-app"
location="us-central1"
repo_name = "github_pruthvi2340_retail-demo-app"
```
1. "project_id" for which project the resources as to be created
2. "name" Used to identify the resource
3. "location" for artifacts registry and gcs bucket
4. "repo_name" Used in the cloud build trigger which is to be External conneted cloud source repository (Github) 