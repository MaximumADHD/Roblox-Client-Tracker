local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
local BadgeVariant = require(Foundation.Enums.BadgeVariant)
local Dropdown = require(Foundation.Components.Dropdown)
local InputSize = require(Foundation.Enums.InputSize)
local InputVariant = require(Foundation.Enums.InputVariant)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local IconName = BuilderIcons.Icon
local LabeledCell = StorySection.LabeledCell
local MatrixSection = StorySection.MatrixSection
local Section = StorySection.Section
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel
local PAGE_TAG = `col gap-xxlarge {StorySection.STORY_PAGE_TAG}`
local SINGLE_PAGE_TAG = `col {StorySection.STORY_PAGE_TAG}`
local SWEEP_ROW_PAGE_TAG = `row wrap align-y-top gap-large {StorySection.STORY_PAGE_TAG}`

type DropdownItem = Dropdown.DropdownItem
type DropdownItems = Dropdown.DropdownItems
type DropdownProps = Dropdown.DropdownProps
type InputSize = InputSize.InputSize
type InputVariant = InputVariant.InputVariant
type ItemId = Types.ItemId

type DropdownElementProps = DropdownProps & { key: string? }
type ControlOption<T> = T | typeof(React.None)

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local SIZE_HEADERS: { string } = Dash.map(SIZE_ORDER, function(size: InputSize): string
	return size
end)

local VARIANT_ORDER: { InputVariant } = {
	InputVariant.Standard,
	InputVariant.Contrast,
	InputVariant.Utility,
}

local LABEL_TEXT = "Label"
local HINT_TEXT = "Hint"
local PLACEHOLDER_TEXT = "Placeholder"

local DEFAULT_ITEMS: { DropdownItem } = {
	{ id = "option-1", text = "Option 1" },
	{ id = "option-2", text = "Option 2" },
}

local LONG_ITEMS: { DropdownItem } = {
	{
		id = "long",
		text = "This is a longer label that should truncate on the closed field and in the open menu",
	},
	{ id = "option-1", text = "Option 1" },
	{ id = "option-2", text = "Option 2" },
}

--[[
	`icon` is the older spelling of `leading`: BaseMenuItem resolves `leading or icon`, and a
	bare string on either becomes an icon accessory. One cell per spelling would render the
	same row twice, so the icon arm below is authored as `leading`.
]]
local LEADING_ICON_ITEMS: { DropdownItem } = {
	{ id = "option-1", text = "Option 1", leading = IconName.Pencil },
	{ id = "option-2", text = "Option 2", leading = IconName.TwoStackedSquares },
}

local LEADING_AVATAR_ITEMS: { DropdownItem } = {
	{ id = "option-1", text = "Option 1", leading = { type = AccessoryType.Avatar, userId = 1 } },
	{ id = "option-2", text = "Option 2", leading = { type = AccessoryType.Avatar, userId = 156 } },
}

local TRAILING_HINT_ITEMS: { DropdownItem } = {
	{ id = "option-1", text = "Option 1", trailing = { type = "Hint", text = "⌘E" } },
	{ id = "option-2", text = "Option 2", trailing = { type = "Hint", text = "⌘C" } },
}

local TRAILING_BADGE_ITEMS: { DropdownItem } = {
	{
		id = "option-1",
		text = "Option 1",
		trailing = { type = "Badge", text = "New", variant = BadgeVariant.Success },
	},
	{ id = "option-2", text = "Option 2" },
}

local DISABLED_ITEM_ITEMS: { DropdownItem } = {
	{ id = "option-1", text = "Option 1" },
	{ id = "option-2", text = "Option 2", isDisabled = true },
	{ id = "option-3", text = "Option 3" },
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
} :: DropdownItems

local VALUE_CONTROL_OPTIONS: { ControlOption<string> } = {
	React.None,
	"option-1",
	"option-2",
}

local SWEEP_CELL_WIDTH = 220
local WIDTH_FRAME_WIDTH = 600
local OVERFLOW_ITEM_COUNT = 12
local OVERFLOW_MAX_HEIGHT_TIGHT = 96
local OVERFLOW_MAX_HEIGHT = 160
local SCROLL_TO_SELECTION_ITEM_COUNT = 20
local SCROLL_TO_SELECTION_MAX_HEIGHT = 120
local SCROLL_TO_SELECTION_ID = "item-12"

local WIDTH_EXAMPLES: { { label: string, width: UDim?, hugWidth: boolean? } } = {
	{ label = "Default", hugWidth = true },
	{ label = "Fill — UDim.new(1, 0)", width = UDim.new(1, 0) },
	{ label = "Constrained — UDim.new(0, 150)", width = UDim.new(0, 150) },
}

local function noop() end

local function makeItems(count: number): { DropdownItem }
	local items: { DropdownItem } = {}
	for index = 1, count do
		table.insert(items, {
			id = `item-{index}`,
			text = `Option {index}`,
		})
	end
	return items
end

local SCROLL_TO_SELECTION_ITEMS = makeItems(SCROLL_TO_SELECTION_ITEM_COUNT)

