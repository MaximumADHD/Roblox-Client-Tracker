---
category: Display
---

## Overview

`AvatarIcon` renders a user's avatar headshot at icon size. It is a standalone component designed for compact contexts where a full `Avatar` (with presence indicators and stroke states) is not needed.

Unlike `Avatar`, `AvatarIcon` has no `userPresence` prop and never renders status indicators or presence strokes.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local AvatarIcon = Foundation.AvatarIcon
local AvatarIconSize = Foundation.Enums.AvatarIconSize

return React.createElement(AvatarIcon, {
	userId = 24813339,
	size = AvatarIconSize.Medium,
})
```

With a backplate stroke / background style:

```luau
local tokens = useTokens()

return React.createElement(AvatarIcon, {
	userId = 24813339,
	size = AvatarIconSize.Large,
	backplateStyle = tokens.Color.Surface.Surface_0,
	backgroundStyle = tokens.Color.Surface.Surface_300,
})
```
