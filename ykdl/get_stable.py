import urllib.request, json
with urllib.request.urlopen("https://api.github.com/repos/SeaHOH/ykdl/releases/latest") as url:
    data = json.loads(url.read().decode())
    print(data["zipball_url"])
    urllib.request.urlretrieve(data["zipball_url"], "stable.zip")