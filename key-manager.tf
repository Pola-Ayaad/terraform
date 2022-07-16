# Creates and stores ssh key used creating an EC2 instance
resource "aws_secretsmanager_secret" "stored-key" {
  name                    = "stored-key"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "manager" {
  secret_id     = aws_secretsmanager_secret.stored-key.id
  secret_string = tls_private_key.admin.private_key_pem

}