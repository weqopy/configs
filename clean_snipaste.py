import os
from datetime import datetime
from shutil import move
import zipfile

user_name = os.environ.get("USER_NAME")
folder = user_name + "/Pictures/Snipaste/"
trash = user_name + "/trash/sps/"

now = datetime.today()
i = 0
items = os.listdir(folder)
for item in items:
    item_stats = os.stat(folder + item)
    create_time = datetime.fromtimestamp(item_stats.st_mtime)
    if (now - create_time).days > 15:
        os.remove(folder + item)
        i += 1

if i > 0:
    print(f"deleted {i} files.")
else:
    print("no files deleted.")

print(f"{len(items)-i} files stayed.")


print("Alfred configs backup")

backup_file = user_name + "/Documents/Personal/alfred_configs.zip"
if os.path.exists(backup_file):
    print("old backup_file exists.")
    os.remove(backup_file)

z = zipfile.ZipFile(backup_file, 'w', zipfile.ZIP_DEFLATED)
configs = user_name + "/.alfred/Alfred.alfredpreferences"
for dirpath, dirnames, filenames in os.walk(configs):
    for filename in filenames:
        z.write(os.path.join(dirpath, filename))
z.close()
print("new backup_file created.")
