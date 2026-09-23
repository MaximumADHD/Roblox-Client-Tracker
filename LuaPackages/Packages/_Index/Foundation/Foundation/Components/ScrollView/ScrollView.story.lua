local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local ScrollView = require(Foundation.Components.ScrollView)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local Visibility = require(Foundation.Enums.Visibility)

type Visibility = Visibility.Visibility
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local matrixLabel = MatrixGridShared.matrixLabel
local LabeledCell = StorySection.LabeledCell
local Section = StorySection.Section
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG

local SCROLLING_DIRECTION_ORDER: { Enum.ScrollingDirection } = {
	Enum.ScrollingDirection.X,
	Enum.ScrollingDirection.Y,
	Enum.ScrollingDirection.XY,
}

local VISIBILITY_ORDER: { Visibility } = {
	Visibility.Auto,
	Visibility.Always,
	Visibility.None,
}

local SCROLL_BAR_INSET_ORDER: { Enum.ScrollBarInset } = {
	Enum.ScrollBarInset.None,
	Enum.ScrollBarInset.ScrollBar,
	Enum.ScrollBarInset.Always,
}

local SCROLL_BAR_INSET_HEADERS: { string } = Dash.map(SCROLL_BAR_INSET_ORDER, function(inset): string
	return inset.Name
end)

local INSET_LABEL_COLUMN_WIDTH = 110

local NARROW_WINDOW_WIDTH = 160
local WINDOW_WIDTH = 200
local WIDE_WINDOW_WIDTH = 280
local WINDOW_HEIGHT = 120
local TALL_WINDOW_HEIGHT = 180

-- StoryControls cannot hold a UDim2, so Playground stores the window offsets and the
-- story maps them onto `Size`. Dimensions sweeps the same widths.
local WINDOW_WIDTH_ORDER: { number } = { NARROW_WINDOW_WIDTH, WINDOW_WIDTH, WIDE_WINDOW_WIDTH }
local WINDOW_HEIGHT_ORDER: { number } = { WINDOW_HEIGHT, TALL_WINDOW_HEIGHT }

local CANVAS_PRESET_AUTOMATIC = "Automatic"
local CANVAS_PRESET_FIXED = "Fixed"
local CANVAS_PRESET_WINDOW = "Window"

local CANVAS_PRESET_ORDER: { string } = {
	CANVAS_PRESET_AUTOMATIC,
	CANVAS_PRESET_FIXED,
	CANVAS_PRESET_WINDOW,
}

local ITEM_COUNT = 6
local FITTING_ITEM_COUNT = 2
local ITEM_GAP = 8
local ITEM_HEIGHT = 44
local ITEM_WIDTH = 96
local WIDE_ITEM_WIDTH = 280
local FIXED_CANVAS_HEIGHT = 600

local WINDOW_SIZE = UDim2.fromOffset(WINDOW_WIDTH, WINDOW_HEIGHT)
local NARROW_WINDOW_SIZE = UDim2.fromOffset(NARROW_WINDOW_WIDTH, WINDOW_HEIGHT)
local FILL_FRAME_SIZE = UDim2.fromOffset(WIDE_WINDOW_WIDTH, TALL_WINDOW_HEIGHT)

type CanvasFixture = {
	canvasSize: UDim2,
	automaticCanvasSize: Enum.AutomaticSize?,
}

type DirectionFixture = {
	fillDirection: Enum.FillDirection,
	itemSize: UDim2,
	canvas: CanvasFixture,
}

local function directionFixture(direction: Enum.ScrollingDirection): DirectionFixture
	if direction == Enum.ScrollingDirection.X then
		return {
			fillDirection = Enum.FillDirection.Horizontal,
			itemSize = UDim2.new(0, ITEM_WIDTH, 1, 0),
			canvas = {
				canvasSize = UDim2.fromScale(0, 1),
				automaticCanvasSize = Enum.AutomaticSize.X,
			},
		}
	elseif direction == Enum.ScrollingDirection.XY then
		return {
			fillDirection = Enum.FillDirection.Vertical,
			itemSize = UDim2.fromOffset(WIDE_ITEM_WIDTH, ITEM_HEIGHT),
			canvas = {
				canvasSize = UDim2.fromOffset(0, 0),
				automaticCanvasSize = Enum.AutomaticSize.XY,
			},
		}
	end

	return {
		fillDirection = Enum.FillDirection.Vertical,
		itemSize = UDim2.new(1, 0, 0, ITEM_HEIGHT),
		canvas = {
			canvasSize = UDim2.fromScale(1, 0),
			automaticCanvasSize = Enum.AutomaticSize.Y,
		},
	}
