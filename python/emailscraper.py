## make sure to -> pip install requests beautifulsoup4


import requests
from bs4 import BeautifulSoup
import re

def get_emails_from_url(url):
    # Send HTTP request to the URL
    response = requests.get(url)
    
    # Check if request was successful
    if response.status_code != 200:
        print(f"Failed to retrieve page, status code {response.status_code}")
        return []

    # Parse the page content with BeautifulSoup
    soup = BeautifulSoup(response.text, 'html.parser')
    
    # Convert the page content to a string
    page_content = soup.get_text()
    
    # Regular expression to find email addresses
    email_pattern = r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'
    
    # Find all emails using regular expression
    emails = re.findall(email_pattern, page_content)
    
    return set(emails)  # Return unique emails

# Example Usage
url = 'https://example.com'  # Replace with the URL you want to scrape
emails = get_emails_from_url(url)

if emails:
    print("Found emails:")
    for email in emails:
        print(email)
else:
    print("No emails found.")

