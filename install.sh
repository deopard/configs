/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask visual-studio-code iterm2 postman rubymine intellij-idea slack zoom docker
brew install --cask rectangle bitwarden naver-whale karabiner-elements dozer notion skitch
brew install asdf gpg gawk git-flow
brew install bat exa neovim tmux zsh ack the_silver_searcher
brew install hashicorp/tap/terraform-ls

brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

ln -s ~/.vimrc ~/.config/nvim/init.vim

# Link dotfiles

cd && git clone https://github.com/gpakosz/.tmux.git \
    && ln -s -f .tmux/.tmux.conf \
    && ln -s -f ~/Work/configs/.tmux.conf.local
cd ~/.vim_runtime && ln -s -f ~/Work/configs/.vim_runtime/my_configs.vim
cd && ln -s ~/Work/configs/.zshrc

# asdf

asdf plugin add ruby
asdf plugin add python
asdf plugin add nodejs

asdf install ruby 2.7.3
asdf install python 3.9.5
asdf install python 2.7.18
asdf install nodejs 16.1.0

asdf global ruby 2.7.3
asdf global python 3.9.5 2.7.18
asdf global nodejs 16.1.0

python3 -m pip install --user --upgrade pynvim
python2 -m pip install --user --upgrade pynvim
npm install -g neovim