end

local function canvasFixture(preset: string, direction: Enum.ScrollingDirection): CanvasFixture
	if preset == CANVAS_PRESET_FIXED then
		return { canvasSize = UDim2.new(1, 0, 0, FIXED_CANVAS_HEIGHT) }
	elseif preset == CANVAS_PRESET_WINDOW then
		return { canvasSize = UDim2.fromScale(1, 1) }
	end

	return directionFixture(direction).canvas
end

local BOX_TAG = "radius-medium bg-surface-100"
local ITEM_TAG = "text-body-small radius-medium bg-shift-100 content-muted"
-- Square, high-contrast items so a gutter the width of the bar reads as a step at the
-- right edge rather than as the gap a rounded corner already leaves there.
local GUTTER_ITEM_TAG = "text-body-small bg-shift-300 content-emphasis"

local function scrollItems(itemSize: UDim2, itemCount: number, itemTag: string): { [string]: React.ReactNode }
	local items: { [string]: React.ReactNode } = {}

	for index = 1, itemCount do
		items[`Item{index}`] = React.createElement(Text, {
			Text = `Item {index}`,
			tag = itemTag,
			Size = itemSize,
			LayoutOrder = index,
		})
	end

	return items
end

type ScrollBoxProps = {
	LayoutOrder: number,
	Size: UDim2?,
	direction: Enum.ScrollingDirection?,
	canvas: CanvasFixture?,
	itemCount: number?,
	itemTag: string?,
	tag: string?,
	scrollBarVisibility: Visibility?,
	verticalScrollBarInset: Enum.ScrollBarInset?,
	horizontalScrollBarInset: Enum.ScrollBarInset?,
	scrollingEnabled: boolean?,
	isDisabled: boolean?,
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
	onCanvasPositionChanged: ((instance: ScrollingFrame) -> ())?,
}

local function ScrollBox(props: ScrollBoxProps): React.ReactNode
	local direction = props.direction or Enum.ScrollingDirection.Y
	local fixture = directionFixture(direction)
	local canvas = props.canvas or fixture.canvas

	return React.createElement(ScrollView, {
		tag = props.tag or BOX_TAG,
		Size = props.Size or WINDOW_SIZE,
		layout = {
			FillDirection = fixture.fillDirection,
			Padding = UDim.new(0, ITEM_GAP),
		},
		scroll = {
			AutomaticCanvasSize = canvas.automaticCanvasSize,
			CanvasSize = canvas.canvasSize,
			ScrollingDirection = direction,
			ScrollingEnabled = props.scrollingEnabled,
			VerticalScrollBarInset = props.verticalScrollBarInset,
			HorizontalScrollBarInset = props.horizontalScrollBarInset,
			scrollBarVisibility = props.scrollBarVisibility,
		},
		isDisabled = props.isDisabled,
		scrollingFrameRef = props.scrollingFrameRef,
		onCanvasPositionChanged = props.onCanvasPositionChanged,
		LayoutOrder = props.LayoutOrder,
	}, scrollItems(fixture.itemSize, props.itemCount or ITEM_COUNT, props.itemTag or ITEM_TAG))
end

