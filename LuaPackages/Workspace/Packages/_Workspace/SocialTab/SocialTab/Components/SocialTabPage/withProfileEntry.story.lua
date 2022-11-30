local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local Mock = dependencies.Mock

local SocialTabPage = require(script.Parent)
local UserUtils = require(SocialTab.User)

local mockLocalUser = {
	id = "422502",
	username = "MyName",
	displayName = "MyDisplayName",
	isPremium = true,
	thumbnail = UserUtils.getUserAvatarImage("422502"),
}

return function(props)
	return Roact.createElement("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 0, 255),
		Size = UDim2.new(0, 1000 * (9 / 16), 0, 1000),
	}, {
		socialTabPage = Roact.createElement(SocialTabPage, {
			analytics = props.analytics or Mock.MagicMock.new({ name = "analytics" }),
			navigation = props.navigation or Mock.MagicMock.new({ name = "navigation" }),
			navigateToLuaAppPages = props.navigateToLuaAppPages
				or Mock.MagicMock.new({ name = "navigateToLuaAppPages" }),
			enableDisplayNamePolicy = true,
			shouldShowGroupsTilePolicy = true,
			localUser = mockLocalUser,
		}),
	})
end
