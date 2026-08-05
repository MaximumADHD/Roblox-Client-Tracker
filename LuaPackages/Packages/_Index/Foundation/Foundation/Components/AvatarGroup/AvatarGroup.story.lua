local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AvatarGroup = require(Foundation.Components.AvatarGroup)
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
local InputSize = require(Foundation.Enums.InputSize)
local Text = require(Foundation.Components.Text)
local UserPresence = require(Foundation.Enums.UserPresence)
local View = require(Foundation.Components.View)

local AVATAR_USER_IDS = {
	24813339,
	24813338,
	24813333,
	24813337,
	24813336,
	24813335,
	24813334,
	24813332,
	24813331,
}

local orderedSizes: { InputSize.InputSize } = { InputSize.XSmall, InputSize.Small, InputSize.Medium, InputSize.Large }

local avatars: { { userId: number, userPresence: UserPresence.UserPresence } | number } = {}
for index = 1, #AVATAR_USER_IDS do
	local userId = AVATAR_USER_IDS[index]
	if index % 3 == 1 then
		table.insert(avatars, { userId = userId, userPresence = UserPresence.InExperience })
	else
		table.insert(avatars, userId)
	end
end

return {
	summary = "AvatarGroup",
	stories = {
		{
			name = "Playground",
			story = function(props): React.ReactNode
				local controlledAvatars: { { userId: number, userPresence: ("None" | "InExperience")? } | number } = {}
				for index = 1, props.controls.avatars do
					local userId = AVATAR_USER_IDS[(index - 1) % #AVATAR_USER_IDS + 1]
					if index % 3 == 1 then
						table.insert(controlledAvatars, { userId = userId, userPresence = UserPresence.InExperience })
					else
						table.insert(controlledAvatars, userId)
					end
				end

				return React.createElement(AvatarGroup, {
					avatars = controlledAvatars,
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
					{ tag = "col wrap gap-xxlarge auto-xy" },
					Dash.map(orderedSizes, function(size, index)
						return React.createElement(
							View,
							{ tag = "col align-x-center gap-small auto-xy", LayoutOrder = index },
							React.createElement(Text, {
								tag = "auto-xy text-caption-small text-align-x-center",
								Text = size,
								LayoutOrder = 1,
							}),
							React.createElement(AvatarGroup, {
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
							React.createElement(AvatarGroup, {
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
						React.createElement(AvatarGroup, {
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
						React.createElement(AvatarGroup, {
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
		avatars = 9,
		max = 5,
		size = Dash.values(InputSize),
	},
}