type PlaygroundControls = {
	widthOffset: number,
	heightOffset: number,
	scrollingDirection: Enum.ScrollingDirection,
	canvasSizePreset: string,
	scrollBarVisibility: Visibility,
	verticalScrollBarInset: Enum.ScrollBarInset,
	horizontalScrollBarInset: Enum.ScrollBarInset,
	scrollingEnabled: boolean,
	isDisabled: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = `col gap-large auto-xy {STORY_FRAME_TAG}`,
	}, {
		Box = React.createElement(ScrollBox, {
			LayoutOrder = 1,
			Size = UDim2.fromOffset(controls.widthOffset, controls.heightOffset),
			direction = controls.scrollingDirection,
			canvas = canvasFixture(controls.canvasSizePreset, controls.scrollingDirection),
			scrollBarVisibility = controls.scrollBarVisibility,
			verticalScrollBarInset = controls.verticalScrollBarInset,
			horizontalScrollBarInset = controls.horizontalScrollBarInset,
			scrollingEnabled = controls.scrollingEnabled,
			isDisabled = controls.isDisabled,
		}),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Dimensions = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Dimensions",
		}, {
			Narrow = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = `UDim2.fromOffset({NARROW_WINDOW_WIDTH}, {WINDOW_HEIGHT})`,
			}, {
				Box = React.createElement(ScrollBox, {
					LayoutOrder = 1,
					Size = NARROW_WINDOW_SIZE,
					scrollBarVisibility = Visibility.Always,
				}),
			}),
			Fill = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = "size-full",
			}, {
				Frame = React.createElement(View, {
					Size = FILL_FRAME_SIZE,
					LayoutOrder = 1,
				}, {
					Box = React.createElement(ScrollBox, {
						LayoutOrder = 1,
						tag = `size-full {BOX_TAG}`,
						scrollBarVisibility = Visibility.Always,
					}),
				}),
			}),
		}),
		Canvas = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Canvas size",
			note = "AutomaticCanvasSize grows the canvas from the children and CanvasSize sets it outright, so a canvas no larger than the window leaves nothing to scroll.",
		}, {
			Automatic = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "AutomaticCanvasSize = Y",
			}, {
				Box = React.createElement(ScrollBox, {
					LayoutOrder = 1,
					scrollBarVisibility = Visibility.Always,
				}),
			}),
			Fixed = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = `CanvasSize = UDim2.new(1, 0, 0, {FIXED_CANVAS_HEIGHT})`,
			}, {
				Box = React.createElement(ScrollBox, {
					LayoutOrder = 1,
					canvas = { canvasSize = UDim2.new(1, 0, 0, FIXED_CANVAS_HEIGHT) },
					scrollBarVisibility = Visibility.Always,
				}),
			}),
			Window = React.createElement(LabeledCell, {
				LayoutOrder = 3,
				label = "CanvasSize = UDim2.fromScale(1, 1)",
			}, {
				Box = React.createElement(ScrollBox, {
					LayoutOrder = 1,
					canvas = { canvasSize = UDim2.fromScale(1, 1) },
					scrollBarVisibility = Visibility.Always,
				}),
			}),
		}),
	})
end

local function ScrollingDirectionStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Directions = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Scrolling direction",
				contentTag = "col gap-large size-full-0 auto-y",
			},
			Dash.map(SCROLLING_DIRECTION_ORDER, function(direction, index): React.ReactNode
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = direction.Name,
				}, {
					Box = React.createElement(ScrollBox, {
						LayoutOrder = 1,
						direction = direction,
						scrollBarVisibility = Visibility.Always,
					}),
				})
			end)
		),
	})
end

-- A scale-width canvas resolves against the frame rather than the window, so the gutter
-- only moves the children when the engine derives the canvas width itself.
local WINDOW_DERIVED_CANVAS: CanvasFixture = {
	canvasSize = UDim2.fromOffset(0, 0),
	automaticCanvasSize = Enum.AutomaticSize.Y,
}

local function insetCells(itemCount: number): { React.ReactNode }
	return Dash.map(SCROLL_BAR_INSET_ORDER, function(inset): React.ReactNode
		return React.createElement(ScrollBox, {
			LayoutOrder = 1,
			tag = "stroke-emphasis bg-surface-300",
			itemCount = itemCount,
			itemTag = GUTTER_ITEM_TAG,
			canvas = WINDOW_DERIVED_CANVAS,
			scrollBarVisibility = Visibility.Always,
			verticalScrollBarInset = inset,
		})
	end)
