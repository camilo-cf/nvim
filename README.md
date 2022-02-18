# How to use it?
With vim installed (`sudo apt-get install vim`):

1. Install nvim
`sudo apt-get install neovim`

2. Install nvim plugin manager
`curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
       
3. In the nvim folder `cd ~/.config/nvim` add the current `init.vim` file or:
   ```
   curl https://raw.githubusercontent.com/camilo-cf/nvim/main/init.vim> ~/.config/nvim/init.vim
   ```
   
4. Install the python3 support for nvim `pip3 install pynvim neovim jedi`
   If you want the debugger add `pip3 install debugpy` 

5. Add the backgound 
   ```
   mkdir ~/.config/nvim/colors
   curl https://raw.githubusercontent.com/freeo/vim-kalisi/master/colors/kalisi.vim> ~/.config/nvim/colors/kalisi.vim   
   ```
6. Open `nvim` and inside:
  - Check the health of nvim `:checkhealth`
  - Install the plugins `:PlugInstall`
  - Update the plugins `:UpdateRemotePlugins`
  - Install the debugger `debugpy`: `:VimspectorInstall debugpy`

7. Use `nvim` to open any file

# Install without clone
```
wget https://raw.githubusercontent.com/camilo-cf/nvim/main/install.sh
bash install.sh
```
Then continue on step 6

# Useful commands
In the nvim window:
- `:e <file_name>` : Open the <file_name> file in the current window/tab
- `:b <file_name>` : Move tho the <file_name> file if is open in the buffer
- `TAB` : For autocomplete
- `! <command>` : For use any linux command in the current window
- `:ter` : Open a terminal in the current window
- `F11`: Full screen (if GUI)
- `:set mouse=r`: Mouse with ability to copy paste from console
- `:set mouse=a`: Mouse interactive mode

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
- `:tabclose` : Close the current tab
- `:tabnew` : Open a new tab

**Directory & Files**
- `F2`: Open the directory window
- `?`: After F2 check the options 

**Debug**
- `F5`: start debugging or continue
- `F3`: stop debugging
- `F4`: restart with same configuration
- `F6`: pause debugging
- `F9`: Toggle a breakpoint on the current line
- `F10`: step over
- `F11`: step into
- `F12`: step out

Default `.vimspector.json`
```
{
    "configurations": {
        "run": {
            "adapter": "debugpy",
            "default": true,
            "configuration": {
                "request": "launch",
                "type": "python",
                "cwd": "${workspaceRoot}",
                "stopOnEntry": true,
                "program": "${file}"
            },
            "breakpoints": {
                "exception": {
                    "raised": "N",
                    "uncaught": "",
                    "userUnhandled": ""
                }
            }
        }
    }
}
```

**Custom**
- `F7`: Open the terminal in the current window

**Useful Commands**
- `:mouse`

# References
https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/
https://stsewd.dev/es/posts/neovim-plugins/
https://github.com/puremourning/vimspector#python
https://nielscautaerts.xyz/debugging-python-in-neovim.html
