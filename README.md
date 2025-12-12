# mangadex-downloader. nix-shell guide.

> скачивание манги через cli, гораздо удобнее и можно автоматизировать.
> к сожалению многие манги были удалены с сайта mangadex. едва ли этот метод теперь актуален, хотя там все еще представлен берсерк. !иметь ввиду!
> [github](https://github.com/mansuf/mangadex-downloader)
---
### Ниже представлены команды которые помогут запустить mangadex-downloader на nixos
`python -m venv venv`
`source venv/bin/activate`
`unset PIP_LOG`
`unset PIP_LOG_FILE`4
`pip install --upgrade pip`
`pip install /mangadex-downloader --verbose;`

- pillow work only with python11 - https://github.com/python-pillow/Pillow/issues/6363

for example:
python3 -m mangadex_downloader -sc 18 -ec 18 -lang ru --folder ~/HOME/wizzard/manga/ "https://mangadex.org/title/801513ba-a712-498c-8f57-cae55b38cc92/berserk" --save-as "cbz"
-sc -- start volumn
-ec -- end volumn
-lang -- language, if you want check all available languages -- python3 -m mangadex_downloader --list-language "url"
--folder -- manga will be saved in the target folder
--save-as -- choose save as format, here about formats https://mangadex-dl.mansuf.link/en/stable/formats.html
other cli options: https://mangadex-dl.mansuf.link/en/stable/cli_ref/cli_options.html?highlight=language#chapter-related
### Подготовка окружения
Создание и активация виртуального окружения Python:
- `nix-shell`
- `python -m venv venv`
- `source venv/bin/activate`

Очистка переменных окружения pip (актуально для NixOS):
- `unset PIP_LOG`
- `unset PIP_LOG_FILE`

Обновление pip и установка mangadex-downloader:
- `pip install --upgrade pip`
- `pip install ./mangadex-downloader --verbose`
### issues
- Pillow корректно работает **только с Python 3.11**. Issue: https://github.com/python-pillow/Pillow/issues/6363
### Пример использования
Скачать 18-й том Berserk на русском языке и сохранить в формате cbz:
- python3 -m mangadex_downloader -sc 18 -ec 18 -lang ru --folder /home/user/path_to_manga_folder "https://mangadex.org/title/801513ba-a712-498c-8f57-cae55b38cc92/berserk" --save-as cbz
### Основные параметры
- -sc — start volume (начальный том)
- -ec — end volume (конечный том)
- -lang — язык
---
### Другое
Проверка доступных языков:
- python3 -m mangadex_downloader --list-language "URL"
Дополнительные параметры:
- --folder — папка сохранения
- --save-as — формат сохранения
### Форматы сохранения
https://mangadex-dl.mansuf.link/en/stable/formats.html
### Все CLI-опции
https://mangadex-dl.mansuf.link/en/stable/cli_ref/cli_options.html
