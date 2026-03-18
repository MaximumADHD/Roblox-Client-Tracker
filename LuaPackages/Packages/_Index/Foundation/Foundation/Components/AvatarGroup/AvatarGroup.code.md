---
category: Media
---

## Overview

The AvatarGroup component displays a collection of user avatars in a horizontal arrangement, with options for "spread"
to evenly distribute the avatars or "stacked" to overlap them slightly.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local AvatarGroup = Foundation.AvatarGroup
local AvatarGroupType = Foundation.Enum.AvatarGroupType
...
return React.createElement(AvatarGroup, {
	avatars = {
		24813339,
		24813338,
		24813337,
		24813336,
	},
	type = AvatarGroupType.Stack,
	max = 2,
})
...
```
