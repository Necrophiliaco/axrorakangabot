if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  https://github.com/Necrophiliaco/axrorakangabot /axrorakangabot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-Auto-Filter
fi
cd /axrorakangabot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