--[[
	Centers the selected item when the menu opens. The scrolling frame only mounts while
	the menu is open, so we scroll from the ref callback and wait until the menu is
	measured and clamped (canvas taller than the window). Before that the window equals
	the full content height and the centering math collapses to the top. Same approach as
	DateTimePicker's month/year dropdowns.
]]
local function useScrollToSelectedRef(items: { DropdownItem }, selectedId: ItemId)
	local connections = React.useRef(nil :: { RBXScriptConnection }?)
	local disconnect = React.useCallback(function()
		if connections.current then
			for _, connection in connections.current do
				connection:Disconnect()
			end
			connections.current = nil
		end
	end, {})

	local refCallback = React.useCallback(function(frame: ScrollingFrame?)
		disconnect()
		if not frame then
			return
		end

		local scrollingFrame = frame
		local function scrollToSelected(): boolean
			local count = #items
			local canvasHeight = scrollingFrame.AbsoluteCanvasSize.Y
			local windowHeight = scrollingFrame.AbsoluteWindowSize.Y
			if count == 0 or windowHeight <= 0 or canvasHeight <= windowHeight then
				return false
			end
			local rowHeight = canvasHeight / count
			local targetIndex = 0
			for index, item in items do
				if item.id == selectedId then
					targetIndex = index - 1
					break
				end
			end
			local centeredY = targetIndex * rowHeight - windowHeight / 2 + rowHeight / 2
			scrollingFrame.CanvasPosition = Vector2.new(0, math.clamp(centeredY, 0, canvasHeight - windowHeight))
			return true
		end

		if not scrollToSelected() then
			local function onSizeChanged()
				if scrollToSelected() then
					disconnect()
				end
			end
			connections.current = {
				scrollingFrame:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(onSizeChanged),
				scrollingFrame:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(onSizeChanged),
			}
		end
	end, { items, selectedId, disconnect } :: { unknown })

	React.useEffect(function()
		return disconnect
	end, { disconnect })

	return refCallback
end

type StaticDropdownProps = {
	label: string?,
	placeholder: string?,
	hint: string?,
	items: DropdownItems?,
	value: ItemId?,
	size: InputSize?,
	variant: InputVariant?,
	width: UDim?,
	maxHeight: number?,
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
	hasError: boolean?,
	isDisabled: boolean?,
	hugWidth: boolean?,
	LayoutOrder: number?,
}

local function StaticDropdown(props: StaticDropdownProps): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return React.createElement(
		Dropdown.Root,
		{
			key = tostring(remountKey),
			LayoutOrder = props.LayoutOrder,
			label = props.label or "",
			placeholder = if props.placeholder ~= nil then props.placeholder else PLACEHOLDER_TEXT,
			hint = props.hint,
			items = props.items or DEFAULT_ITEMS,
			value = props.value,
			onItemChanged = function()
				setRemountKey(function(key)
					return key + 1
				end)
			end,
			size = props.size,
			variant = props.variant,
			width = if props.hugWidth then nil else props.width or UDim.new(0, SWEEP_CELL_WIDTH),
			maxHeight = props.maxHeight,
			scrollingFrameRef = props.scrollingFrameRef,
			hasError = props.hasError,
			isDisabled = props.isDisabled,
		} :: DropdownElementProps
	)
end

local function itemsBySize(items: DropdownItems, value: ItemId?): { React.ReactNode }
	return Dash.map(SIZE_ORDER, function(size: InputSize): React.ReactNode
		return React.createElement(StaticDropdown, {
			items = items,
			value = value,
			size = size,
		})
	end)
end

local function WidthFrame(props: { LayoutOrder: number?, children: React.ReactNode? }): React.ReactNode
	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "col size-full-0 auto-y padding-medium radius-medium bg-surface-100",
		Size = UDim2.fromOffset(WIDTH_FRAME_WIDTH, 0),
	}, props.children)
end

local function PlaygroundStory(props: {
	controls: {
		label: string,
		placeholder: string,
		hint: string,
		size: InputSize,
		variant: InputVariant,
		widthOffset: number,
		maxHeight: number,
		value: ControlOption<string>,
		hasError: boolean,
		isDisabled: boolean,
	},
}): React.ReactNode
	local controls = props.controls

	return React.createElement(View, {
		tag = SINGLE_PAGE_TAG,
	}, {
		Dropdown = React.createElement(Dropdown.Root, {
			LayoutOrder = 1,
			label = controls.label,
			placeholder = if controls.placeholder == "" then nil else controls.placeholder,
			hint = if controls.hint == "" then nil else controls.hint,
			items = DEFAULT_ITEMS,
			value = if controls.value == React.None then nil else controls.value,
			onItemChanged = noop,
			size = controls.size,
			variant = controls.variant,
			width = UDim.new(0, controls.widthOffset),
			maxHeight = if controls.maxHeight > 0 then controls.maxHeight else nil,
			hasError = controls.hasError,
			isDisabled = controls.isDisabled,
		}),
	})
end

