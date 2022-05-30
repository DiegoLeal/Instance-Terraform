resource "aws_db_instance" "db-atividade04" {
    allocated_storage    = 20
    engine               = "postgres"
    identifier           = "dev-db"     
    engine_version       = "13"
    instance_class       = "db.t3.medium"
    username             = "postgres"
    password             = "postgres"
    skip_final_snapshot  = true
    publicly_accessible  = true

}