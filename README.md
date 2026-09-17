# Healthcare AWS Platform Reference — SID Information Technologies application

A focused AWS platform baseline for a healthcare data-analytics workload: private data access, identity, audit-ready logs and CI validation. Prepared by Rahul H Bhatia as an application artifact, not healthcare advice, a HIPAA certification, or a deployed client environment.

`terraform/data-platform.tf` expresses encrypted storage, CloudWatch logging and a private network foundation. `tests/test_guardrails.py` verifies the intended controls; `docs/security-operations.md` scopes the operational decisions needed for a healthcare environment.

```bash
python -m unittest discover -s tests -v
terraform -chdir=terraform init && terraform -chdir=terraform validate
```

This deliberately does not represent client policies, protected health information, Azure implementation, or an attestation of compliance. A real deployment needs the covered entity’s controls, BAA/legal review, data classification, IAM design, audit evidence and security testing.

Rahul H Bhatia · +91 9884541449 · rahulbhatia1998@gmail.com  
[LinkedIn](https://www.linkedin.com/in/rahul-h-bhatia/) · [Portfolio](https://rahulhbhatia.vercel.app) · [Credly](https://www.credly.com/users/rahul-h-bhatia/badges)
