# data "cloudinit_config" "cloudinit_filebeat" {
#   gzip          = false
#   base64_encode = true

#   part {
#     content_type = "text/x-shellscript"
#     content      = templatefile("Scripts/install-filebeat.sh")
#   }

#   part {
#     content_type = "text/x-shellscript"
#     content      = templatefile("Scripts/filebeat.sh")
#   }
# }
