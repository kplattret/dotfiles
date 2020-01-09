function opin() {
  eval $(op signin $OP_SUBDOMAIN)
}

function authenticate_op_and_gpg() {
  opin && \
    gpg2 \
    --pinentry-mode loopback \
    --passphrase $(op get item pass.pgp | jq --raw-output '.details.password') \
    --decrypt \
    $DOTFILES/ready.txt.asc
}

function jlnew() {
  z journal
  date_path=$(date +%Y/%m)
  mkdir -vp $date_path
  vim "${date_path}/$(date +%Y-%m-%d).md"
}

function jlenc() {
  file_path="$(date +%Y/%m/%Y-%m-%d).md"
  opin && \
    gpg2 \
    --pinentry-mode loopback \
    --passphrase $(op get item pass.pgp | jq --raw-output '.details.password') \
    --sign --encrypt --armor \
    --recipient $GPG_USER \
    $file_path && \
    rm $file_path && \
    less "${file_path}.asc"
}
