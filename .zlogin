if [[ -o interactive ]]
then
    keychain id_ed25519
    [[ -f ~/.keychain/debian-pc-sh ]] && source ~/.keychain/debian-pc-sh
fi
