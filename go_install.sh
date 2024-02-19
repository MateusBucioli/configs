url=$(curl -s https://go.dev/dl/ | grep -oP 'go[0-9\.]+linux-amd64.tar.gz' | head -n 1); wget https://dl.google.com/go/$url -O /tmp/golang.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf /tmp/golang.tar.gz
sudo rm /tmp/golang.tar.gz

if ! grep -q "export PATH=\$PATH:/usr/local/go/bin" ~/.zshrc; then
    echo "Adding Go to PATH in ~/.zshrc..."
    echo "# Add go to PATH" >> ~/.zshrc
    echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.zshrc
else
  echo "Go path already configured in ~/.zshrc"
fi

echo ""
echo "Go installed successfully"
echo "Run 'source ~/.zshrc' to apply changes"
