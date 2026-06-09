local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Dash = require(Packages.Dash)

local Dropdown = require(Foundation.Components.Dropdown)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local InputVariant = require(Foundation.Enums.InputVariant)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

type DropdownItem = Dropdown.DropdownItem
type DropdownItems = Dropdown.DropdownItems
type ItemId = Types.ItemId
type InputSize = InputSize.InputSize
type InputVariant = InputVariant.InputVariant

type Controls = {
	size: InputSize,
	variant: InputVariant,
	isDisabled: boolean,
	hasError: boolean,
	hasIcon: boolean,
	hasPlaceholder: boolean,
	hasHint: boolean,
	label: string,
	placeholder: string,
	hint: string,
	width: number,
}

local function getItems(hasIcon: boolean?): { DropdownItem }
	local icon = if hasIcon then "icons/common/safety" else nil
	return {
		{ id = "A", text = "Item A", icon = icon },
		{ id = "B", text = "Item B", isDisabled = true },
		{
			id = "G",
			text = "Long text item that should be truncated in the dropdown menu",
		},
		{ id = "C", text = "Item C", icon = icon },
	}
end

-- A Dropdown that owns its own selection state, used by all showcase stories
-- so we don't have to repeat useState plumbing for each example.
type DemoDropdownProps = {
	label: string,
	size: InputSize?,
	variant: InputVariant?,
	isDisabled: boolean?,
	hasError: boolean?,
	hasIcon: boolean?,
	placeholder: string?,
	hint: string?,
	items: DropdownItems?,
	width: UDim?,
	maxHeight: number?,
}

local function DemoDropdown(props: DemoDropdownProps): React.ReactNode
	local id, setId = React.useState(nil :: ItemId?)
	return React.createElement(Dropdown.Root, {
		value = id,
		placeholder = props.placeholder,
		onItemChanged = function(itemId: ItemId)
			setId(itemId)
		end,
		hasError = props.hasError,
		isDisabled = props.isDisabled,
		items = if props.items then props.items else getItems(props.hasIcon),
		size = props.size,
		variant = if Flags.FoundationDropdownVariant then props.variant else nil :: never,
		label = props.label,
		hint = props.hint,
		width = props.width,
		maxHeight = props.maxHeight,
	})
end

local function Label(text: string, layoutOrder: number)
	return React.createElement(Text, {
		Text = text,
		tag = "auto-xy text-label-medium content-muted",
		LayoutOrder = layoutOrder,
	})
end

local function Section(
	label: string,
	layoutOrder: number,
	containerTag: string,
	children: { [string]: React.ReactNode }
)
	return React.createElement(View, {
		tag = "col gap-xsmall " .. containerTag,
		LayoutOrder = layoutOrder,
	}, {
		Label = Label(label, 1),
		Content = React.createElement(View, {
			tag = containerTag,
			LayoutOrder = 2,
		}, children),
	})
end

local function PlaygroundStory(props: { controls: Controls }): React.ReactNode
	local controls = props.controls
	return React.createElement(DemoDropdown, {
		label = controls.label,
		size = controls.size,
		variant = controls.variant,
		isDisabled = controls.isDisabled,
		hasError = controls.hasError,
		hasIcon = controls.hasIcon,
		placeholder = if controls.hasPlaceholder then controls.placeholder else nil,
		hint = if controls.hasHint then controls.hint else nil,
		width = UDim.new(0, controls.width),
	})
end

local SHOWCASE_WIDTH = UDim.new(0, 220)

local function SizesStory(_props: { controls: Controls }): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, {
		Large = Section("Large", 1, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				size = InputSize.Large,
				placeholder = "Select an option",
				width = SHOWCASE_WIDTH,
			}),
		}),
		Medium = Section("Medium", 2, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				size = InputSize.Medium,
				placeholder = "Select an option",
				width = SHOWCASE_WIDTH,
			}),
		}),
		Small = Section("Small", 3, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				size = InputSize.Small,
				placeholder = "Select an option",
				width = SHOWCASE_WIDTH,
			}),
		}),
		XSmall = Section("XSmall", 4, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				size = InputSize.XSmall,
				placeholder = "Select an option",
				width = SHOWCASE_WIDTH,
			}),
		}),
	})
end

