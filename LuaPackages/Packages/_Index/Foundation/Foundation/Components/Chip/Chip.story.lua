local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Accessory = require(Foundation.Components.Chip.Accessory)
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
local BackgroundStyleContext = require(Foundation.Providers.Style.BackgroundStyleContext)
local ChipSize = require(Foundation.Enums.ChipSize)
local ChipVariant = require(Foundation.Enums.ChipVariant)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Chip = require(Foundation.Components.Chip.Chip)

local IconName = BuilderIcons.Icon

type Accessory = Accessory.Accessory
type AvatarGroupConfig = Accessory.AvatarGroupConfig

local function activated(label: string)
	return function()
		print(`Chip: "{label}" activated`)
	end
end

local AVATAR_ACCESSORY: AvatarGroupConfig = {
	type = "AvatarGroup",
	props = {
		avatars = { 24813339 },
		type = AvatarGroupType.Stacked,
		max = 1,
	},
}

local CIRCULAR_ACCESSORY: Accessory = {
	iconName = IconName.CircleX,
	isCircular = true,
}

type AccessoryOption = {
	caption: string,
	text: string,
	value: (string | Accessory)?,
}

local ACCESSORY_OPTIONS: { AccessoryOption } = {
	{
		caption = "None",
		text = "None",
	},
	{
		caption = "Icon",
		text = "Icon",
		value = IconName.DiamondSimplified,
	},
	{
		caption = "AvatarAccessory",
		text = "Avatar",
		value = AVATAR_ACCESSORY,
	},
	{
		caption = "CircularAccessory",
		text = "Circular",
		value = CIRCULAR_ACCESSORY,
	},
}

type GroupProps = {
	caption: string,
	contentTag: string,

	LayoutOrder: number?,
	children: React.ReactNode?,
}

local function Group(props: GroupProps)
	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Caption = React.createElement(Text, {
			Text = props.caption,
			tag = "auto-xy text-body-small content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag,
			LayoutOrder = 2,
		}, props.children),
	})
end

local function Story(props)
	return React.createElement(Chip, {
		leading = if props.leading ~= "" then props.leading else nil,
		trailing = if props.trailing ~= "" then props.trailing else nil,
		text = props.text,
		onActivated = props.onActivated,
		isChecked = props.isChecked,
		size = props.size,
		variant = props.variant,
		isDisabled = props.isDisabled,
	})
end

