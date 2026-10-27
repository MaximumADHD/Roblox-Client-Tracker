---
category: Actions
---

## Overview

Link is an interactive text control that navigates the user to another resource. It underlines on hover/focus and shows a focus ring while selected.

---

## Usage

Provide the link `text` and an `onActivated` callback that performs the navigation.

### Variant

The `variant` property sets the link's color treatment, with values defined in [[LinkVariant]] (`Standard`/`Inverse`). `Standard` is the default. Use `Inverse` when the link sits on an inverted surface — one whose theme is flipped relative to the app (for example, a tooltip that stays light in dark theme).

### Size

The `size` property scales the text along the body typography ramp, with values defined in [[InputSize]] (`Small`/`Medium`/`Large`). `Medium` is the default.

### Underline

The `hasUnderline` property controls whether the underline is persistent. It defaults to `false`, so the underline appears only while the link is hovered or focused; set it to `true` to keep the link underlined at rest.

### Text overflow

The `textOverflow` property controls what happens when the link text is longer than the space it sits in, with values defined in [[TextOverflow]]. `None` is the default: the link stays on one line and sizes to its text. Set it to `Wrap` and the link fills its container's width and its text wraps onto as many lines as needed, keeping the underline on every line.

### Examples

```luau
local Foundation = require(Packages.Foundation)
local Link = Foundation.Link
local LinkVariant = Foundation.Enums.LinkVariant

-- Standard link (underline appears on hover/focus)
React.createElement(Link, {
	text = "View documentation",
	onActivated = openDocs,
})

-- Persistently underlined
React.createElement(Link, {
	text = "Learn more",
	hasUnderline = true,
	onActivated = openDocs,
})
```

---

## Accessibility

- **Keyboard and gamepad**: the link is selectable and activates through the standard selection system, so it is reachable in the focus order and operable without a pointer.
- **Focus**: a selected link draws the system-emphasis focus outline via the selection cursor and shows its underline.
- **Content**: give the link `text` that describes its destination and makes sense out of context.

Link `text` must always be descriptive — screen-reader support for links in the engine is still limited, so meaningful copy is the primary safeguard.
