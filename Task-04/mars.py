# Import the argparse library
import argparse
import urllib.request
import json
from PIL import Image
from urllib.request import urlopen
import requests

#create parser
parser = argparse.ArgumentParser(description = 'Enter id')

#add arguments
parser.add_argument('id', metavar = 'id', type = str, help = 'try 102685, 102686, 102842, 102843.')

#execute the parse_args() method
args = parser.parse_args()

id = args.id
x = int(id)
i = 0 
url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?earth_date=2015-6-3&api_key=GeMstUtTYzMijzSJUHMUl7BbcgLqdy3Nkcvab6Pf' 
r = requests.get(url)
data = r.json()
for i in data["photos"] :
    if i["id"] == x :
      img = Image.open(urlopen(i["img_src"]))
      img.show()

  




