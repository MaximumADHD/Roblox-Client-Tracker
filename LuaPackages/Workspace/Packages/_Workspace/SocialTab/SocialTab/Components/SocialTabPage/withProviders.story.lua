local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local Mock = dependencies.Mock

local SocialTabPage = require(script.Parent)

return function(props)
	return Roact.createElement("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 0, 255),
		Size = UDim2.new(0, 512 * (9 / 16), 0, 512),
	}, {
		socialTabPage = Roact.createElement(SocialTabPage, {
			localUser = {
				username = "username",
				id = "id",
				isPremium = false,
				thumbnail = "",
				displayName = "displayName",
			},
			enableDisplayNamePolicy = true,
			enableNotificationsPolicy = true,
			shouldShowGroupsTilePolicy = true,
			isLuaProfilePageEnabled = props.isLuaProfilePageEnabled,
			analytics = props.analytics or Mock.MagicMock.new({ name = "analytics" }),
			navigation = props.navigation or Mock.MagicMock.new({ name = "navigation" }),
			navigateToLuaAppPages = props.navigateToLuaAppPages
				or Mock.MagicMock.new({ name = "navigateToLuaAppPages" }),
		}),
	})
end
