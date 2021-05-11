if status is-login
    keychain --clear --quiet
end

if test -f ~/.keychain/(hostname)-gpg-fish
    source ~/.keychain/(hostname)-gpg-fish
end

if test -f ~/.keychain/(hostname)-fish
    source ~/.keychain/(hostname)-fish
end

neofetch
