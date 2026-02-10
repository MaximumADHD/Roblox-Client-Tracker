# Usage Guide

This guide shows practical ways to use the data from this repository. The repo updates automatically multiple times per week with Roblox client changes.

## Quick Start

### Reading API Changes

The `API-Dump.json` contains all Roblox API information. Here's how to parse it:

```python
import json
import requests

# Load the latest API dump
url = "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/API-Dump.json"
api_data = requests.get(url).json()

# Find all new classes added in recent versions
for class_info in api_data['Classes']:
    print(f"Class: {class_info['Name']}")
    if 'Tags' in class_info and 'NotReplicated' in class_info['Tags']:
        print("  → Not replicated (client-only)")
```

### Monitoring Feature Flags (FVariables)

FVariables control features remotely. Track specific flags:

```python
# Load FVariables
fvars_url = "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/FVariables.txt"
fvars = requests.get(fvars_url).text.split('\n')

# Filter for specific features
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
    
    # Check for removed methods
    old_api = {f"{c['Name']}.{m['Name']}": m 
               for c in old_dump['Classes'] 
               for m in c.get('Members', [])}
    
    new_api = {f"{c['Name']}.{m['Name']}": m 
               for c in new_dump['Classes'] 
               for m in c.get('Members', [])}
    
    # Find deprecated/removed APIs
    for key in old_api:
        if key not in new_api:
            breaking.append(f"REMOVED: {key}")
        elif 'Deprecated' in new_api[key].get('Tags', []):
            breaking.append(f"DEPRECATED: {key}")
    
    return breaking
```

### 3. Monitoring Shader Changes

```csv
# RobloxShaderData.csv shows which shaders are used
# Parse it to track graphics updates
import csv

with open('RobloxShaderData.csv', 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        if row['API'] == 'Vulkan':  # Track Vulkan-specific shaders
            print(f"{row['Name']} - {row['Type']}")
```

### 4. Extracting Lua Type Definitions

```lua
-- LuauTypes.d.luau contains official type definitions
-- Use them in your Roblox-TS or Luau projects

-- Example: Copy types to your project
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
    - cron: '0 */6 * * *'  # Every 6 hours
  workflow_dispatch:

jobs:
  check-updates:
    runs-on: ubuntu-latest
    steps:
      - name: Check for new version
        run: |
          CURRENT=$(curl -s https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/version.txt)
          echo "Current version: $CURRENT"
          # Add your notification logic here
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
            for change in changes[:10]  # Limit to 10
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
    message = f"🔔 New Roblox version: {version}\n\nCheck changes at: https://github.com/MaximumADHD/Roblox-Client-Tracker"
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

**Key Fields:**
- `Tags`: Indicates special behaviors (NotCreatable, Deprecated, Service)
- `Security`: Shows what context can access (None, PluginSecurity, LocalUserSecurity)
- `ValueType`: Property/parameter types

### FVariables.txt Prefixes

- `DFFlag`: Boolean feature flags
- `DFInt`: Integer configuration values
- `DFString`: String configuration values
- `FFlag`: Fast flags (client-side)
- `SFFlag`: Server-side flags

### CppTree.txt Symbols

Unmangled C++ symbols from RobloxStudioBeta.exe:
```
RBX::Network::Replicator::processPacket
RBX::DataModel::close
RBX::Instance::setParent
```

Useful for:
- Understanding internal architecture
- Reverse engineering workflows
- Finding undocumented features

## Real-World Projects Using This Data

### API Documentation Generators
- Track API changes over time
- Generate diff reports between versions
- Create searchable documentation

### Plugin Compatibility Checkers
- Detect when APIs used by plugins are deprecated
- Auto-update plugin code to use new APIs
- Warn about breaking changes

### Feature Flag Dashboards
- Monitor which features are enabled
- Track rollout percentages
- Predict upcoming features

### Performance Monitoring
- Track shader changes and performance impact
- Monitor C++ symbol additions (new features)
- Correlate updates with performance metrics

## Tips and Best Practices

### Comparing Versions

1. Clone the repo to get full history
2. Use git diff between commits:
```bash
git clone https://github.com/MaximumADHD/Roblox-Client-Tracker
cd Roblox-Client-Tracker
git log --oneline | head -20  # See recent versions
git diff <old-commit> <new-commit> API-Dump.json
```

### Rate Limiting

- Use GitHub's raw.githubusercontent.com (no API rate limits)
- Cache data locally to avoid repeated downloads
- Use git clone for bulk access instead of individual file downloads

### Staying Updated

- Watch the repository for notifications
- Use RSS feeds: `https://github.com/MaximumADHD/Roblox-Client-Tracker/commits/roblox.atom`
- Set up GitHub Actions in your own repos

### Data Validation

```python
import json

def validate_api_dump(dump):
    """Basic validation of API dump structure"""
    required_keys = ['Classes', 'Enums', 'Version']
    for key in required_keys:
        if key not in dump:
            raise ValueError(f"Missing required key: {key}")
    
    # Validate each class has required fields
    for cls in dump['Classes']:
        if 'Name' not in cls or 'Members' not in cls:
            raise ValueError(f"Invalid class structure")
    
    return True
```

## FAQ

**Q: How often does the repo update?**  
A: Multiple times per week, automatically when Roblox releases new versions.

**Q: Can I use this data in my commercial product?**  
A: The data is extracted from public Roblox sources. Check Roblox's terms of service for your specific use case.

**Q: Why is Full-API-Dump.json different from API-Dump.json?**  
A: Full-API-Dump includes internal/hidden classes and default property values that normal dump omits.

**Q: Are the CSV files the same as TXT files?**  
A: Yes, just reformatted for easier viewing in GitHub and spreadsheet applications.

**Q: Can I request specific data to be tracked?**  
A: Open an issue on the main repo. The maintainer decides what gets tracked based on community value.

## Contributing

This is primarily an automated repository, but you can contribute:
- Documentation improvements (like this guide)
- Example scripts and tools
- Bug reports if data extraction fails
- Feature requests for the backend tool

Backend source: https://github.com/MaximumADHD/RCT-Source

## Resources

- [Roblox Developer Hub](https://create.roblox.com/docs)
- [Roblox API Reference](https://create.roblox.com/docs/reference/engine)
- [RCT Backend Source](https://github.com/MaximumADHD/RCT-Source)
- [Roblox Creator Forums](https://devforum.roblox.com/)

---

*Last updated: February 2026*
