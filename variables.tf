variable region{
    default = "us-west-2"
    type    = string
}


variable security_group{
    type    = list(string)
    default = ["sg-0046aed230a8e031d","sg-01f2957bbeee8f8ab"]
}