local function VariantsStory(_props: { controls: Controls }): React.ReactNode
	if not Flags.FoundationDropdownVariant then
		return React.createElement(Text, {
			Text = "Enable FoundationDropdownVariant to preview Dropdown variants.",
			tag = "auto-xy text-body-medium content-muted",
		})
	end
	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, {
		Standard = Section("Standard", 1, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				variant = InputVariant.Standard,
				placeholder = "Select an option",
				width = SHOWCASE_WIDTH,
			}),
		}),
		Contrast = Section("Contrast", 2, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				variant = InputVariant.Contrast,
				placeholder = "Select an option",
				width = SHOWCASE_WIDTH,
			}),
		}),
		Utility = Section("Utility", 3, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				variant = InputVariant.Utility,
				placeholder = "Select an option",
				width = SHOWCASE_WIDTH,
			}),
		}),
	})
end

local function StatesStory(_props: { controls: Controls }): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, {
		Default = Section("Default", 1, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				placeholder = "Select an option",
				width = SHOWCASE_WIDTH,
			}),
		}),
		WithHint = Section("With hint", 2, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				placeholder = "Select an option",
				hint = "Pick wisely",
				width = SHOWCASE_WIDTH,
			}),
		}),
		Disabled = Section("Disabled", 3, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				placeholder = "Select an option",
				isDisabled = true,
				width = SHOWCASE_WIDTH,
			}),
		}),
		Error = Section("Error", 4, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				placeholder = "Select an option",
				hasError = true,
				hint = "This field is required",
				width = SHOWCASE_WIDTH,
			}),
		}),
	})
end

local function WidthsStory(_props: { controls: Controls }): React.ReactNode
	local narrowItems: DropdownItems = {
		{ id = "A", text = "Item A" },
		{ id = "B", text = "Item B", isDisabled = true },
	}
	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, {
		NarrowNarrow = Section("Narrow dropdown — narrow items", 1, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				placeholder = "Pick one",
				width = UDim.new(0, 150),
				items = narrowItems,
			}),
		}),
		NarrowWide = Section("Narrow dropdown — wide items (truncate)", 2, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				placeholder = "Pick one",
				width = UDim.new(0, 150),
			}),
		}),
		Fill = Section("Fill width — narrow items", 3, "size-full-0 auto-y", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Label",
				placeholder = "Pick one",
				width = UDim.new(1, 0),
				items = narrowItems,
			}),
		}),
	})
end

local function ItemGroupsStory(_props: { controls: Controls }): React.ReactNode
	local groupedItems: DropdownItems = {
		{
			title = "First title" :: string?,
			items = {
				{ id = "a1", icon = "icons/common/robux", text = "Alpha 1" } :: DropdownItem,
				{ id = "a2", text = "Alpha 2" },
			},
		},
		{
			items = {
				{ id = "b1", text = "Beta 1" },
				{ id = "b2", isDisabled = true, text = "Beta 2 (disabled)" },
			},
		},
		{
			items = {
				{ id = "c1", text = "Untitled group item" },
			},
		},
	}
	return React.createElement(DemoDropdown, {
		label = "With item groups",
		placeholder = "Select an option",
		width = SHOWCASE_WIDTH,
		items = groupedItems,
	})
end

local function OverflowStory(_props: { controls: Controls }): React.ReactNode
	local items = React.useMemo(function()
		local tempItems = {}
		for i = 1, 100 do
			local itemId = tostring(i)
			table.insert(tempItems, {
				id = itemId,
				icon = "icons/common/robux",
				text = `Item {itemId}`,
				isDisabled = i % 7 == 0,
			})
		end
		return tempItems :: { DropdownItem }
	end, {})

	return React.createElement(DemoDropdown, {
		label = "Overflow",
		placeholder = "Choose a value",
		width = SHOWCASE_WIDTH,
		maxHeight = 500,
		items = items,
	})
end

return {
	summary = "Dropdown",
	stories = {
		{ name = "Playground", story = PlaygroundStory } :: any,
		{ name = "Sizes", story = SizesStory },
		{ name = "Variants", story = VariantsStory },
		{ name = "States", story = StatesStory },
		{ name = "Widths", story = WidthsStory },
		{ name = "Item groups", story = ItemGroupsStory },
		{ name = "Overflow", story = OverflowStory },
	},
	controls = {
		size = Dash.values(InputSize),
		variant = if Flags.FoundationDropdownVariant then Dash.values(InputVariant) else nil :: never,
		isDisabled = false,
		hasError = false,
		hasIcon = true,
		hasPlaceholder = false,
		hasHint = false,
		label = "Dropdown Label",
		placeholder = "Choose an option",
		hint = "Optional hint text",
		width = 400,
	},
}
