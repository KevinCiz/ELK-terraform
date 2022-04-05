elkserver=$1
cat > /tmp/filebeat.yml<<EOF1
output:
  logstash:
    enabled: true
    hosts:
      - $elkserver:5044
    timeout: 15

filebeat.inputs:
- type: aws-cloudwatch
  log_group_arn: arn:aws:logs:ap-southeast-1:701679536059:log-group:/aws/lambda/testFunction:*
  scan_frequency: 1m
  role_arn: arn:aws:iam::701679536059:role/FileBeatRole
  start_position: beginning
EOF1

sudo systemctl start filebeat