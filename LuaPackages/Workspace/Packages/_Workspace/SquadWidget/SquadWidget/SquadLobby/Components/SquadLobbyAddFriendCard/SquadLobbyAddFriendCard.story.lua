local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)
local Roact = dependencies.Roact
local SquadLobbyAddFriendCard =
	require(SquadWidget.SquadLobby.Components.SquadLobbyAddFriendCard.SquadLobbyAddFriendCard)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux

local setupStory = function(storyProps)
	local store = Rodux.Store.new(function()
		return {
			ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
		}
	end, {}, { Rodux.thunkMiddleware })

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 70, 0, 92),
		BackgroundTransparency = 0,
		BackgroundColor3 = Color3.fromRGB(35, 37, 39),
	}, {
		storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			Roact.createElement(SquadLobbyAddFriendCard, storyProps),
		}),
	})
end

return {
	stories = {
		SquadLobbyAddFriendCard = function(storyProps)
			return setupStory(storyProps)
		end,
	},
}
