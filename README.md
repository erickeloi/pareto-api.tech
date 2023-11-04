# [pareto-api.tech](https://pareto-api.tech)
Implementation of DummyJSON on Google Cloud Platform via Terraform and with CD integration with Github actions.

In short, DummyJSON is a MOCK API that provides endpoints Endpoints filled with JSON data.

Try it out: https://pareto-api.tech
---

Stack used:

- Terraform
- Github Actions
- Google Cloud Platform (GCP)
  - Google Artifact Registry
  - Google Cloud Run
  - Workload Identity Pools
  - OpenID Connect (OIDC) Identity Provider


## Pipeline Diagram
![Pipeline Diagram](images/diagrama-png-1x.png)

## Site pareto-api.tech working!
![Site pareto-api.tech working](images/dummyjson-gif.gif)

## What can be improved?
0. Quality Gate and CI Pipeline
     - [ ] Add a 'Quality Gate', a layer of code review to check if the project has any vulnerabilities in the code or dependencies. (Synk/SonarQube/Trivy are known tools to perform this job)

     - [ ] Add a unit test or integration testing job to further improve the quality and reliability of the code.

1. Configure Bucket to store and maintain Infrastructure Versioning
     - [ ] Configure remote backend in a GCP bucket to store and version the infrastructure states (it's good to prevent accidental data loss)

2. Find a way to hide env variables from terraform apply/destroy/change
     - [ ] Find a way to Hide Env Variables (ex: JWT_SECRET) From terraform output
