---
category: Media
---

## Overview

Media displays visual content such as an image at a fixed aspect ratio. The content is cropped to fill the chosen aspect ratio. It fills the width of its container by default and derives its height from the aspect ratio and orientation.

---

## Usage

The content is set with the `content` property, a tagged union so more media types (such as video) can be added later without changing the API. Today it accepts an image: `{ type = "Image", source = <asset> }`. The content is cropped to cover the media box.

Media fills its container's width and derives its height from the aspect ratio, so give it a container with a resolved width. A container that hugs Media on both axes (auto width and height) has no width to derive from and will collapse.

### Aspect ratio

The proportions are controlled by the `aspectRatio` property, with possible values defined in [[MediaAspectRatio]] (`1:1`/`5:4`/`4:3`/`3:2`/`16:9`/`2:1`). `1:1` is the default.

### Orientation

The `orientation` property decides which dimension is the longer one, with possible values defined in [[MediaOrientation]] (`Portrait`/`Landscape`). `Landscape` is the default. `Portrait` swaps the ratio so the taller dimension dominates. Orientation has no visible effect on the `1:1` aspect ratio.

### Examples

```luau
local Foundation = require(Packages.Foundation)
local Media = Foundation.Media
local MediaAspectRatio = require(Foundation.Enums.MediaAspectRatio)
local MediaOrientation = require(Foundation.Enums.MediaOrientation)

React.createElement(Media, {
	content = { type = "Image", source = "rbxassetid://78323814447735" },
	aspectRatio = MediaAspectRatio.Ratio16x9,
	orientation = MediaOrientation.Landscape,
})
```
