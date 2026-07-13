local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AvatarGroup = require(Foundation.Components.AvatarGroup)
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
local InputSize = require(Foundation.Enums.InputSize)
local UserPresence = require(Foundation.Enums.UserPresence)

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

return {
	summary = "AvatarGroup",
	stories = {
		{
			name = "Playground",
			story = function(props)
				local avatars: { { userId: number, userPresence: ("None" | "InExperience")? } | number } = {}
				for index = 1, props.controls.avatars do
					local userId = AVATAR_USER_IDS[(index - 1) % #AVATAR_USER_IDS + 1]
					if index % 3 == 1 then
						table.insert(avatars, { userId = userId, userPresence = UserPresence.InExperience })
					else
						table.insert(avatars, userId)
					end
				end

				return React.createElement(AvatarGroup, {
					avatars = avatars,
					type = props.controls.type,
					max = props.controls.max,
					size = props.controls.size,
				})
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
