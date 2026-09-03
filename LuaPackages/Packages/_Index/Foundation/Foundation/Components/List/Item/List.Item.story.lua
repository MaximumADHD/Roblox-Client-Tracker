local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AccessoryType = require(Foundation.Enums.AccessoryType)
type AccessoryType = AccessoryType.AccessoryType

local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local InputSize = require(Foundation.Enums.InputSize)
local ListItemInputType = require(Foundation.Enums.ListItemInputType)

local List = require(Foundation.Components.List)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type InputSize = InputSize.InputSize
type IconSize = IconSize.IconSize
type ListItemInputType = ListItemInputType.ListItemInputType

local IconName = BuilderIcons.Icon

local INPUT_SIZE_TO_ICON_SIZE: { [InputSize]: IconSize } = {
	[InputSize.XSmall] = IconSize.XSmall,
	[InputSize.Small] = IconSize.Small,
	[InputSize.Medium] = IconSize.Medium,
	[InputSize.Large] = IconSize.Large,
}

local function CheckAccessory(props: { size: InputSize }): React.ReactNode
	return React.createElement(Icon, {
		name = IconName.Check,
		size = INPUT_SIZE_TO_ICON_SIZE[props.size],
	})
end

local LEADING_OPTIONS: { any } = {}
for _, example in StoryIcons.ICON_TYPE_EXAMPLES do
	table.insert(LEADING_OPTIONS, example.name)
end
table.insert(LEADING_OPTIONS, AccessoryType.Avatar)
table.insert(LEADING_OPTIONS, AccessoryType.Media)
table.insert(LEADING_OPTIONS, React.None)

