import pathlib,unittest
x=(pathlib.Path(__file__).parents[1]/"terraform/data-platform.tf").read_text()
class Guardrails(unittest.TestCase):
 def test_encryption_private_and_audit_log(self):
  for item in ('sse_algorithm = "aws:kms"',"block_public_policy=true","aws_cloudwatch_log_group"): self.assertIn(item,x)
