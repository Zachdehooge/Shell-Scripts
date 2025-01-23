# Load .env file
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo ".env file not found!"
    exit 1
fi

# Pass the password from .env to sudo's stdin using the "|" pipe command // -s allows stdin to be accepted from sudo
echo $PASSWORD | sudo -S apt update | lolcat
sudo apt upgrade -y | lolcat

