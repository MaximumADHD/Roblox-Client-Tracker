# Usage Guide

this guide shows practical ways to use the data from this repository. the repo updates automatically multiple times per week with roblox client changes

## Quick Start

### Reading API Changes

the `API-Dump.json` contains all roblox api information. heres how to parse it:

```python
import json
import requests

# load the latest api dump
url = "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/API-Dump.json"
api_data = requests.get(url).json()

# find all new classes added in recent versions
for class_info in api_data['Classes']:
    print(f"Class: {class_info['Name']}")
    if 'Tags' in class_info and 'NotReplicated' in class_info['Tags']:
        print("  → not replicated (client-only)")
```

### Monitoring Feature Flags (FVariables)

fvariables control features remotely. track specific flags:

```python
# load fvariables
fvars_url = "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/FVariables.txt"
fvars = requests.get(fvars_url).text.split('\n')

# filter for specific features
for line in fvars:
    if 'DFFlag' in line and 'Enable' in line:
        print(line.strip())
```

## Common Use Cases

### 1. Detecting New API Methods

```python
def find_new_methods(old_dump, new_dump):
    old_methods = set()
    for cls in old_dump['Classes']:
        for member in cls.get('Members', []):
            if member['MemberType'] == 'Function':
                old_methods.add(f"{cls['Name']}.{member['Name']}")
    
    new_methods = []
    for cls in new_dump['Classes']:
        for member in cls.get('Members', []):
            if member['MemberType'] == 'Function':
                method_name = f"{cls['Name']}.{member['Name']}"
                if method_name not in old_methods:
                    new_methods.append(method_name)
    
    return new_methods
```

### 2. Tracking Breaking Changes

```python
def detect_breaking_changes(old_dump, new_dump):
    breaking = []
    
    # check for removed methods
    old_api = {f"{c['Name']}.{m['Name']}": m 
               for c in old_dump['Classes'] 
               for m in c.get('Members', [])}
    
    new_api = {f"{c['Name']}.{m['Name']}": m 
               for c in new_dump['Classes'] 
               for m in c.get('Members', [])}
    
    # find deprecated/removed apis
    for key in old_api:
        if key not in new_api:
            breaking.append(f"REMOVED: {key}")
        elif 'Deprecated' in new_api[key].get('Tags', []):
            breaking.append(f"DEPRECATED: {key}")
    
    return breaking
```

### 3. Monitoring Shader Changes

```python
# RobloxShaderData.csv shows which shaders are used
# parse it to track graphics updates
import csv

with open('RobloxShaderData.csv', 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        if row['API'] == 'Vulkan':  # track vulkan-specific shaders
            print(f"{row['Name']} - {row['Type']}")
```

### 4. Extracting Lua Type Definitions

```lua
-- LuauTypes.d.luau contains official type definitions
-- use them in your roblox-ts or luau projects

-- example: copy types to your project
type Vector3 = {
    X: number,
    Y: number,
    Z: number,
    Magnitude: number,
}
```

## Automation Examples

### GitHub Actions Webhook

```yaml
name: Monitor Roblox Updates

on:
  schedule:
    - cron: '0 */6 * * *'  # every 6 hours
  workflow_dispatch:

jobs:
  check-updates:
    runs-on: ubuntu-latest
    steps:
      - name: Check for new version
        run: |
          CURRENT=$(curl -s https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/version.txt)
          echo "Current version: $CURRENT"
          # add your notification logic here
```

### Discord Webhook Notifier

```python
import requests
import json
from datetime import datetime

def notify_discord(webhook_url, changes):
    embed = {
        "title": "Roblox Client Update Detected",
        "description": f"{len(changes)} changes found",
        "color": 0x00ff00,
        "fields": [
            {"name": change[:256], "value": "New API", "inline": False}
            for change in changes[:10]  # limit to 10
        ],
        "timestamp": datetime.utcnow().isoformat()
    }
    
    requests.post(webhook_url, json={"embeds": [embed]})
```

### Telegram Bot Alerts

```python
import telegram
from telegram import Bot

def send_update_alert(bot_token, chat_id, version):
    bot = Bot(token=bot_token)
    message = f"🔔 new roblox version: {version}\n\ncheck changes at: https://github.com/MaximumADHD/Roblox-Client-Tracker"
    bot.send_message(chat_id=chat_id, text=message)
```

