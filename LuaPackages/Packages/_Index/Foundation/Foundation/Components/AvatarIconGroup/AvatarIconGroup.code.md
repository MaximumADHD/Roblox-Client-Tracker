---
category: Media
---

## Overview

`AvatarIconGroup` displays a collection of user avatar headshots at icon size in a horizontal arrangement. It supports "spread" (evenly spaced) and "stacked" (overlapping) layouts, similar to `AvatarGroup`, but renders compact `AvatarIcon` elements without presence indicators.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local AvatarIconGroup = Foundation.AvatarIconGroup
local AvatarGroupType = Foundation.Enums.AvatarGroupType
local AvatarIconSize = Foundation.Enums.AvatarIconSize

return React.createElement(AvatarIconGroup, {
	avatars = {
		24813339,
		24813338,
		24813337,
		24813336,
	},
	type = AvatarGroupType.Stack,
	size = AvatarIconSize.Medium,
	max = 3,
})
```
