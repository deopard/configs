brew install --cask visual-studio-code iterm2 postman rubymine slack zoom docker
brew install --cask spectacle bitwarden naver-whale microsoft-edge karabiner-element dozer notion
brew install asdf gpg gawk
brew install bat exa neovim tmux zsh ack

brew tap homebrew/cask-font
brew install font-jetbrains-mono-nerd-font

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

ln -s ~/.vimrc ~/.config/nvim/init.vim

cd && ln -s -f ~/Work/configs/.tmux.conf
cd ~/.vim_runtime && ln -s -f ~/Work/configs/.vim_runtime/my_configs.vim
cd && ln -s ~/Work/configs/.zshrc
