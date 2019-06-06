import os, shutil
from datetime import datetime

user_name = os.environ.get("USER_NAME")
folder = user_name + "Pictures/Snipaste/"
trash = user_name + "trash/sps/"

now = datetime.today()
i = 0
items = os.listdir(folder)
for item in items:
    item_stats = os.stat(folder + item)
    create_time = datetime.fromtimestamp(item_stats.st_mtime)
    if (now - create_time).days > 30:
        shutil.move(folder + item, trash)
        i += 1

if i > 0:
    print(f"moved {i} files.")

print(f"{len(items)-i} files stayed.")
