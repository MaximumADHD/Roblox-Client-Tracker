---
category: Display
---

## Overview

The `Avatar` component displays a user's profile picture or a default icon if no image is available with an optional userPresence indicator.

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local Avatar = Foundation.Avatar
local UserPresence = Foundation.Enums.UserPresence
local InputSize = Foundation.Enums.InputSize
...
return React.createElement(Avatar, {
	userId = "24813339",
	userPresence = UserPresence.InExperience,
	size = InputSize.Large,
})
...
```
