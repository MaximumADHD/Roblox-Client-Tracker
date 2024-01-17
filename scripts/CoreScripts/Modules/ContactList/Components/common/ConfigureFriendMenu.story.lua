local ConfigureFriendMenu = require(script.Parent.ConfigureFriendMenu)
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

return {
	name = "ConfigureFriendMenu",
	summary = "Menu accessed from user row in the contact list.",
	story = Roact.createElement(ConfigureFriendMenu),
	state = {
		PlayerMenu = {
			friend = {
				userId = 1,
				combinedName = "Roblox User",
			},
		},
	},
}
