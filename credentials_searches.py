import json
import os


def credentials_search():
    if not os.path.exists("logs.json"):
        return

    try:
        with open("logs.json") as fil:
            data = json.load(fil)
    except Exception:
        return

    found = {}

    def search(d):
        if isinstance(d, dict):
            for k, v in d.items():
                if k in ("password", "secret"):
                    found[k] = v
                search(v)
        elif isinstance(d, list):
            for item in d:
                search(item)

    search(data)

    if found:
        with open("credentials.json", "w") as f:
            json.dump(found, f, indent=2)

