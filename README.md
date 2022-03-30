# GCP Database

This repository creates a database on GCP, with a private IP address.

## Setup

You likely need to enable more services:

```bash
# Set the PROJECT to your project, for example: "foo-bar-123"
"PROJECT"="foo-bar-123"
for service in serviceusage servicenetworking sqladmin ; do
  gcloud services enable "${service}".googleapis.com --project="${PROJECT}"
done
```
