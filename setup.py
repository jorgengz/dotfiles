"""
Sets up normal dotfiles (i.e. on the form ~/.{name}) that are marked by an
appended underscore.

E.g. zshrc_ will be symlinked from ~/.zshrc
"""
import datetime
import os
import shutil


BACKUP = "backup"
HOME = os.path.expanduser("~")
DOTFILES = os.path.realpath(".")

files = os.listdir(".")

if not os.path.exists(BACKUP):
    os.mkdir(BACKUP)

for f in files:
    # Avoid .git, backup etc by marking files to setup with an appendix
    if not f.endswith("_"):
        continue

    f = f[:-1]  # Remove appendix

    dotfile_path = "{}/{}_".format(DOTFILES, f)
    utility_path = "{}/.{}".format(HOME, f)

    # Create backups if files already exist and symlink them from ~/.{name}
    if os.path.exists(utility_path):
        dt = datetime.datetime.now()
        timestr = "{}-{}-{}-{}-{}-{}".format(dt.year, dt.month, dt.day,
                                             dt.hour, dt.minute, dt.second)
        backup_path = "{}/old-{}-{}".format(BACKUP, f, timestr)

        shutil.copy(utility_path, backup_path)
        print "Backed up '{}' to '{}'".format(utility_path, backup_path)

        os.remove(utility_path)
        print "Removed existing file '{}'".format(utility_path)

    elif os.path.islink(utility_path):
        os.remove(utility_path)
        print "Removed existing symlink '{}'".format(utility_path)

    os.symlink(dotfile_path, utility_path)
    print "Linked '{}' to '{}'\n".format(utility_path, dotfile_path)