## Understanding the Data

### API-Dump.json Structure

```json
{
  "Classes": [
    {
      "Name": "Part",
      "Superclass": "BasePart",
      "Tags": ["NotCreatable"],
      "Members": [
        {
          "Name": "Anchored",
          "MemberType": "Property",
          "ValueType": {"Name": "bool", "Category": "Primitive"},
          "Tags": ["NotReplicated"]
        }
      ]
    }
  ],
  "Enums": [...]
}
```

**key fields:**
- `Tags`: indicates special behaviors (NotCreatable, Deprecated, Service)
- `Security`: shows what context can access (None, PluginSecurity, LocalUserSecurity)
- `ValueType`: property/parameter types

### FVariables.txt Prefixes

- `DFFlag`: boolean feature flags
- `DFInt`: integer configuration values
- `DFString`: string configuration values
- `FFlag`: fast flags (client-side)
- `SFFlag`: server-side flags

### CppTree.txt Symbols

unmangled c++ symbols from RobloxStudioBeta.exe:
```
RBX::Network::Replicator::processPacket
RBX::DataModel::close
RBX::Instance::setParent
```

useful for:
- understanding internal architecture
- reverse engineering workflows
- finding undocumented features

## Real-World Projects Using This Data

### API Documentation Generators
- track api changes over time
- generate diff reports between versions
- create searchable documentation

### Plugin Compatibility Checkers
- detect when apis used by plugins are deprecated
- auto-update plugin code to use new apis
- warn about breaking changes

### Feature Flag Dashboards
- monitor which features are enabled
- track rollout percentages
- predict upcoming features

### Performance Monitoring
- track shader changes and performance impact
- monitor c++ symbol additions (new features)
- correlate updates with performance metrics

## Tips and Best Practices

### Comparing Versions

1. clone the repo to get full history
2. use git diff between commits:
```bash
git clone https://github.com/MaximumADHD/Roblox-Client-Tracker
cd Roblox-Client-Tracker
git log --oneline | head -20  # see recent versions
git diff <old-commit> <new-commit> API-Dump.json
```

### Rate Limiting

- use github's raw.githubusercontent.com (no api rate limits)
- cache data locally to avoid repeated downloads
- use git clone for bulk access instead of individual file downloads

### Staying Updated

- watch the repository for notifications
- use rss feeds: `https://github.com/MaximumADHD/Roblox-Client-Tracker/commits/roblox.atom`
- set up github actions in your own repos

### Data Validation

```python
import json

def validate_api_dump(dump):
    """basic validation of api dump structure"""
    required_keys = ['Classes', 'Enums', 'Version']
    for key in required_keys:
        if key not in dump:
            raise ValueError(f"missing required key: {key}")
    
    # validate each class has required fields
    for cls in dump['Classes']:
        if 'Name' not in cls or 'Members' not in cls:
            raise ValueError(f"invalid class structure")
    
    return True
```

## FAQ

**q: how often does the repo update?**  
a: multiple times per week, automatically when roblox releases new versions

**q: can i use this data in my commercial product?**  
a: the data is extracted from public roblox sources. check roblox's terms of service for your specific use case

**q: why is full-api-dump.json different from api-dump.json?**  
a: full-api-dump includes internal/hidden classes and default property values that normal dump omits

**q: are the csv files the same as txt files?**  
a: yes, just reformatted for easier viewing in github and spreadsheet applications

**q: can i request specific data to be tracked?**  
a: open an issue on the main repo. the maintainer decides what gets tracked based on community value

## Contributing

this is primarily an automated repository, but you can contribute:
- documentation improvements (like this guide)
- example scripts and tools
- bug reports if data extraction fails
- feature requests for the backend tool

backend source: https://github.com/MaximumADHD/RCT-Source

## Resources

- [roblox developer hub](https://create.roblox.com/docs)
- [roblox api reference](https://create.roblox.com/docs/reference/engine)
- [rct backend source](https://github.com/MaximumADHD/RCT-Source)
- [roblox creator forums](https://devforum.roblox.com/)

---

*last updated: february 2026*
