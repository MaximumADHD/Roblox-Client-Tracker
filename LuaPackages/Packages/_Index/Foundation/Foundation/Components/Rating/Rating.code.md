---
category: Actions
---

## Overview

`Rating` is a stylized interactive component for affinity voting. It presents a percentage label with thumbs up and thumbs down actions in a single pill-shaped chip, separated by a vertical divider.

The thumb-up region includes the leading thumb icon and the text label as one click target. The thumb-down region is the trailing thumb icon.

`value` can be set to reflect `ThumbUp`, `ThumbDown`, or `None`. The active thumb renders its icon as filled.

---

## Usage

`Rating`s will grow to fit their text until they reach their parents' boundaries, in which case they will not exceed that width. Rating text does _not_ wrap to multiple lines.

```luau
local Foundation = require(Packages.Foundation)
local Rating = Foundation.Rating

return React.createElement(Rating, {
	text = "99% liked",
	value = RatingValue.None,
	onThumbUp = function()
		print("Thumb up")
	end,
	onThumbDown = function()
		print("Thumb down")
	end,
})
```

`Rating` with a recorded vote looks like this.

```luau
local Foundation = require(Packages.Foundation)
local Rating = Foundation.Rating
local RatingValue = Foundation.Enums.RatingValue

return React.createElement(Rating, {
	text = "99% liked",
	value = RatingValue.ThumbUp,
	onThumbUp = function() end,
	onThumbDown = function() end,
})
```
