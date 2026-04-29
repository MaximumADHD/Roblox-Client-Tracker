local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AvatarGroup = require(Foundation.Components.AvatarGroup)
local AvatarGroupType = require(Foundation.Enums.AvatarGroupType)
local InputSize = require(Foundation.Enums.InputSize)
local UserPresence = require(Foundation.Enums.UserPresence)

return {
	summary = "AvatarGroup",
	stories = {
		{
			name = "Base",
			story = function(props)
				return React.createElement(AvatarGroup, {
					avatars = {
						{ userId = 24813339, userPresence = UserPresence.InExperience } :: any,
						24813338,
						{ userId = 24813333, userPresence = UserPresence.InExperience },
						24813337,
						24813336,
						24813335,
						24813334,
						24813332,
						24813331,
					},
					type = props.controls.type,
					max = props.controls.max,
					size = props.controls.size,
				})
			end,
		},
	},
	controls = {
		type = Dash.values(AvatarGroupType),
		max = 5,
		size = Dash.values(InputSize),
	},
}
