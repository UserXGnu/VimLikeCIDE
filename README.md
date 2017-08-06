# Vim Like C IDE

## Installation:

 - You will need to install nvim (neovim). That's a powerful extension of Vim, that can help us with some features!

	If you want, it can be installed as an AppImage:
	```
	curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
	chmod u+x nvim.appimage
	./nvim.appimage 
    ```
	In Arch Linux, you should do: 
	``` yaourt -S neovim ```
	
	In systems based on debian you would do something like: 
	``` apt-get install neovim ```

 - The second step is to clone this repositorie to your machine. More specifically in ``` ~/.config/nvim/ ```

 - After that you can run the script in that way: ``` sh config.sh ```, or ``` ./config.sh ```
 
 - So, you can run ``` nvim init.vim ```, and after that you press ``` :PluginInstall ```. That command will install all of that plugins!

	
