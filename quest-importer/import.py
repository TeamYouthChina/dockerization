import http
import time
import os
import urllib.request

if __name__ == "__main__":
    HOST = "127.0.0.1"
    DEFAULT_CORE_NAME=os.getenv("DEFAULT_CORE_NAME",default="youthchinacore")
    PING_URL = "http://{}:8983/solr/{}/admin/ping".format(HOST, DEFAULT_CORE_NAME)
    COMMAND_URL = "http://{}:8983/solr/{}/Dataimport?command=full-import&clean=true".format(HOST, DEFAULT_CORE_NAME)
    responseCode = 0
    while responseCode != 200:
        try:
            responseCode = urllib.request.urlopen(PING_URL).getcode()
        except Exception:
            responseCode = 0
    print(urllib.request.urlopen(COMMAND_URL).getcode()) # send commend

    while 1:
        time.sleep(10) # hold container
    