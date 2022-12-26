# gitmoji.vim

Let you select gitmoji with fzf

# Installing (vimplug)

* [Install fzf (vimplug)](https://github.com/junegunn/fzf#as-vim-plugin)

* Install the plugin (vimplug), add this line in .vimrc: `Plug 'redeyes2015/gitmoji.vim', {'branch': 'main'}`

* Execute: `vim +PlugInstall`

# Use it

```
:Gitmoji
```

Hit `<Enter>` would insert the selected emoji before the cursor.

# How to update

```sh
curl -O https://raw.githubusercontent.com/carloscuesta/gitmoji/master/packages/gitmojis/src/gitmojis.json
node -p 'require("./gitmojis.json").gitmojis.map(e => ` \\ "${e.emoji} ${e.description}",`).join("\n")' > gitmojis.list

vim ./plugin/gitmoji.vim '+2,/]$/-1d' '+1r ./gitmojis.list' '+wq'
```

# Credit

This is a fork/copy cat of [yazgoo/unicodemoji](https://github.com/yazgoo/unicodemoji). The original credit
goes to yazgoo.

After reading unicodemoji, I feel like to create a plugin 1/ which focuses on
gitmoji, my original motivation, 2/ does not require jq, and 3/ is ready to run
immediately after `PlugInstall`. Therefore I decided to pre-format and embed
the gitmoji list into the plugin source code and here is this tiny plugin.