local SIZE_ORDER: { InputSize } = {
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local INPUT_TYPE_EXAMPLES: { { title: string, description: string, inputType: ListItemInputType? } } = {
	{ title = "Chevron", description = "Default trailing accessory for a tappable row", inputType = nil },
	{ title = "Checkbox", description = "Toggles a checkbox", inputType = ListItemInputType.Checkbox },
	{ title = "Toggle", description = "Toggles a switch", inputType = ListItemInputType.Toggle },
	{ title = "Radio", description = "Selects a radio input", inputType = ListItemInputType.Radio },
	{ title = "None", description = "No input accessory", inputType = ListItemInputType.None },
}

local SELECTION_OPTIONS = { "Private", "Friends", "Public" }

-- Returns an onActivated handler that logs so it's obvious in the output when a row is activated.
local function logActivated(label: string)
	return function()
		print(`ListItem activated: {label}`)
	end
end

local function resolveLeading(leading: any): any
	if leading == AccessoryType.Avatar then
		return { type = AccessoryType.Avatar, userId = 24813339 }
	elseif leading == AccessoryType.Media then
		return { iconName = "rbxthumb://type=GameIcon&id=1818&w=150&h=150" }
	elseif leading ~= React.None then
		return leading
	end
	return nil
end

local function InputTypeItem(props: {
	LayoutOrder: number,
	title: string,
	description: string?,
	inputType: ListItemInputType?,
})
	local isChecked, setIsChecked = React.useState(false)

	local function handler()
		print(`ListItem activated: {props.title}`)
		setIsChecked(function(prev)
			return not prev
		end)
	end

	local itemProps: any = {
		title = props.title,
		description = props.description,
		LayoutOrder = props.LayoutOrder,
	}

	itemProps.onActivated = handler
	-- The Chevron example passes no explicit `input`: a tappable row defaults to a chevron.
	itemProps.input = if props.inputType then { type = props.inputType, isChecked = isChecked } else nil

	return React.createElement(List.Item, itemProps)
end

local function PlaygroundStory(props: {
	controls: {
		leading: any,
		title: string,
		metadata: string,
		description: string,
		size: InputSize,
		inputType: ListItemInputType | "",
		onActivated: boolean,
		isChecked: boolean,
	},
}): React.ReactNode
	local controls = props.controls
	local isChecked, setIsChecked = React.useState(controls.isChecked)

	-- Keep local checked state in sync when the control changes.
	React.useEffect(function()
		setIsChecked(controls.isChecked)
	end, { controls.isChecked })

	local itemProps: any = {
		leading = resolveLeading(controls.leading),
		title = {
			title = if controls.title == "" then nil else controls.title,
			metadata = if controls.metadata == "" then nil else controls.metadata,
		},
		description = if controls.description == "" then nil else controls.description,
		LayoutOrder = 1,
	}

	-- The main use case: the whole item is tappable via `onActivated`. The trailing accessory is
	-- chosen independently via `inputType` and reflects the checked state; tapping the row (or its
	-- input) runs `onActivated`.
	itemProps.onActivated = if controls.onActivated
		then function()
			print("ListItem activated")
			setIsChecked(function(prev)
				return not prev
			end)
		end
		else nil
	itemProps.input = if controls.inputType ~= "" then { type = controls.inputType, isChecked = isChecked } else nil

	return React.createElement(List.Root, {
		size = controls.size,
	}, {
		Item = React.createElement(List.Item, itemProps),
	})
end

local function InputTypesStory(props: { controls: { size: InputSize } }): React.ReactNode
	local items: { [string]: React.ReactNode } = {}
	for index, example in INPUT_TYPE_EXAMPLES do
		items[example.title] = React.createElement(InputTypeItem, {
			LayoutOrder = index,
			title = example.title,
			description = example.description,
			inputType = example.inputType,
		})
	end

	return React.createElement(List.Root, {
		size = props.controls.size,
	}, items)
end

local function SelectionStory(props: { controls: { size: InputSize } }): React.ReactNode
	local selected, setSelected = React.useState(SELECTION_OPTIONS[1])
	local size: InputSize = props.controls.size :: InputSize

	local items: { [string]: React.ReactNode } = {}
	for index, option in SELECTION_OPTIONS do
		local isSelected = selected == option
		local itemProps: any = {
			title = option,
			LayoutOrder = index,
		}

		-- Tapping the row selects it; the selected row shows a Check as a clickable trailing
		-- accessory (the whole row is activatable, with no chevron).
		itemProps.onActivated = function()
			print(`ListItem selected: {option}`)
			setSelected(option)
		end
		itemProps.input = ListItemInputType.None
		itemProps.trailing = if isSelected then React.createElement(CheckAccessory, { size = size }) else nil

		items[option] = React.createElement(List.Item, itemProps)
	end

	return React.createElement(List.Root, {
		size = size,
	}, items)
end

local function LeadingAccessoriesStory(props: { controls: { size: InputSize } }): React.ReactNode
	local items: { [string]: React.ReactNode } = {}
	local LayoutOrder = 0

	for _, iconExample in StoryIcons.ICON_TYPE_EXAMPLES do
		LayoutOrder += 1
		items[iconExample.subtitle] = React.createElement(List.Item, {
			leading = iconExample.name,
			title = iconExample.title,
			description = iconExample.subtitle,
			onActivated = logActivated(iconExample.title),
			input = ListItemInputType.Chevron,
			LayoutOrder = LayoutOrder,
		})
	end

	LayoutOrder += 1
	items.Avatar = React.createElement(List.Item, {
		leading = { type = AccessoryType.Avatar, userId = 24813339 },
		title = "Avatar accessory",
		description = "leading = { type = Avatar, userId }",
		onActivated = logActivated("Avatar accessory"),
		input = ListItemInputType.Chevron,
		LayoutOrder = LayoutOrder,
	})

	LayoutOrder += 1
	items.Media = React.createElement(List.Item, {
		leading = { iconName = "rbxthumb://type=GameIcon&id=1818&w=150&h=150" },
		title = "Media accessory",
		description = "leading = { iconName = rbxthumb://... }",
		onActivated = logActivated("Media accessory"),
		input = ListItemInputType.Chevron,
		LayoutOrder = LayoutOrder,
	})

	LayoutOrder += 1
	items.None = React.createElement(List.Item, {
		title = "No leading",
		description = "leading = nil",
		onActivated = logActivated("No leading"),
		input = ListItemInputType.Chevron,
		LayoutOrder = LayoutOrder,
	})

	return React.createElement(List.Root, {
		size = props.controls.size,
	}, items)
end

local function SizeSection(props: { LayoutOrder: number, size: InputSize }): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-small size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.size :: string,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		List = React.createElement(List.Root, { size = props.size, LayoutOrder = 2 }, {
			-- One representative row so the comparison is about size — the leading accessory, text, and
			-- trailing accessory all scale together.
			Item = React.createElement(List.Item, {
				leading = { iconName = "rbxthumb://type=GameIcon&id=1818&w=150&h=150" },
				title = { title = "List item", metadata = "Metadata" },
				description = "Leading, text, and trailing scale with size",
				onActivated = logActivated("List item"),
				input = ListItemInputType.Chevron,
				LayoutOrder = 1,
			}),
		}),
	})
