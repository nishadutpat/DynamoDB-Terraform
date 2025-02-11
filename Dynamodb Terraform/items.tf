resource "aws_dynamodb_table_item" "item1" {
  table_name = aws_dynamodb_table.basic-dynamodb-table.name

  hash_key  = "UserId"
  range_key = "GameTitle"

  item = <<ITEM
{
  "UserId": {"S": "12345"},
  "GameTitle": {"S": "Chess"},
  "TopScore": {"N": "2000"},
  "Status": {"S": "completed"},
  "CreatedAt": {"S": "2025-02-11T10:00:00Z"}
}
ITEM
}

resource "aws_dynamodb_table_item" "item2" {
  table_name = aws_dynamodb_table.basic-dynamodb-table.name

  hash_key  = "UserId"
  range_key = "GameTitle"

  item = <<ITEM
{
  "UserId": {"S": "67890"},
  "GameTitle": {"S": "hockey"},
  "TopScore": {"N": "3500"},
  "Status": {"S": "Completed"},
  "CreatedAt": {"S": "2025-02-11T12:00:00Z"}
}
ITEM
}
