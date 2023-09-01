provider "aws" {
  region = "eu-west-1"
}

resource "random_pet" "this" {
  length = 2
}

module "dynamodb_table" {
  source = "../../"

  //name                          = "http-crud-cities"
  //hash_key                    = "id"
 // range_key                   = "title"
 // table_class                 = "STANDARD"
  //deletion_protection_enabled = false
/*
  attributes = [
    {
      name = "id"
      type = "N"
    },
    {
      name = "title"
      type = "S"
    },
    {
      name = "age"
      type = "N"
    }
  ]
  */
/*
  global_secondary_indexes = [
    {
      name               = "TitleIndex"
      hash_key           = "title"
      range_key          = "age"
      projection_type    = "INCLUDE"
      non_key_attributes = ["id"]
    }
  ]
  */
/*
  tags = {
    Terraform   = "true"
    Environment = "staging"
  
}
*/
}

/*
module "disabled_dynamodb_table" {
  source = "../../"

  create_table = false
}
*/