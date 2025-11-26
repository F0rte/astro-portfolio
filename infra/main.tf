resource "aws_amplify_app" "astro-portfolio" {
  name = "astro-amplify-portfolio"
  repository = "https://github.com/F0rte/astro-portfolio"
  platform = "WEB"
  access_token = var.github_token
  environment_variables = {
    "NODE_ENV" = "production"
  }
}

resource "aws_amplify_branch" "master" {
  app_id = aws_amplify_app.astro-portfolio.id
  branch_name = "master"
  enable_auto_build = true
}

data "aws_iam_policy_document" "amplify_assume_role" {
    statement {
      effect = "Allow"
      principals {
        type = "Service"
        identifiers = [ "amplify.amazonaws.com" ]
      }
      actions = [ "sts:AssumeRole" ]
    }
}

resource "aws_iam_role" "amplify-astro-portfolio-role" {
  name = "amplify-astro-portfolio-role"
  assume_role_policy = data.aws_iam_policy_document.amplify_assume_role.json
}
