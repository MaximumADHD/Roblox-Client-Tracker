local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local Mock = dependencies.Mock
local llama = dependencies.llama

local SocialTabPage = require(script.Parent)

return function(props)
	local allProps = llama.Dictionary.join({
		analytics = Mock.MagicMock.new({ name = "analytics" }),
		navigation = Mock.MagicMock.new({ name = "navigation" }),
		localUser = {
			username = "username",
			id = "id",
			isPremium = false,
			thumbnail = "",
			displayName = "displayName",
		},
	}, props)
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(function()
			return {}
		end, {}, { Rodux.thunkMiddleware }),
	}, {
		Story = Roact.createElement("Frame", {
			BackgroundColor3 = Color3.fromRGB(255, 0, 255),
			Size = UDim2.new(0, 1000, 0, 512),
		}, {
			socialTabPage = Roact.createElement(SocialTabPage, allProps),
		}),
	})
end
