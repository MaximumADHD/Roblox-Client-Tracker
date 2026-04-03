local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
local BackgroundStyleContext = require(Foundation.Providers.Style.BackgroundStyleContext)
local ChipSize = require(Foundation.Enums.ChipSize)
local ChipVariant = require(Foundation.Enums.ChipVariant)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Chip = require(Foundation.Components.Chip.Chip)

local function Story(props)
	return React.createElement(Chip, {
		leading = if #props.leading > 0 or type(props.leading) == "table" then props.leading else nil,
		trailing = if #props.trailing > 0 or type(props.trailing) == "table" then props.trailing else nil,
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
			name = "Basic",
			story = function(props)
				return Story({
					text = props.controls.text,
					onActivated = function()
						print(`Chip activated`)
					end,
					leading = props.controls.leading,
					trailing = props.controls.trailing,
					isChecked = props.controls.isChecked,
					isDisabled = props.controls.isDisabled,
					size = props.controls.size,
					variant = props.controls.variant,
				})
			end,
		} :: unknown,
		{
			name = "Sizes",
			story = function(props)
				return React.createElement(
					View,
					{ tag = "auto-xy row gap-xlarge" },
					Dash.map(ChipSize, function(value, key)
						return React.createElement(Story, {
							key = key,
							text = props.controls.text,
							onActivated = function()
								print(`Chip activated`)
							end,
							leading = props.controls.leading,
							trailing = props.controls.trailing,
							isChecked = props.controls.isChecked,
							isDisabled = props.controls.isDisabled,
							size = value,
							variant = props.controls.variant,
						})
					end)
				)
			end,
		},
		{
			name = "Variants",
			story = function(props)
				return React.createElement(
					View,
					{ tag = "auto-xy row gap-xlarge" },
					Dash.map(ChipVariant, function(value, key)
						return React.createElement(Story, {
							key = key,
							text = props.controls.text,
							onActivated = function()
								print(`Chip activated`)
							end,
							leading = props.controls.leading,
							trailing = props.controls.trailing,
							isChecked = props.controls.isChecked,
							isDisabled = props.controls.isDisabled,
							size = props.controls.size,
							variant = value,
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
					onActivated = function()
						print(`Chip activated`)
					end,
					leading = {
						type = "AvatarGroup" :: "AvatarGroup",
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
					},
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
					{ tag = "bg-surface-300 auto-xy padding-large" },
					React.createElement(
						BackgroundStyleContext.Provider,
						{ value = tokens.Color.Surface.Surface_300 },
						React.createElement(Chip, {
							text = props.controls.text,
							onActivated = function()
								print(`Chip activated`)
							end,
							leading = {
								type = "AvatarGroup" :: "AvatarGroup",
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
							},
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
			"robux" :: any,
			"icons/actions/filter",
			"icons/common/robux",
			"icons/common/play",
			{
				iconName = "icons/actions/selectOn",
				onActivated = function()
					print("I've been clicked")
				end,
				isCircular = true,
			},
			"",
		},
		trailing = {
			"three-bars-horizontal-narrowing" :: any,
			"icons/actions/filter",
			"icons/common/robux",
			"icons/common/play",
			"icons/status/success_small",
			"icons/actions/truncationExpand_small",
			{
				iconName = "icons/actions/selectOn",
				onActivated = function()
					print("I've been clicked")
				end,
				isCircular = true,
			},
			"",
		},
		size = Dash.values(ChipSize),
		variant = Dash.values(ChipVariant),
		text = "Filter",
		isChecked = false,
		isDisabled = false,
	},
}
