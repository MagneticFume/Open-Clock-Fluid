_________________________________________________
# Open Clock Fluid #

A minimalist conky-based on-screen clock for Debian-based desktops.

_________________________________________________
## Features ##
_________________________________________________

- **Date Display**: Full day name, date, month, and year
- **Time Display**: Hours, minutes, and seconds (HH:MM:SS)
- **Motivational Quotes**: Random quotes that refresh every hour
- **Minimalist Design**: Clean, elegant appearance
- **Center-Top Positioning**: Prominently displayed at top center of screen
- **Monospace Font**: Uses Fira Code font for a modern terminal aesthetic

_________________________________________________
## Installation ##
_________________________________________________

### Quick Install

```bash
cd "/home/'user'/Downloads/Open Clock Fluid" (Change 'user' with your username)
./install.sh
```

### Manual Installation

1. **Install Conky:**
   ```bash
   sudo apt update
   sudo apt install conky-all
   ```

2. **Install Fira Code Font:**
   ```bash
   sudo apt install fonts-firacode
   ```

3. **Create Configuration Directory:**
   ```bash
   mkdir -p ~/.conky
   ```

4. **Copy Files:**
   ```bash
   cp quotes.txt ~/.conky/quotes.txt
   cp .conkyrc ~/.conkyrc
   ```

_________________________________________________
## USAGE ##
_________________________________________________

### Start the Clock

```bash
conky -q
```

### Stop the Clock

```bash
killall conky
```

_________________________________________________
### Auto-Start on Login ###
_________________________________________________

1. Open **Startup Applications** in Zorin OS
2. Click **Add**
3. Configure:
   - **Name**: Open Clock Fluid
   - **Command**: `conky -q`
4. Click **Save**

_________________________________________________
## Customization ##
_________________________________________________

### Change Appearance

Edit `~/.conkyrc`:

- **Font**: Change `font = 'Fira Code Mono:size=24'`
- **Colors**: Modify `default_color`, `color1`, `color2`
- **Position**: Adjust `gap_x` and `gap_y` values
- **Size**: Change font sizes in the `conky.text` section

### Add Your Own Quotes

Edit `~/.conky/quotes.txt` and add one quote per line. The clock will automatically cycle through them hourly.

_________________________________________________
## Troubleshooting ##
_________________________________________________

### Clock Not Appearing

- Ensure conky is running: `ps aux | grep conky`
- Verify font is installed: `fc-list | grep -i "fira code"`. If not check above on instructions to install it.

### Quotes Not Showing

- Verify quotes file exists: `ls -l ~/.conky/quotes.txt`
- Check file has content: `wc -l ~/.conky/quotes.txt`

### Position Issues

Adjust `gap_x` and `gap_y` in `~/.conkyrc`:
- `gap_x`: Horizontal offset (positive = right, negative = left)
- `gap_y`: Vertical offset from top (positive = down)

_________________________________________________
## License ##
_________________________________________________

Free to use and modify for personal use.

