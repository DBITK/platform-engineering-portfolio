# Platform Engineering Reference Architecture

## Mission
To establish a self-service, automated infrastructure platform that enables developers to deploy scalable applications without manual Ops intervention.

## Tech Stack & Architecture Decisions

* **Infrastructure as Code (Terraform):** Selected for its modularity. We use specific Module Designs to abstract complexity, allowing developers to provision standard, compliant resources via simple variable inputs.

* **Orchestration (Kubernetes):** Chosen as the runtime environment to ensure dynamic scaling and high availability that aligns with the infrastructure provisioned by Terraform.

* **Continuous Delivery (ArgoCD & GitOps):** Implemented to enforce the repository as the "Single Source of Truth." ArgoCD monitors for configuration drift and automatically reconciles the live environment to match the code, preventing manual server changes ("Snowflakes").
