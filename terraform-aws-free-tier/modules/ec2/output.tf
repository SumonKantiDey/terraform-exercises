output publicIP {
    value = aws_instance.web.public_ip
}
output tags_all {
    value = aws_instance.web.tags_all
}