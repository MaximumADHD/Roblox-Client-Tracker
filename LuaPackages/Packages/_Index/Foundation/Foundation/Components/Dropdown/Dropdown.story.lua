local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Dash = require(Packages.Dash)

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
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
type BadgeVariant = BadgeVariant.BadgeVariant

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
	leading: string?,
	trailing: string?,
}

local LEADING_ICON_PALETTE = {
	BuilderIcons.Icon.Pencil,
	BuilderIcons.Icon.ClipboardPencil,
	BuilderIcons.Icon.TextBBold,
	BuilderIcons.Icon.PaperAirplane,
	BuilderIcons.Icon.TwoStackedSquares,
	BuilderIcons.Icon.TrashCan,
}

local HINT_PALETTE = { "\u{2318}B", "\u{2318}I", "\u{2318}C", "\u{2318}V", "\u{2318}S", "\u{2318}Z" }

local BADGE_PALETTE: { { text: string, variant: BadgeVariant } } = {
	{ text = "New", variant = BadgeVariant.Success },
	{ text = "Beta", variant = BadgeVariant.Warning },
	{ text = "Pro", variant = BadgeVariant.Contrast },
	{ text = "Soon", variant = BadgeVariant.Neutral },
}

local function leadingFor(mode: string?, index: number): any
	if mode == nil or mode == "None" then
		return nil
	end
	if mode == "Avatar" then
		return { type = "Avatar", userId = 24813339 } :: any
	end
	if mode == "Mixed" then
		local r = (index - 1) % 3
		if r == 1 then
			return { type = "Avatar", userId = 24813339 } :: any
		elseif r == 2 then
			return nil
		end
	end
	return LEADING_ICON_PALETTE[((index - 1) % #LEADING_ICON_PALETTE) + 1]
end

local function trailingFor(mode: string?, index: number): any
	if mode == nil or mode == "None" then
		return nil
	end
	if mode == "Hint" then
		return { type = "Hint", text = HINT_PALETTE[((index - 1) % #HINT_PALETTE) + 1] } :: any
	end
	if mode == "Badge" then
		local b = BADGE_PALETTE[((index - 1) % #BADGE_PALETTE) + 1]
		return { type = "Badge", text = b.text, variant = b.variant } :: any
	end
	if index % 2 == 1 then
		return { type = "Hint", text = HINT_PALETTE[((index - 1) % #HINT_PALETTE) + 1] } :: any
	end
	local b = BADGE_PALETTE[((index - 1) % #BADGE_PALETTE) + 1]
	return { type = "Badge", text = b.text, variant = b.variant } :: any
end

local function getItems(hasIcon: boolean?): { DropdownItem }
	local icon = if hasIcon then BuilderIcons.Icon.ShieldCheck else nil
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
	local items: { DropdownItem }? = nil
	if Flags.FoundationBaseMenuBeta then
		local leadingMode = controls.leading
		local trailingMode = controls.trailing
		local baseTexts = { "Action one", "Action two", "Action three", "Other one", "Other two", "Other three" }
		local built: { DropdownItem } = {}
		for index, text in baseTexts do
			table.insert(built, {
				id = `item-{index}`,
				text = text,
				leading = leadingFor(leadingMode, index),
				trailing = trailingFor(trailingMode, index),
				isDisabled = index == 5,
			})
		end
		items = built
	end
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
		items = items,
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
				{ id = "a1", icon = BuilderIcons.Icon.Robux, text = "Alpha 1" } :: DropdownItem,
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
				icon = BuilderIcons.Icon.Robux,
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

local function LeadingAccessoriesStory(_props: { controls: Controls }): React.ReactNode
	if not Flags.FoundationBaseMenuBeta then
		return React.createElement(Text, {
			Text = "Enable FoundationBaseMenuBeta to preview leading accessories.",
			tag = "auto-xy text-body-medium content-muted",
		})
	end

	local iconItems: { DropdownItem } = {
		{ id = "edit", text = "Edit", leading = BuilderIcons.Icon.Pencil },
		{ id = "share", text = "Share", leading = BuilderIcons.Icon.PaperAirplane },
		{ id = "copy", text = "Duplicate", leading = BuilderIcons.Icon.TwoStackedSquares },
		{ id = "delete", text = "Delete", leading = BuilderIcons.Icon.TrashCan },
	}
	local avatarItems: { DropdownItem } = {
		{ id = "u1", text = "Builderman", leading = { type = "Avatar", userId = 156 } :: any },
		{ id = "u2", text = "User", leading = { type = "Avatar", userId = 24813339 } :: any },
		{ id = "u3", text = "Roblox", leading = { type = "Avatar", userId = 1 } :: any },
	}
	local mixedItems: { DropdownItem } = {
		{ id = "i1", text = "Settings", leading = BuilderIcons.Icon.Pencil },
		{ id = "i2", text = "Profile", leading = { type = "Avatar", userId = 24813339 } :: any },
		{ id = "i3", text = "No leading" },
		{ id = "i4", text = "Trash", leading = BuilderIcons.Icon.TrashCan },
	}

	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, {
		Icons = Section("Icon leading", 1, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Action",
				placeholder = "Pick an action",
				width = SHOWCASE_WIDTH,
				items = iconItems,
			}),
		}),
		Avatars = Section("Avatar leading", 2, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Member",
				placeholder = "Pick a member",
				width = SHOWCASE_WIDTH,
				items = avatarItems,
			}),
		}),
		Mixed = Section("Mixed leading (some items have none)", 3, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Sample",
				placeholder = "Pick one",
				width = SHOWCASE_WIDTH,
				items = mixedItems,
			}),
		}),
	})
end

local function TrailingAccessoriesStory(_props: { controls: Controls }): React.ReactNode
	if not Flags.FoundationBaseMenuBeta then
		return React.createElement(Text, {
			Text = "Enable FoundationBaseMenuBeta to preview trailing accessories.",
			tag = "auto-xy text-body-medium content-muted",
		})
	end

	local hintItems: { DropdownItem } = {
		{ id = "b", text = "Bold", trailing = { type = "Hint", text = "\u{2318}B" } :: any },
		{ id = "i", text = "Italic", trailing = { type = "Hint", text = "\u{2318}I" } :: any },
		{ id = "u", text = "Underline", trailing = { type = "Hint", text = "\u{2318}U" } :: any },
	}
	local badgeItems: { DropdownItem } = {
		{
			id = "new",
			text = "New feature",
			trailing = { type = "Badge", text = "New", variant = BadgeVariant.Success } :: any,
		},
		{
			id = "beta",
			text = "Beta channel",
			trailing = { type = "Badge", text = "Beta", variant = BadgeVariant.Warning } :: any,
		},
		{
			id = "pro",
			text = "Pro mode",
			trailing = { type = "Badge", text = "Pro", variant = BadgeVariant.Contrast } :: any,
		},
	}
	local mixedItems: { DropdownItem } = {
		{ id = "save", text = "Save", trailing = { type = "Hint", text = "\u{2318}S" } :: any },
		{
			id = "publish",
			text = "Publish",
			trailing = { type = "Badge", text = "New", variant = BadgeVariant.Success } :: any,
		},
		{ id = "plain", text = "Plain item" },
	}

	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, {
		Hints = Section("Hint trailing", 1, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Format",
				placeholder = "Pick a style",
				width = SHOWCASE_WIDTH,
				items = hintItems,
			}),
		}),
		Badges = Section("Badge trailing", 2, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Channel",
				placeholder = "Pick a channel",
				width = SHOWCASE_WIDTH,
				items = badgeItems,
			}),
		}),
		Mixed = Section("Mixed trailing", 3, "auto-xy", {
			Dropdown = React.createElement(DemoDropdown, {
				label = "Action",
				placeholder = "Pick an action",
				width = SHOWCASE_WIDTH,
				items = mixedItems,
			}),
		}),
	})
