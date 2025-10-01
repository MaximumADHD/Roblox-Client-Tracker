---
category: Layout
---

## Overview

A `Tile` is a surface that displays content and actions on a single topic. The `Tile` component is composed of several subcomponents to handle various use cases:

* [Tile](#root): a surface-level container for grouping related components.
* [TileMedia](#media): a component for displaying images and additional media next to the [TileContent](#content).
* [TileContent](#content): the wrapper for the `Tile`'s main content.
* [TileHeader](#header): a component for the `Tile` header, to be used as part of [TileContent](#content).
* [TileFooter](#footer): a wrapper for the `Tile` footer, to be used as part of [TileContent](#content).
* [TileActions](#actions): an optional wrapper that groups a set of actions, to be used as a child of [TileContent](#content).

---

## Usage

```luau
local Foundation = require(Packages.Foundation)
local Tile = Foundation.Tile
local MediaType = Foundation.Enums.MediaType
local MediaShape = Foundation.Enums.MediaShape

local Button = Foundation.Button
local InputSize = Foundation.Enums.InputSize
local ButtonVariant = Foundation.Enums.ButtonVariant

local function Component()
	local tokens = useTokens()

	return React.createElement(Tile.Root, {
		FillDirection = Enum.FillDirection.Vertical,
		Size = UDim2.fromOffset(150, 275),
		spacing = tokens.Gap.Small,
	}, {
		TileMedia = React.createElement(Tile.Media, {
			id = 123456,
			type = MediaType.Asset,
			shape = MediaShape.Square,
			background = tokens.Color.Shift.Shift_200,
		}),
		TileContent = React.createElement(Tile.Content, {
			spacing = tokens.Gap.XSmall,
			padding = tokens.Padding.Small,
		}, {
			TileHeader = React.createElement(Tile.Header, {
				title = {
					text = "Item",
					fontStyle = tokens.Typography.HeadingSmall,
					numLines = props.controls.numLines,
				},
				subtitle = {
					text = "Price",
					fontStyle = tokens.Typography.BodyLarge,
					colorStyle = tokens.Color.Content.Muted,
				},
				spacing = tokens.Gap.Small,
			}),
			TileFooter = React.createElement(Tile.Footer, {}, {
				-- Any custom footer
			}),
			TileActions = React.createElement(Tile.Actions, {
				Visible = isHovering,
			}, {
				Button = React.createElement(Button, {
					text = "Purchase",
					size = InputSize.Small,
					variant = ButtonVariant.Emphasis,
					fillBehavior = FillBehavior.Fill,
				}),
			}),
		}),
	})
end
```

