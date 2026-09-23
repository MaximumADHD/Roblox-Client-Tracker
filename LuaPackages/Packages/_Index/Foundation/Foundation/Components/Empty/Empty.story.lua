local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Empty = require(Foundation.Components.Empty)
local IconSize = require(Foundation.Enums.IconSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
local Section = StorySection.Section
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG

type IconSize = IconSize.IconSize

local ICON_SIZE_ORDER: { IconSize } = {
	IconSize.XSmall,
	IconSize.Small,
	IconSize.Medium,
	IconSize.Large,
	IconSize.XLarge,
	IconSize.XXLarge,
}

local PLAYGROUND_ICON_OPTIONS = StoryIcons.buildIconControlOptions()

local TEXT = "Text"
local BUTTON_TEXT = "Button"
local LONG_TEXT =
	"This is a much longer label than either of these parents can fit on a single line, so the message wraps onto additional lines rather than clipping or truncating at the edge of its container"

local PLAYGROUND_HEIGHT = 240
local CELL_WIDTH = 240
local CELL_HEIGHT = 160
local WRAP_CELL_HEIGHT = 200
local WRAP_FIXED_WIDTH = 400
local ICON_TYPE_LABEL_COLUMN_WIDTH = 260
local ACCESSORY_LABEL_COLUMN_WIDTH = 160

local function noop() end

local function BoundedFrame(props: {
	LayoutOrder: number?,
	width: number,
	height: number,
	children: React.ReactNode,
}): React.ReactNode
	return React.createElement(View, {
		Size = UDim2.fromOffset(props.width, props.height),
		tag = "radius-medium clip bg-surface-100",
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

local function WrappingCell(props: {
	LayoutOrder: number,
	label: string,
	width: UDim,
}): React.ReactNode
	return React.createElement(View, {
		tag = "col align-x-left gap-small size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		Frame = React.createElement(View, {
			Size = UDim2.new(props.width, UDim.new(0, WRAP_CELL_HEIGHT)),
			tag = "radius-medium clip bg-surface-100",
			LayoutOrder = 2,
		}, {
			Empty = React.createElement(Empty, {
				text = LONG_TEXT,
			}),
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		text: string,
		iconName: string,
		iconSize: IconSize,
		hasButton: boolean,
		buttonText: string,
		buttonIcon: string,
	},
}): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = `col size-full-0 auto-y {STORY_FRAME_TAG}`,
	}, {
		Frame = React.createElement(View, {
			Size = UDim2.new(1, 0, 0, PLAYGROUND_HEIGHT),
			tag = "radius-medium clip bg-surface-100",
			LayoutOrder = 1,
		}, {
			Empty = React.createElement(Empty, {
				icon = {
					name = StoryIcons.parseIconControl(controls.iconName),
					size = controls.iconSize,
				},
				text = if controls.text ~= "" then controls.text else nil,
				button = if controls.hasButton
					then {
						text = controls.buttonText,
						icon = StoryIcons.parseIconControl(controls.buttonIcon),
						onActivated = noop,
					}
					else nil,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge size-full-0 auto-y {STORY_FRAME_TAG}`,
	}, {
		OptionalAccessories = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Optional accessories",
			contentTag = "col auto-xy",
		}, {
			Grid = React.createElement(View, {
				tag = "auto-xy",
				LayoutOrder = 1,
			}, {
				Matrix = React.createElement(MatrixGrid, {
					labelColumnWidth = ACCESSORY_LABEL_COLUMN_WIDTH,
					showHeader = false,
					columnHeaders = {},
					cellColumnWidth = CELL_WIDTH,
					headerTextAlign = "left",
					cellAlign = "left",
					rowAlign = "top",
					rowGap = "xxlarge",
					rows = {
						{
							label = matrixLabel("Icon + Text"),
							cells = {
								React.createElement(BoundedFrame, {
									LayoutOrder = 1,
									width = CELL_WIDTH,
									height = CELL_HEIGHT,
								}, {
									Empty = React.createElement(Empty, {
										text = TEXT,
									}),
								}),
							},
						},
						{
							label = matrixLabel("Icon + Text + Button"),
							cells = {
								React.createElement(BoundedFrame, {
									LayoutOrder = 1,
									width = CELL_WIDTH,
									height = CELL_HEIGHT,
								}, {
									Empty = React.createElement(Empty, {
										text = TEXT,
										button = {
											text = BUTTON_TEXT,
											onActivated = noop,
										},
									}),
								}),
							},
						},
					},
				}),
			}),
		}),
		IconByType = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Icon by type",
			contentTag = "col auto-xy",
		}, {
			Grid = React.createElement(View, {
				tag = "auto-xy",
				LayoutOrder = 1,
			}, {
				Matrix = React.createElement(MatrixGrid, {
					labelColumnWidth = ICON_TYPE_LABEL_COLUMN_WIDTH,
					showHeader = false,
					columnHeaders = {},
					cellColumnWidth = CELL_WIDTH,
					headerTextAlign = "left",
					cellAlign = "left",
					rowAlign = "top",
					rowGap = "xxlarge",
					rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
						return {
							React.createElement(BoundedFrame, {
								LayoutOrder = 1,
								width = CELL_WIDTH,
								height = CELL_HEIGHT,
							}, {
								Empty = React.createElement(Empty, {
									icon = {
										name = iconExample.name,
									},
									text = TEXT,
								}),
							}),
						}
					end),
				}),
			}),
		}),
		Wrapping = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Wrapping",
			contentTag = "col gap-large size-full-0 auto-y",
		}, {
			Fill = React.createElement(WrappingCell, {
				LayoutOrder = 1,
				label = "Parent fill",
				width = UDim.new(1, 0),
			}),
			Fixed = React.createElement(WrappingCell, {
				LayoutOrder = 2,
				label = `{WRAP_FIXED_WIDTH}px`,
				width = UDim.new(0, WRAP_FIXED_WIDTH),
			}),
		}),
	})
end

return {
	summary = "Empty fills a page or region when there is no relevant content, with an icon, message, and optional action.",
	stories = {
		{ name = "Playground", story = PlaygroundStory },
		{ name = "Content", story = ContentStory },
	},
	controls = {
		text = TEXT,
		iconName = PLAYGROUND_ICON_OPTIONS,
		iconSize = ICON_SIZE_ORDER,
		hasButton = false,
		buttonText = BUTTON_TEXT,
		buttonIcon = PLAYGROUND_ICON_OPTIONS,
	},
}