end

local function ContainmentStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Inset = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Inset",
			note = "ScrollBar and Always only diverge once the canvas fits, so the gutter is crossed with overflow.",
			contentTag = "col auto-xy",
		}, {
			Grid = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				labelColumnWidth = INSET_LABEL_COLUMN_WIDTH,
				columnHeaders = SCROLL_BAR_INSET_HEADERS,
				cellColumnWidth = WINDOW_WIDTH,
				rows = {
					{
						label = matrixLabel("Canvas overflows"),
						cells = insetCells(ITEM_COUNT),
					},
					{
						label = matrixLabel("Canvas fits"),
						cells = insetCells(FITTING_ITEM_COUNT),
					},
				} :: { MatrixGridRow },
			}),
		}),
	})
end

local function ScrollPositionExample(props: { LayoutOrder: number }): React.ReactNode
	local canvasPosition, setCanvasPosition = React.useState(Vector2.zero)
	local scrollingFrameRef = React.useRef(nil :: ScrollingFrame?)

	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Box = React.createElement(ScrollBox, {
			LayoutOrder = 1,
			scrollBarVisibility = Visibility.Always,
			scrollingFrameRef = scrollingFrameRef,
			onCanvasPositionChanged = function(instance: ScrollingFrame)
				setCanvasPosition(instance.CanvasPosition)
			end,
		}),
		Readout = React.createElement(Text, {
			Text = string.format("CanvasPosition: %.0f, %.0f", canvasPosition.X, canvasPosition.Y),
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 2,
		}),
		ScrollToTop = React.createElement(Button, {
			text = "Scroll to top",
			onActivated = function()
				local scrollingFrame = scrollingFrameRef.current
				if scrollingFrame then
					scrollingFrame.CanvasPosition = Vector2.zero
				end
			end,
			LayoutOrder = 3,
		}),
	})
end

local function ScrollingStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Position = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Scroll position",
		}, {
			Example = React.createElement(ScrollPositionExample, {
				LayoutOrder = 1,
			}),
		}),
		Disabled = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Scrolling disabled",
		}, {
			Box = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = "ScrollingEnabled = false",
			}, {
				Box = React.createElement(ScrollBox, {
					LayoutOrder = 1,
					scrollBarVisibility = Visibility.Always,
					scrollingEnabled = false,
				}),
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Chrome = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Chrome",
			},
			Dash.map(VISIBILITY_ORDER, function(visibility, index): React.ReactNode
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = visibility,
				}, {
					Box = React.createElement(ScrollBox, {
						LayoutOrder = 1,
						scrollBarVisibility = visibility,
					}),
				})
			end)
		),
	})
end

return {
	base = true,
	summary = "ScrollView is a scrolling container that renders an engine ScrollingFrame inside a View; every scroll property lives in the nested scroll table.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			summary = "The wrapper Size is the scroll window; canvas size is independent and is what decides whether anything actually scrolls.",
			story = SizingStory,
		},
		{
			name = "Scrolling direction",
			story = ScrollingDirectionStory,
		},
		{
			name = "Containment",
			story = ContainmentStory,
		},
		{
			name = "Scrolling",
			story = ScrollingStory,
		},
		{
			name = "Content",
			summary = "Auto paints the bar only while the view is hovered, selected, or pressed and fades it three seconds after the last scroll, so every other story here pins Always.",
			story = ContentStory,
		},
	},
	controls = {
		widthOffset = WINDOW_WIDTH_ORDER,
		heightOffset = WINDOW_HEIGHT_ORDER,
		scrollingDirection = SCROLLING_DIRECTION_ORDER,
		canvasSizePreset = CANVAS_PRESET_ORDER,
		scrollBarVisibility = VISIBILITY_ORDER,
		verticalScrollBarInset = SCROLL_BAR_INSET_ORDER,
		horizontalScrollBarInset = SCROLL_BAR_INSET_ORDER,
		scrollingEnabled = true,
		isDisabled = false,
	},
}
