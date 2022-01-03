import urllib.request, json
with urllib.request.urlopen("https://api.github.com/repos/SeaHOH/ykdl/releases/latest") as url:
    data = json.loads(url.read().decode())
    print(data["tag_name"])
    f = open("checkout.bat", "w")
    f.write('@ECHO OFF\n')
    f.write("git checkout tags/" + data["tag_name"])
    f.close()