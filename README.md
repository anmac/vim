# VIM

## Clone. Enjoy 😎
A Vim configuration with only vimscript, no lua, no complicate settings.

```
git clone https://github.com/anmac/vim.git ~/.config/nvim
```

***NOTE:*** (Only works on Linux)

## Dependencies
- [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- Xsel or any tool to share clipboard system with vim.

***NOTE:*** (I use [vim-plug](https://github.com/junegunn/vim-plug) as a plugin manager. Install is not necessary.)

## Fonts (Optional, but highly recommended)
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

## Customization
Just add your sexy plugins into the `call plug#begin([PLUGIN_DIR])` section.

### Example

```vim
call plug#begin()
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
call plug#end()
```

## License

MIT