end

local function CheckColumnStory(_props: { controls: Controls }): React.ReactNode
	if not Flags.FoundationBaseMenuBeta then
		return React.createElement(Text, {
			Text = "Enable FoundationBaseMenuBeta to preview the Apple-style check column.",
			tag = "auto-xy text-body-medium content-muted",
		})
	end

	-- The selected item gets a checkmark, and every other row reserves the
	-- check column slot so titles stay aligned — same behavior Apple's menus
	-- use. The two dropdowns below differ only in their selected value to
	-- show the column shifts as a unit.
	local items: { DropdownItem } = {
		{ id = "low", text = "Low quality", leading = BuilderIcons.Icon.Pencil },
		{ id = "med", text = "Medium quality", leading = BuilderIcons.Icon.PaperAirplane },
		{ id = "high", text = "High quality", leading = BuilderIcons.Icon.ClipboardPencil },
	}

	return React.createElement(View, {
		tag = "col gap-xlarge size-full-0 auto-y",
	}, {
		Selected = Section("Pre-selected (check + leading both visible)", 1, "auto-xy", {
			Dropdown = React.createElement(Dropdown.Root, {
				value = "med",
				onItemChanged = function() end,
				items = items,
				label = "Quality",
				width = SHOWCASE_WIDTH,
			}),
		}),
		Empty = Section("Unselected (no check column reserved)", 2, "auto-xy", {
			Dropdown = React.createElement(Dropdown.Root, {
				onItemChanged = function() end,
				items = items,
				label = "Quality",
				placeholder = "Pick a quality",
				width = SHOWCASE_WIDTH,
			}),
		}),
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
		{ name = "Leading accessories", story = LeadingAccessoriesStory },
		{ name = "Trailing accessories", story = TrailingAccessoriesStory },
		{ name = "Check column", story = CheckColumnStory },
	},
	controls = {
		size = Dash.values(InputSize),
		variant = if Flags.FoundationDropdownVariant then Dash.values(InputVariant) else nil :: never,
		isDisabled = false,
		hasError = false,
		hasIcon = if Flags.FoundationBaseMenuBeta then nil :: never else true,
		hasPlaceholder = false,
		hasHint = false,
		label = "Dropdown Label",
		placeholder = "Choose an option",
		hint = "Optional hint text",
		width = 400,
		leading = if Flags.FoundationBaseMenuBeta then { "Icon", "Avatar", "Mixed", "None" } else nil,
		trailing = if Flags.FoundationBaseMenuBeta then { "Hint", "Badge", "Mixed", "None" } else nil,
	},
}
