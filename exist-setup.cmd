spawn java -jar /root/eXist-db-setup-2.2.jar -console
expect "Select target" { send "/opt/exist\n" }
expect "*press 1" { send "1\n" }
expect "Data dir" { send "/opt/exist-data\n" }
expect "*press 1" { send "1\n" }
expect "Enter password" { send "$env(EXIST_PASSWORD)\n" }
expect "Enter password" { send "$env(EXIST_PASSWORD)\n" }
expect "Maximum memory" { send "\n" }
expect "Cache memory" { send "\n" }
expect "press 1" {
  send "1\n"
}
expect -timeout -1 "Console installation done" {
  wait
  exit
}