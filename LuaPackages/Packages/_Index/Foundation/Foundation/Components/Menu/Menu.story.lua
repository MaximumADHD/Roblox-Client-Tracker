local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local BadgeVariant = require(Foundation.Enums.BadgeVariant)
local InputSize = require(Foundation.Enums.InputSize)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Menu = require(Foundation.Components.Menu)
local MenuStoryHelpers = require(script.Parent.MenuStoryHelpers)
local OverlayStoryAnchor = require(Foundation.Utility.Stories.Shared.OverlayStoryAnchor)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local View = require(Foundation.Components.View)

local LabeledCell = StorySection.LabeledCell
local MatrixSection = StorySection.MatrixSection
local Section = StorySection.Section
local StoryMatrixGrid = StorySection.StoryMatrixGrid

local ALIGN_ORDER = MenuStoryHelpers.ALIGN_ORDER
local Anchor = OverlayStoryAnchor.Anchor
local IconName = BuilderIcons.Icon
local MATRIX_SECTION_TAG = MenuStoryHelpers.MATRIX_SECTION_TAG
local MenuStage = MenuStoryHelpers.MenuStage
local MenuTarget = MenuStoryHelpers.MenuTarget
local PAGE_TAG = MenuStoryHelpers.PAGE_TAG
local PLAYGROUND_FRAME_SIZE = MenuStoryHelpers.PLAYGROUND_FRAME_SIZE
local PLAYGROUND_TAG = MenuStoryHelpers.PLAYGROUND_TAG
local SAMPLE_ITEMS = MenuStoryHelpers.SAMPLE_ITEMS
local SIDE_ORDER = MenuStoryHelpers.SIDE_ORDER
local SIZE_ORDER = MenuStoryHelpers.SIZE_ORDER
local TALL_ANCHOR_SIZE = MenuStoryHelpers.TALL_ANCHOR_SIZE
local headerLabels = MenuStoryHelpers.headerLabels
local matrixLabel = MatrixGridShared.matrixLabel

type InputSize = InputSize.InputSize
type MenuItem = Menu.MenuItem
type MenuItems = Menu.MenuItems
type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide

local SIZE_HEADERS: { string } = Dash.map(SIZE_ORDER, function(size: InputSize): string
	return size
end)

type AnchorSource = "Children" | "ExternalRef"

local ANCHOR_SOURCE_ORDER: { AnchorSource } = { "Children", "ExternalRef" }

local ITEMS_PRESET_DEFAULT = "Default"
local ITEMS_PRESET_GROUPED = "Grouped"
local ITEMS_PRESET_NESTED = "Nested"
local ITEMS_PRESET_ORDER: { string } = {
	ITEMS_PRESET_DEFAULT,
	ITEMS_PRESET_GROUPED,
	ITEMS_PRESET_NESTED,
}

local GROUPED_ITEMS = {
	{
		title = "Section 1" :: string?,
		items = {
			{ id = "option-1", text = "Option 1" },
			{ id = "option-2", text = "Option 2" },
		},
	},
	{
		title = "Section 2",
		items = {
			{ id = "option-3", text = "Option 3" },
		},
	},
} :: MenuItems

local NESTED_ITEMS = {
	{ id = "option-1", text = "Option 1" },
	{
		id = "option-2",
		text = "Option 2",
		items = {
			{ id = "option-2a", text = "Option 1" },
			{ id = "option-2b", text = "Option 2" },
		},
	},
	{ id = "option-3", text = "Option 3" },
} :: MenuItems

local LONG_ITEMS: { MenuItem } = {
	{
		id = "long",
		text = "This is a longer label that should truncate in the open menu",
	},
	{ id = "option-1", text = "Option 1" },
	{ id = "option-2", text = "Option 2" },
}

local LEADING_ICON_ITEMS: { MenuItem } = {
	{ id = "option-1", text = "Option 1", leading = IconName.Pencil },
	{ id = "option-2", text = "Option 2", leading = IconName.TwoStackedSquares },
}

local LEADING_AVATAR_ITEMS: { MenuItem } = {
	{ id = "option-1", text = "Option 1", leading = { type = AccessoryType.Avatar, userId = 1 } },
	{ id = "option-2", text = "Option 2", leading = { type = AccessoryType.Avatar, userId = 156 } },
}

local TRAILING_HINT_ITEMS: { MenuItem } = {
	{ id = "option-1", text = "Option 1", trailing = { type = "Hint", text = "⌘E" } },
	{ id = "option-2", text = "Option 2", trailing = { type = "Hint", text = "⌘C" } },
}

local TRAILING_BADGE_ITEMS: { MenuItem } = {
	{
		id = "option-1",
		text = "Option 1",
		trailing = { type = "Badge", text = "New", variant = BadgeVariant.Success },
	},
	{ id = "option-2", text = "Option 2" },
}