local function VariantsStory(): React.ReactNode
	return React.createElement(
		View,
		{
			tag = SWEEP_ROW_PAGE_TAG,
		},
		Dash.map(VARIANT_ORDER, function(variant, index)
			return React.createElement(LabeledCell, {
				LayoutOrder = index,
				label = variant,
			}, {
				Dropdown = React.createElement(StaticDropdown, {
					LayoutOrder = 1,
					variant = variant,
				}),
			})
		end)
	)
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
					Dropdown = React.createElement(StaticDropdown, {
						LayoutOrder = 1,
						label = LABEL_TEXT,
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
				contentTag = "col gap-large auto-xy",
			},
			Dash.map(WIDTH_EXAMPLES, function(example, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = example.label,
				}, {
					Frame = React.createElement(WidthFrame, {
						LayoutOrder = 1,
					}, {
						Dropdown = React.createElement(StaticDropdown, {
							LayoutOrder = 1,
							width = example.width,
							hugWidth = example.hugWidth,
						}),
					}),
				})
			end)
		),
	})
end

local function StatesStory(): React.ReactNode
	return React.createElement(View, {
		tag = SWEEP_ROW_PAGE_TAG,
	}, {
		Disabled = React.createElement(LabeledCell, {
			LayoutOrder = 1,
			label = "isDisabled",
		}, {
			Dropdown = React.createElement(StaticDropdown, {
				LayoutOrder = 1,
				label = LABEL_TEXT,
				isDisabled = true,
			}),
		}),
		Hint = React.createElement(LabeledCell, {
			LayoutOrder = 2,
			label = "hint",
		}, {
			Dropdown = React.createElement(StaticDropdown, {
				LayoutOrder = 1,
				label = LABEL_TEXT,
				hint = HINT_TEXT,
			}),
		}),
		Error = React.createElement(LabeledCell, {
			LayoutOrder = 3,
			label = "hasError",
		}, {
			Dropdown = React.createElement(StaticDropdown, {
				LayoutOrder = 1,
				label = LABEL_TEXT,
				hint = HINT_TEXT,
				hasError = true,
			}),
		}),
	})
end

local function ControlledStory(): React.ReactNode
	local value, setValue = React.useState(nil :: ItemId?)

	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		OpenClose = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Open, close, and dismiss",
		}, {
			Dropdown = React.createElement(Dropdown.Root, {
				LayoutOrder = 1,
				label = LABEL_TEXT,
				placeholder = PLACEHOLDER_TEXT,
				items = DEFAULT_ITEMS,
				value = value,
				onItemChanged = setValue,
				width = UDim.new(0, SWEEP_CELL_WIDTH),
			}),
		}),
	})
end

local function ScrollToSelectionStory(): React.ReactNode
	local selectedId, setSelectedId = React.useState(SCROLL_TO_SELECTION_ID :: ItemId)
	local scrollingFrameRef = useScrollToSelectedRef(SCROLL_TO_SELECTION_ITEMS, selectedId)

	return React.createElement(View, {
		tag = SINGLE_PAGE_TAG,
	}, {
		Dropdown = React.createElement(Dropdown.Root, {
			LayoutOrder = 1,
			label = LABEL_TEXT,
			placeholder = PLACEHOLDER_TEXT,
			items = SCROLL_TO_SELECTION_ITEMS,
			value = selectedId,
			onItemChanged = setSelectedId,
			width = UDim.new(0, SWEEP_CELL_WIDTH),
			maxHeight = SCROLL_TO_SELECTION_MAX_HEIGHT,
			scrollingFrameRef = scrollingFrameRef,
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
			Dropdown = React.createElement(StaticDropdown, {
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
					{ cells = itemsBySize(LONG_ITEMS, "long") },
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
				Dropdown = React.createElement(StaticDropdown, {
					LayoutOrder = 1,
					items = makeItems(OVERFLOW_ITEM_COUNT),
					maxHeight = OVERFLOW_MAX_HEIGHT_TIGHT,
				}),
			}),
			Roomy = React.createElement(LabeledCell, {
				LayoutOrder = 2,
				label = `maxHeight = {OVERFLOW_MAX_HEIGHT}`,
			}, {
				Dropdown = React.createElement(StaticDropdown, {
					LayoutOrder = 1,
					items = makeItems(OVERFLOW_ITEM_COUNT),
					maxHeight = OVERFLOW_MAX_HEIGHT,
				}),
			}),
		}),
	})
end

return {
	summary = "Single-choice field that opens a menu. Dropdown owns isOpen internally; the open panel is signed off in Controlled component.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Variants",
			story = VariantsStory,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "States",
			story = StatesStory,
		},
		{
			name = "Controlled component",
			story = ControlledStory,
		},
		{
			name = "Scroll to selection",
			story = ScrollToSelectionStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		label = LABEL_TEXT,
		placeholder = PLACEHOLDER_TEXT,
		hint = "",
		size = SIZE_ORDER,
		variant = VARIANT_ORDER,
		widthOffset = 400,
		maxHeight = 0,
		value = VALUE_CONTROL_OPTIONS,
		hasError = false,
		isDisabled = false,
	},
}
