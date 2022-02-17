# How to use it?
With vim installed (`sudo apt-get install vim`):

1. Install nvim
`sudo apt-get install neovim`

2. Install nvim plugin manager
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/`
       
3. In the nvim folder `cd $USER/.config/nvim` add the current `init,vim` file

4. Install the python3 support for nvim `pip install pynvim`

5. Open `nvim` and inside:
  - Check the health of nvim `:checkhealth`
  - Install the plugins `:PlugInstall`
  - Update the plugins `:UpdateRemotePlugins`
  
6. Use `nvim` to open any file

# References
https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/
https://stsewd.dev/es/posts/neovim-plugins/