return {
	summary = "Chip",
	stories = {
		{
			name = "Playground",
			story = function(props)
				return React.createElement(Story, {
					text = props.controls.text,
					onActivated = activated("Playground"),
					leading = props.controls.leading,
					trailing = props.controls.trailing,
					isChecked = props.controls.isChecked,
					isDisabled = props.controls.isDisabled,
					size = props.controls.size,
					variant = props.controls.variant,
				})
			end,
		} :: { name: string, story: (props: any) -> React.Node },
		{
			name = "Sizes",
			story = function()
				return React.createElement(
					View,
					{
						tag = "col gap-xxlarge auto-xy",
					},
					Dash.map(ChipSize, function(size, name)
						return React.createElement(Group, {
							caption = name,
							contentTag = "row gap-small auto-xy",
						}, {
							Plain = React.createElement(Chip, {
								text = "Chip",
								onActivated = activated("Plain"),
								size = size,
								LayoutOrder = 1,
							}),
							LeadingIcon = React.createElement(Chip, {
								text = "Chip",
								onActivated = activated("LeadingIcon"),
								size = size,
								leading = IconName.DiamondSimplified,
								LayoutOrder = 2,
							}),
							TrailingIcon = React.createElement(Chip, {
								text = "Chip",
								onActivated = activated("TrailingIcon"),
								size = size,
								trailing = IconName.ChevronSmallDown,
								LayoutOrder = 3,
							}),
							AvatarAndClose = React.createElement(Chip, {
								text = "Chip",
								onActivated = activated("AvatarAndClose"),
								size = size,
								leading = AVATAR_ACCESSORY,
								trailing = CIRCULAR_ACCESSORY,
								LayoutOrder = 4,
							}),
						})
					end)
				)
			end,
		},
		{
			name = "Variants",
			story = function()
				return React.createElement(
					View,
					{
						tag = "row gap-xxlarge auto-xy",
					},
					Dash.map(ChipVariant, function(variant, name)
						return React.createElement(Group, {
							caption = name,
							contentTag = "auto-xy",
						}, {
							Chip = React.createElement(Chip, {
								text = name,
								onActivated = activated(name),
								variant = variant,
							}),
						})
					end)
				)
			end,
		},
		{
			name = "IsChecked",
			story = function()
				return React.createElement(
					View,
					{
						tag = "row gap-xxlarge auto-xy",
					},
					Dash.map({
						{ caption = "False", text = "Unchecked", isChecked = false },
						{ caption = "True", text = "Checked", isChecked = true },
					}, function(option, index)
						return React.createElement(Group, {
							caption = option.caption,
							contentTag = "auto-xy",
							LayoutOrder = index,
						}, {
							Chip = React.createElement(Chip, {
								text = option.text,
								onActivated = activated(option.text),
								isChecked = option.isChecked,
							}),
						})
					end)
				)
			end,
		},
		{
			name = "IsDisabled",
			story = function()
				return React.createElement(
					View,
					{
						tag = "row gap-xxlarge auto-xy",
					},
					Dash.map({
						{ caption = "False", text = "Enabled", isDisabled = false },
						{ caption = "True", text = "Disabled", isDisabled = true },
					}, function(option, index)
						return React.createElement(Group, {
							caption = option.caption,
							contentTag = "auto-xy",
							LayoutOrder = index,
						}, {
							Chip = React.createElement(Chip, {
								text = option.text,
								onActivated = activated(option.text),
								isDisabled = option.isDisabled,
							}),
						})
					end)
				)
			end,
		},
		{
			name = "Leading",
			story = function()
				return React.createElement(
					View,
					{
						tag = "row gap-xxlarge auto-xy",
					},
					Dash.map(ACCESSORY_OPTIONS, function(option, index)
						return React.createElement(Group, {
							caption = option.caption,
							contentTag = "auto-xy",
							LayoutOrder = index,
						}, {
							Chip = React.createElement(Chip, {
								text = option.text,
								onActivated = activated(option.text),
								leading = option.value,
							}),
						})
					end)
				)
			end,
		},
		{
			name = "Trailing",
			story = function()
				return React.createElement(
					View,
					{
						tag = "row gap-xxlarge auto-xy",
					},
					Dash.map(ACCESSORY_OPTIONS, function(option, index)
						return React.createElement(Group, {
							caption = option.caption,
							contentTag = "auto-xy",
							LayoutOrder = index,
						}, {
							Chip = React.createElement(Chip, {
								text = option.text,
								onActivated = activated(option.text),
								trailing = option.value,
							}),
						})
					end)
				)
			end,
		},
		{
			name = "AvatarGroup",
			story = function(props)
				return React.createElement(Chip, {
					text = props.controls.text,
					onActivated = activated("AvatarGroup"),
					leading = {
						type = "AvatarGroup",
						props = {
							avatars = {
								24813339,
								24813338,
								24813337,
								24813336,
							},
							type = AvatarGroupType.Stacked,
							max = 3,
						},
					} :: Accessory,
					isChecked = props.controls.isChecked,
					isDisabled = props.controls.isDisabled,
					size = props.controls.size,
					variant = props.controls.variant,
				})
			end,
		},
		{
			name = "AvatarGroup on custom background",
			story = function(props)
				local tokens = useTokens()
				return React.createElement(
					View,
					{ tag = "auto-xy padding-large bg-surface-300" },
					React.createElement(
						BackgroundStyleContext.Provider,
						{ value = tokens.Color.Surface.Surface_300 },
						React.createElement(Chip, {
							text = props.controls.text,
							onActivated = activated("AvatarGroup on custom background"),
							leading = {
								type = "AvatarGroup",
								props = {
									avatars = {
										24813339,
										24813338,
										24813337,
										24813336,
									},
									type = AvatarGroupType.Stacked,
									max = 3,
								},
							} :: Accessory,
							isChecked = props.controls.isChecked,
							isDisabled = props.controls.isDisabled,
							size = props.controls.size,
							variant = props.controls.variant,
						})
					)
				)
			end,
		},
	},
	controls = {
		leading = {
			IconName.ThreeBarsHorizontalNarrowing,
			IconName.Robux,
			IconName.ChevronSmallRight,
			CIRCULAR_ACCESSORY,
			"",
		} :: { string | Accessory },
		trailing = {
			IconName.ChevronLargeDown,
			IconName.CircleX,
			IconName.PlusSmall,
			IconName.X,
			CIRCULAR_ACCESSORY,
			"",
		} :: { string | Accessory },
		size = Dash.values(ChipSize),
		variant = Dash.values(ChipVariant),
		text = "Filter",
		isChecked = false,
		isDisabled = false,
	},
}
