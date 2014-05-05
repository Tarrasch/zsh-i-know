# zsh-i-know

Avoid catastrophes like accidentally running `rm -rf .giit`

## Usage

The only command is `ik`. It basically just opens a interactive `(y/n)` prompt.
If you say `n`. It'll return with a non-zero exit code. So just chain `ik` with
`&& dangerous-command`. Like this:

    $ ik && rm -f important-file.txt && echo 'Yay! File deleted'
    Are you sure you want to do this? (y/n)
    Yay! File deleted

Or for extra security

    $ ik <current-dir> && ik && rm -f important-file.txt && echo 'Yay! File deleted'
    Are you sure you want to do this? (y/n)
    Yay! File deleted


## Installation

Using [antigen](https://github.com/zsh-users/antigen)

    antigen-bundle Tarrasch/zsh-i-know
