from pathlib import Path
from typing import Optional
from os.path import expandvars
import os

HOME = Path.home()
AYRIK_DIR = HOME / ".config" / "ayrik"
AYRIK_THEMES: Path = AYRIK_DIR / "themes"
OOMOX_TEMPLATES = AYRIK_DIR / "oomox_templates"
BASE_CONFIGS: Path = AYRIK_DIR / "base_configs" 
AYRIK_ASSETS: Path = AYRIK_DIR / "utils" / "assets"

AYRIK_CONFIG: Path = AYRIK_DIR / "config.yml"
WALLPAPER_SYMLINC: Path = AYRIK_DIR / "current_wallpaper"

ROFI_SELECTING_THEME: Path = Path.home() / ".config" / "rofi" / "selecting.rasi"

WALLPAPERS_CACHE_DIR: Path = HOME / ".cache" / "ayrik" / "wallpaper_thumbnails"
THEMES_CACHE_DIR: Path = HOME / ".cache" / "ayrik" / "themes_thumbnails"

OOMOX_COLORS: Path = lambda theme_name: AYRIK_THEMES / theme_name / "oomox-colors"  

THEME_GEN_SCRIPT: Path = Path("/opt/oomox/plugins/base16/cli.py")

SESSION_TYPE: Optional[str] = os.environ.get("XDG_SESSION_TYPE", "x11")

GTK2_CFG: Path = HOME / ".config" / "gtk-2.0" / "gtkrc"
GTK3_CFG: Path = HOME / ".config" / "gtk-3.0" / "settings.ini"
GTK4_CFG: Path = HOME / ".config" / "gtk-4.0" / "settings.ini"
