# cp iTerm configs
echo "iTerm configs syncing..."
cp -f ~/.zshrc ~/repos/configs/iTerm2/.zshrc
cp -f ~/.gitignore_global ~/repos/configs/iTerm2/.gitignore_global
cp -f ~/.pylintrc ~/repos/configs/iTerm2/.pylintrc
cp -f ~/.vimrc ~/repos/configs/iTerm2/.vimrc
cp -f ~/.tmux.conf ~/repos/configs/iTerm2/.tmux.conf
cp -f ~/.oh-my-zsh/custom/my_patches.zsh ~/repos/configs/iTerm2/my_patches.zsh
echo "iTerm configs synced."

cd ~/repos/configs
git add . && git commit -m "iTerm configs sync"
echo "iTerm configs committed."
sleep 1

echo "Snipaste cleaning..."
/usr/local/bin/python3 ~/repos/configs/clean_snipaste.py

