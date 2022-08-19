function opin() {
  op_user=$(op get item 1Password | \
    jq --raw-output '.details.fields[] | select(.designation=="username").value')

  if [[ $op_user != $OP_USER ]]; then
    eval $(op signin $OP_SUBDOMAIN)
  fi
}

function gpgauth() {
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

function lsk() {
  # Learn PGP keys from current security key
  gpg-connect-agent "scd serialno" "learn --force" /bye

  # Learn SSH resident key
  ssh-keygen -K && \
    rm ./id_ed25519_sk_rk.pub && \
    mv ./id_ed25519_sk_rk ~/.ssh/id_ed25519_sk
}

function brewup() {
  rm ~/.gitconfig
  brew update && brew upgrade && brew upgrade --cask --greedy
  brew cleanup && brew doctor
  ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
}
