#Download YouTube Videos (Because YouTube Ads Are Annoying)
#Download your favorite YouTube videos in seconds:

import yt_dlp

def download_video(url):
    # Options for yt-dlp
    ydl_opts = {
        'format': 'best',  # Download the best available quality
        'outtmpl': '%(title)s.%(ext)s',  # Set filename to video title
        'noplaylist': True,  # Download single video if URL is part of a playlist
        'quiet': False,  # Show download progress in the console
        'ignoreerrors': True,  # Continue even if an error is encountered
        'no_warnings': True,  # Suppress warnings
    }
    try:
        # Use yt-dlp to download the video
        with yt_dlp.YoutubeDL(ydl_opts) as ydl:
            ydl.download([url])
        print("Download completed successfully.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Replace with the desired YouTube video URL
download_video('https://www.youtube.com/watch?v=_v7ksOgFn-w')



14. Generate QR Codes (For That One Time You Need It)
Create a QR code for any URL or text:

import qrcode

def generate_qr(text, filename):
    img = qrcode.make(text)
    img.save(f"{filename}.png")

generate_qr('https://example.com', 'my_qr_code')




13. Convert PDFs to Text (For Your Inner Librarian)
If you deal with PDFs a lot, this script will extract text for you:

import PyPDF2

def pdf_to_text(pdf_file):
    reader = PyPDF2.PdfReader(pdf_file)
    text = ''
    for page in reader.pages:
        text += page.extract_text()
    return text

print(pdf_to_text('example.pdf'))





#Password-Protect Your Scripts (Keep Your Code Secure)
#Here’s a fun one: password-protect your scripts so no one runs them without permission:

import getpass

password = getpass.getpass('Enter your password: ')
if password != 'secret':
    print('Access Denied')
    exit()
else:
    print('Access Granted')
    # Your protected code here                        




    #File Duplication Finder (Save Your Hard Drive’s Life)
    #You ever look at your hard drive and wonder, Why do I only have 100MB left? File duplicates. They’re sneaky. Here’s a script to find and delete them:

import os
import hashlib

def hash_file(filename):
    h = hashlib.md5()
    with open(filename, 'rb') as file:
        while chunk := file.read(8192):
            h.update(chunk)
    return h.hexdigest()

def find_duplicates(folder):
    hashes = {}
    for dirpath, _, filenames in os.walk(folder):
        for f in filenames:
            full_path = os.path.join(dirpath, f)
            file_hash = hash_file(full_path)
            if file_hash in hashes:
                print(f"Duplicate found: {full_path} == {hashes[file_hash]}")
            else:
                hashes[file_hash] = full_path

find_duplicates('/path/to/your/folder')
