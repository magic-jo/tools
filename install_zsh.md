[Main tutorial source](https://ivanaugustobd.medium.com/your-terminal-can-be-much-much-more-productive-5256424658e8)

Install zsh, curl & git

```
sudo apt install zsh
sudo apt install curl
sudo apt install git
```

Install Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
```

If “Shell changed.” is not printed on the screen, type : (use `whoami` to find username)

```
sudo usermod --shell $(which zsh) <your_username>
```

Installer powerline font (pour compatibilité du thème agnoster) (sur Ubuntu)

```
sudo apt-get install fonts-powerline
```

Changer le thème : dans ~/.zshrc, changer la valeur de ZSH_THEME à "agnoster"

Zsh syntax huglighting, autosuggestions & fuzzy-finder (CTRL+T to search through files)

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
```

PowerLvl10k theme : [github page](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh)
Follow through indications after reloading (`source ~/.zshrc`) to personalize the shell output.

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
