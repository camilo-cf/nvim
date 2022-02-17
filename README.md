# How to use it?
With vim installed (`sudo apt-get install vim`):

1. Install nvim
`sudo apt-get install neovim`

2. Install nvim plugin manager
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/`
       
3. In the nvim folder `cd ~/.config/nvim` add the current `init.vim` file or:
   ```
   curl https://raw.githubusercontent.com/camilo-cf/nvim/main/init.vim> ~/.config/nvim/init.vim
   ```
   
4. Install the python3 support for nvim `pip3 install pynvim neovim jedi`

5. Open `nvim` and inside:
  - Check the health of nvim `:checkhealth`
  - Install the plugins `:PlugInstall`
  - Update the plugins `:UpdateRemotePlugins`

6. Add the backgound 
   ```
   mkdir ~/.config/nvim/colors
   curl https://raw.githubusercontent.com/freeo/vim-kalisi/master/colors/kalisi.vim> ~/.config/nvim/colors/kalisi.vim   
   ```
 
7. Use `nvim` to open any file

# Useful commands
In the nvim window:
- `:e <file_name>` : Open the <file_name> file in the current window/tab
- `:b <file_name>` : Move tho the <file_name> file if is open in the buffer
- `TAB` : For autocomplete
- `! <command>` : For use any linux command in the current window
- `:ter` : Open a terminal in the current window
- `F11`: Full screen

**Spliting**
- `:sv` : Split horizontally
- `:vs` : Split vertically
- `Ctrl+w+w` : Change of window
- `:resize [+-]N` : Resize split + or - by N horizontally
- `:vertical resize [+-]N` : Resize split + or - by N vertically

**Tabs**
- `:tabedit <file_name>` : Create a new tab opening the <file_name> file
- `gt` : Change the tab to the right
- `gT` : Change the tab to the left

**Directory & Files**
- `F2`: Open the directory window
- `?`: After F2 check the options 

**Custom**
- `F5`: Open the terminal in the current window

# References
https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/
https://stsewd.dev/es/posts/neovim-plugins/