local DISABLED_ITEM_ITEMS: { MenuItem } = {
	{ id = "option-1", text = "Option 1" },
	{ id = "option-2", text = "Option 2", isDisabled = true },
	{ id = "option-3", text = "Option 3" },
}

local SWEEP_CELL_WIDTH = 220
local OVERFLOW_ITEM_COUNT = 12
local OVERFLOW_MAX_HEIGHT_TIGHT = 96
local OVERFLOW_MAX_HEIGHT = 160

local function makeItems(count: number): { MenuItem }
	local items: { MenuItem } = {}
	for index = 1, count do
		table.insert(items, {
			id = `item-{index}`,
			text = `Option {index}`,
		})
	end
	return items
end

local function itemsForPreset(preset: string): MenuItems
	if preset == ITEMS_PRESET_GROUPED then
		return GROUPED_ITEMS
	end
	if preset == ITEMS_PRESET_NESTED then
		return NESTED_ITEMS
	end
	return SAMPLE_ITEMS
end

-- StoryControls cannot hold a UDim, so Playground stores the offset and the story maps
-- 0 to an omitted width (hug). The Sizing sweep uses the same list.
local WIDTH_OFFSET_ORDER: { number } = { 0, 180, 240 }

local PLACEMENT_CELL_WIDTH = 96
local PLACEMENT_LABEL_WIDTH = 72

local function widthFromOffset(offset: number): UDim?
	return if offset > 0 then UDim.new(0, offset) else nil
end

local function itemsBySize(items: MenuItems, width: UDim?): { React.ReactNode }
	return Dash.map(SIZE_ORDER, function(size: InputSize): React.ReactNode
		return React.createElement(MenuTarget, {
			items = items,
			size = size,
			width = width,
		})
	end)
end

local function PlaygroundStory(props: {
	controls: {
		size: InputSize,
		side: PopoverSide,
		align: PopoverAlign,
		widthOffset: number,
		maxHeight: number,
		items: string,
		anchorSource: AnchorSource,
	},
}): React.ReactNode
	local controls = props.controls
	local isOpen, setIsOpen = React.useState(false)
	local anchorRef = React.useRef(nil :: GuiObject?)
	local items = itemsForPreset(controls.items)
	local width = widthFromOffset(controls.widthOffset)
	local maxHeight = if controls.maxHeight > 0 then controls.maxHeight else nil
	local useExternalRef = controls.anchorSource == "ExternalRef"

	local menu = React.createElement(
		Menu,
		{
			isOpen = isOpen,
			items = items,
			size = controls.size,
			side = controls.side,
			align = controls.align,
			width = width,
			maxHeight = maxHeight,
			anchorRef = if useExternalRef then anchorRef else nil,
			onPressedOutside = function()
				setIsOpen(false)
			end,
			onActivated = function()
				setIsOpen(false)
			end,
		},
		if useExternalRef
			then nil
			else {
				Anchor = React.createElement(Anchor, {
					onActivated = function()
						setIsOpen(not isOpen)
					end,
				}),
			}
	)

	return React.createElement(View, {
		tag = PLAYGROUND_TAG,
		Size = PLAYGROUND_FRAME_SIZE,
	}, {
		ExternalAnchor = if useExternalRef
			then React.createElement(Anchor, {
				LayoutOrder = 1,
				ref = anchorRef,
				onActivated = function()
					setIsOpen(not isOpen)
				end,
			})
			else nil,
		Menu = React.createElement(View, {
			LayoutOrder = 2,
			tag = "auto-xy",
		}, menu),
	})
end

local function SizingStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = size,
				}, {
					Target = React.createElement(MenuTarget, {
						LayoutOrder = 1,
						size = size,
					}),
				})
			end)
		),
		Width = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Width",
			},
			Dash.map(WIDTH_OFFSET_ORDER, function(offset, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = if offset == 0 then "Default" else tostring(offset),
				}, {
					Target = React.createElement(MenuTarget, {
						LayoutOrder = 1,
						width = widthFromOffset(offset),
					}),
				})
			end)
		),
	})
end

local function PlacementStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Grid = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Side",
			contentTag = "col auto-xy",
		}, {
			Examples = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = true,
				labelColumnWidth = PLACEMENT_LABEL_WIDTH,
				columnHeaders = headerLabels(ALIGN_ORDER),
				cellColumnWidth = PLACEMENT_CELL_WIDTH,
				rows = Dash.map(SIDE_ORDER, function(side)
					return {
						label = matrixLabel(side),
						cells = Dash.map(ALIGN_ORDER, function(align)
							return React.createElement(MenuTarget, {
								side = side,
								align = align,
								anchorSize = TALL_ANCHOR_SIZE,
							})
						end),
					}
				end),
			}),
		}),
	})
