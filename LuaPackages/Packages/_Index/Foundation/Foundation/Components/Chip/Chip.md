---
category: Actions
---

## Overview

`Chip` is a stylized interactive, clickable user interface element.

`Chip` has text and leading and trailing accessories. They can be icons or `AvatarGroup`s

---

## Usage

`Chip`s will grow to fit their text until they reach their parents' boundaries, in which case they will not exceed that width. Chip text does *not* wrap to multiple lines.

```luau
local Foundation = require(Packages.Foundation)
local Chip = Foundation.Chip
...
return React.createElement(Chip, {
	leading = "icons/common/filter",
	text = "Filter",
	onActivated = function()
		print("Chip Clicked!")
	end,
})
...
```

`Chip` with an `AvatarGroup` looks like this. 
```luau
local Foundation = require(Packages.Foundation)
local Chip = Foundation.Chip

...
return React.createElement(Chip, {
    text = "Filter",
    onActivated = function()
        print(`Chip activated`)
    end,
    leading = {
        type = "AvatarGroup" :: "AvatarGroup",
        props = {
            avatars = {
                24813339,
                24813338,
            },
            type = AvatarGroupType.Stacked,
            max = 3,
        },
    },
})
```

!!! warning "AvatarGroup"

    If you `Chip` with `AvatarGroup` group is placed on a not default (Surface_0) background, then you need to use `BackgroundStyleContext`.
