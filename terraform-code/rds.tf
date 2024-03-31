resource "aws_db_instance" "movie-rds" {
  engine                 = "mysql"
  db_name                = "movie-rds"
  identifier             = "myrdsintstance"
  instance_class         = "db.t2.micro"
  allocated_storage      = 20
  username               = var.db-username
  password               = var.db-password
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  skip_final_snapshot    = true
  publicly_accessible = false

  tags = {
    Name = "movie-rds"
  }
}