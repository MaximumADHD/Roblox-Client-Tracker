local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
local AvatarIconGroup = require(Foundation.Components.AvatarIconGroup)
local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local avatars = {
	24813339,
	24813338,
	24813337,
	24813336,
	24813335,
	24813334,
}

return {
	summary = "AvatarIconGroup",
	stories = {
		{
			name = "Playground",
			story = function(props): React.ReactNode
				return React.createElement(AvatarIconGroup, {
					avatars = avatars,
					type = props.controls.type,
					max = props.controls.max,
					size = props.controls.size,
				})
			end,
		},
		{
			name = "Size",
			story = function(): React.ReactNode
				return React.createElement(
					View,
					{ tag = "row wrap gap-xxlarge auto-xy" },
					Dash.map(Dash.values(AvatarIconSize), function(size, index)
						return React.createElement(
							View,
							{ tag = "col align-x-center gap-small auto-xy", LayoutOrder = index },
							React.createElement(Text, {
								tag = "auto-xy text-caption-small text-align-x-center",
								Text = size,
								LayoutOrder = 1,
							}),
							React.createElement(AvatarIconGroup, {
								avatars = avatars,
								size = size,
								LayoutOrder = 2,
							})
						)
					end)
				)
			end,
		},
		{
			name = "Type",
			story = function(): React.ReactNode
				return React.createElement(
					View,
					{ tag = "row wrap gap-xxlarge auto-xy" },
					Dash.map(Dash.values(AvatarGroupType), function(groupType, index)
						return React.createElement(
							View,
							{ tag = "col align-x-center gap-small auto-xy", LayoutOrder = index },
							React.createElement(Text, {
								tag = "auto-xy text-caption-small text-align-x-center",
								Text = groupType,
								LayoutOrder = 1,
							}),
							React.createElement(AvatarIconGroup, {
								avatars = avatars,
								type = groupType,
								LayoutOrder = 2,
							})
						)
					end)
				)
			end,
		},
		{
			name = "Content",
			story = function(): React.ReactNode
				return React.createElement(
					View,
					{ tag = "row wrap gap-xxlarge auto-xy" },
					React.createElement(
						View,
						{ tag = "col align-x-center gap-small auto-xy", LayoutOrder = 1 },
						React.createElement(Text, {
							tag = "auto-xy text-caption-small text-align-x-center",
							Text = "Truncated (max 3)",
							LayoutOrder = 1,
						}),
						React.createElement(AvatarIconGroup, {
							avatars = avatars,
							max = 3,
							LayoutOrder = 2,
						})
					),
					React.createElement(
						View,
						{ tag = "col align-x-center gap-small auto-xy", LayoutOrder = 2 },
						React.createElement(Text, {
							tag = "auto-xy text-caption-small text-align-x-center",
							Text = "Full display",
							LayoutOrder = 1,
						}),
						React.createElement(AvatarIconGroup, {
							avatars = avatars,
							LayoutOrder = 2,
						})
					)
				)
			end,
		},
	},
	controls = {
		type = Dash.values(AvatarGroupType),
		max = 4,
		size = Dash.values(AvatarIconSize),
	},
}
