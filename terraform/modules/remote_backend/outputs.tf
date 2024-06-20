output "iam_user_name" {
    value = aws_iam_user.terraform_user.name
}

output "s3_bucket_name" {
    value = aws_s3_bucket.terraform_state_bucket.name
}

output "dynamodb_table_name" {
    value = aws_dynamodb_table.table-lock.name
}