end

local function ControlledStory(): React.ReactNode
	local isOpen, setIsOpen = React.useState(false)
	local selectedId, setSelectedId = React.useState("option-1")

	local items: { MenuItem } = {
		{ id = "option-1", text = "Option 1", isChecked = selectedId == "option-1" },
		{ id = "option-2", text = "Option 2", isChecked = selectedId == "option-2" },
		{ id = "option-3", text = "Option 3", isChecked = selectedId == "option-3" },
	}

	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		OpenClose = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Open, close, and dismiss",
			contentTag = MATRIX_SECTION_TAG,
		}, {
			Stage = React.createElement(MenuStage, {
				LayoutOrder = 1,
				hasOpenStateLabel = true,
			}),
		}),
		Selection = React.createElement(Section, {
			LayoutOrder = 2,
			name = "Selection",
		}, {
			Target = React.createElement(Menu, {
				LayoutOrder = 1,
				isOpen = isOpen,
				items = items,
				onPressedOutside = function()
					setIsOpen(false)
				end,
				onActivated = function(id)
					setSelectedId(id :: string)
				end,
			}, {
				Anchor = React.createElement(Anchor, {
					onActivated = function()
						setIsOpen(not isOpen)
					end,
				}),
			}),
		}),
	})
end

local function NestedSubmenusStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Nested = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Nested submenus",
		}, {
			Target = React.createElement(MenuTarget, {
				LayoutOrder = 1,
				items = NESTED_ITEMS,
			}),
		}),
	})
end

local function ContentStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Leading = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Leading",
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = SWEEP_CELL_WIDTH,
			rows = {
				{
					label = matrixLabel("Icon"),
					cells = itemsBySize(LEADING_ICON_ITEMS),
				},
				{
					label = matrixLabel("Avatar"),
					cells = itemsBySize(LEADING_AVATAR_ITEMS),
				},
			},
		}),
		Trailing = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Trailing",
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = SWEEP_CELL_WIDTH,
			rows = {
				{
					label = matrixLabel("Hint"),
					cells = itemsBySize(TRAILING_HINT_ITEMS),
				},
				{
					label = matrixLabel("Badge"),
					cells = itemsBySize(TRAILING_BADGE_ITEMS),
				},
			},
		}),
		DisabledItem = React.createElement(Section, {
			LayoutOrder = 3,
			name = "Disabled option",
		}, {
			Target = React.createElement(MenuTarget, {
				LayoutOrder = 1,
				items = DISABLED_ITEM_ITEMS,
			}),
		}),
		Groups = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Groups",
			contentTag = "col auto-xy",
		}, {
			Grid = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = SWEEP_CELL_WIDTH,
				rows = {
					{ cells = itemsBySize(GROUPED_ITEMS) },
				},
			}),
		}),
		Truncation = React.createElement(Section, {
			LayoutOrder = 5,
			name = "Truncation",
			contentTag = "col auto-xy",
		}, {
			Grid = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = false,
				columnHeaders = SIZE_HEADERS,
				cellColumnWidth = SWEEP_CELL_WIDTH,
				rows = {
					{ cells = itemsBySize(LONG_ITEMS, UDim.new(0, SWEEP_CELL_WIDTH)) },
				},
			}),
		}),
		Overflow = React.createElement(Section, {
			LayoutOrder = 6,
			name = "Overflow",
		}, {
			Tight = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = `maxHeight = {OVERFLOW_MAX_HEIGHT_TIGHT}`,
			}, {
				Target = React.createElement(MenuTarget, {
					LayoutOrder = 1,
					items = makeItems(OVERFLOW_ITEM_COUNT),
					maxHeight = OVERFLOW_MAX_HEIGHT_TIGHT,
				}),
			}),
			Roomy = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = `maxHeight = {OVERFLOW_MAX_HEIGHT}`,
			}, {
				Target = React.createElement(MenuTarget, {
					LayoutOrder = 1,
					items = makeItems(OVERFLOW_ITEM_COUNT),
					maxHeight = OVERFLOW_MAX_HEIGHT,
				}),
			}),
		}),
	})
end

return {
	summary = "Caller-driven popover menu. Open, close, and dismiss are reviewed in Controlled component; press each matrix anchor to sign off the open panel.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Placement",
			story = PlacementStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Nested submenus",
			story = NestedSubmenusStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		size = SIZE_ORDER,
		side = SIDE_ORDER,
		align = ALIGN_ORDER,
		widthOffset = WIDTH_OFFSET_ORDER,
		maxHeight = 0,
		items = ITEMS_PRESET_ORDER,
		anchorSource = ANCHOR_SOURCE_ORDER,
	},
}
