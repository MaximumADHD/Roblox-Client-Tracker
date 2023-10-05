local ConfigureFriendMenu = require(script.Parent.ConfigureFriendMenu)
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

return {
	name = "ConfigureFriendMenu",
	summary = "Menu That Lets You Configure Friend Options",
	story = Roact.createElement(ConfigureFriendMenu),
}