end

local function SizesStory(): React.ReactNode
	local sections: { [string]: React.ReactNode } = {}
	for index, size in SIZE_ORDER do
		sections[size] = React.createElement(SizeSection, {
			LayoutOrder = index,
			size = size :: InputSize,
		})
	end

	return React.createElement(View, {
		tag = "col gap-large size-full-0 auto-y",
	}, sections)
end

local function DecoupledStory(props: { controls: { size: InputSize } }): React.ReactNode
	local isChecked, setIsChecked = React.useState(false)
	local isSelected, setIsSelected = React.useState(true)

	return React.createElement(List.Root, {
		size = props.controls.size,
	}, {
		-- Main use case: the item-level `onActivated` owns activation — the whole row is tappable and the
		-- trailing accessory is chosen independently via `input`.
		Navigation = React.createElement(List.Item, {
			title = "Open Build chat",
			description = "Item onActivated — whole row tappable, no accessory",
			onActivated = function()
				print("navigate to Build chat")
			end,
			input = ListItemInputType.None,
			LayoutOrder = 1,
		}),
		Chevron = React.createElement(List.Item, {
			title = "Settings",
			description = "Item onActivated — whole row tappable, default chevron",
			onActivated = function()
				print("navigate to Settings")
			end,
			LayoutOrder = 2,
		}),
		Check = React.createElement(List.Item, {
			title = "Default option",
			description = "Item onActivated — whole row tappable, Check accessory",
			onActivated = function()
				print("ListItem activated: Default option")
				setIsSelected(function(prev)
					return not prev
				end)
			end,
			input = ListItemInputType.None,
			trailing = if isSelected
				then React.createElement(CheckAccessory, { size = props.controls.size })
				else nil :: any,
			LayoutOrder = 3,
		}),
		-- Advanced: the trailing `input.onActivated` owns activation instead — only the checkbox is
		-- interactive and the row itself is not tappable. Never set both this and the item-level handler.
		Checkbox = React.createElement(List.Item, {
			title = "Notifications",
			description = "Input onActivated — only the checkbox activates (row not tappable)",
			input = {
				type = ListItemInputType.Checkbox,
				isChecked = isChecked,
				onActivated = function(checked: boolean)
					print(`ListItem input activated: Notifications = {checked}`)
					setIsChecked(checked)
				end,
			},
			LayoutOrder = 4,
		}),
	})
end

local stories: { { name: string, summary: string?, story: any } } = {
	{
		name = "Playground",
		story = PlaygroundStory :: unknown,
	},
	{
		name = "Input types",
		summary = "The trailing input accessory: Chevron (default), Checkbox, Toggle, or Radio.",
		story = InputTypesStory,
	},
	{
		name = "Selection",
		summary = "Tapping a row selects it. The selected row shows a Check placed in the trailing slot as a clickable accessory.",
		story = SelectionStory,
	},
	{
		name = "Leading accessories",
		story = LeadingAccessoriesStory,
	},
	{
		name = "Sizes",
		story = SizesStory,
	},
}

table.insert(stories, {
	name = "Activation",
	summary = "The main use case is a whole-item `onActivated` — the entire row is tappable and the accessory "
		.. "is chosen independently via `input`. Advanced: the trailing input can own its own `onActivated` "
		.. "(and then the row itself is not tappable).",
	story = DecoupledStory,
})

return {
	summary = "A tappable list row. The primary API is a whole-item `onActivated`; the trailing accessory is "
		.. "chosen independently via `input`.",
	stories = stories,
	controls = {
		leading = LEADING_OPTIONS,
		title = "List Item Title",
		metadata = "List Item Metadata",
		description = "The title prop can be a string or an object with a title and metadata field.",
		size = Dash.values(InputSize),
		inputType = Dash.values(Dash.join(ListItemInputType, { "" })),
		onActivated = true,
		isChecked = false,
	},
}
