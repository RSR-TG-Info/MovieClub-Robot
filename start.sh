if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DragonTG/MovieClub-Robot.git /MovieClub-Robot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MovieClub-Robot
fi
cd /MovieClub-Robot
pip3 install -U -r requirements.txt
echo "Starting Movie Club Robot...."
python3 bot.py
