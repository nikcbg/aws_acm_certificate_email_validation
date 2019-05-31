resource "aws_acm_certificate" "cert" {
  domain_name               = "mytest.rd.example.io"
  validation_method         = "EMAIL"
  subject_alternative_names = ["app1.mytest.rd.example.io", "app2.mytest.rd.example.io"]

  domain_validation_options = [
    {
      domain_name       = "mytest.rd.example.io"
      validation_domain = "example.io"
    },
    {
      domain_name       = "app1.mytest.rd.elliemae.io"
      validation_domain = "example.io"
    },
  ]
}




