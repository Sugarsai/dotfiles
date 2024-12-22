#!/usr/bin/python3

import requests

CITY = "360630"
API_KEY = "8061f6373c25958fe64e03d5a16de41b"
UNITS = "metric"
UNIT_KEY = "C"
LANG = "en"

try:
    REQ = requests.get("http://api.openweathermap.org/data/2.5/weather?id={}&lang={}&appid={}&units={}".format(CITY, LANG,  API_KEY, UNITS))
    try:
        if REQ.status_code == 200:
            CURRENT = REQ.json()["weather"][0]["description"].capitalize()
            TEMP = int(float(REQ.json()["main"]["temp"]))
            print("{}°{}".format(TEMP, UNIT_KEY))
        else:
            print("***")
    except:
        print("***")
except:
    print("***")
