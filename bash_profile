# Set architecture flags:
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence:
export PATH=/usr/local/bin:$PATH:/Applications/MiniZincIDE.app/Contents/Resources/
# Load .bashrc if it exists:
test -f ~/.bashrc && source ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# For Ruby Version Manager (RVM)
source ~/.profile

# added by Anaconda 2.3.0 installer
export PATH="/Users/jorgen/anaconda/bin:$PATH"
