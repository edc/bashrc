function encrypt {
  openssl des3 -salt -in $1 -out $1.des3 && echo "-> $1.des3"
}
function decrypt {
  openssl des3 -d -salt -in $1 -out $1.clean && echo "-> $1.clean"
}
