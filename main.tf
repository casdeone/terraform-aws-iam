#create resources
resource "aws_iam_user" "casde1_test" {
  name                 = "casde1-test"
  permissions_boundary = var.permissions_boundary
  tags = {
    department = "test_user"
    deployed_by = "terraform"
  }
}

resource "aws_iam_group" "testgroup" {
  name = "testgroup"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.casde1_test.name,
  ]

  group = aws_iam_group.testgroup.name
}


resource "aws_glue_registry" "example" {
  registry_name = "datahub"
}