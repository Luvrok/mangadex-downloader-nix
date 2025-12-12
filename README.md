# mangadex-downloader. nix-shell guide.

> manga downloading via CLI, much more convenient and easy to automate.
> unfortunately, many manga titles were removed from mangadex.
> this method is barely relevant now, although berserk is still available.
> [github](https://github.com/mansuf/mangadex-downloader)

## Quick start
##### If something goes wrong, remove the old venv and try again:
rm -rf venv

##### Enter nix-shell:
nix-shell

##### Create and activate a Python virtual environment:
python -m venv venv
source venv/bin/activate

##### Install dependencies:
./start.sh

### What start.sh does:
unsets pip env vars (NixOS):
- unset PIP_LOG
- unset PIP_LOG_FILE

upgrades pip and installs mangadex-downloader:
- pip install --upgrade pip
- pip install mangadex-downloader --verbose

### Issues
Pillow works correctly only with Python 3.11.
Issue: https://github.com/python-pillow/Pillow/issues/6363
As of late 2025, there were no issues with Python 3.13; Python 3.15 was not tested.

### Usage example
Download volumes 1–5 of Berserk in Russian and save them as cbz:
- python3 -m mangadex_downloader -sv 1 -ev 5 -lang ru --folder /home/user/path_to_manga_folder https://mangadex.org/title/801513ba-a712-498c-8f57-cae55b38cc92/berserk --save-as cbz

### Main options
- -sc — start chapter
- -ec — end chapter
- -sv — start volume
- -ev — end volume
- -lang — language

### Other
Check available languages:
- python3 -m mangadex_downloader --list-language URL

Additional options:
- --folder — output directory
- --save-as — output format

### Output formats
https://mangadex-dl.mansuf.link/en/stable/formats.html

### All CLI options
https://mangadex-dl.mansuf.link/en/stable/cli_ref/cli_options.html
