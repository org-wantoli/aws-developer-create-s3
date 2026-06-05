data "aws_iam_policy_document" "custom_policy" {
    statement {
      actions = [ 
        "s3:ListBucket",
       ]
       resources = [
         "arn:aws:s3:::*",
       ]
       condition {
         test = "StringEquals"

         values = [ 
            "production"
          ]
          variable = "s3:ExistingObjectTag/environment"
       }
    }
}