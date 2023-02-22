local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Roact = dependencies.Roact
local SquadLobbyPeekViewTopBar = require(Squads.SquadLobby.Components.SquadLobbyPeekViewTopBar.SquadLobbyPeekViewTopBar)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama

local setupStory = function(config: { navigateBack: () -> () })
	return function(storyProps)
		local store = Rodux.Store.new(function()
			return {
				ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
				TopBar = {
					statusBarHeight = 20,
				},
			}
		end, {}, { Rodux.thunkMiddleware })

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 375, 0, 770),
			BackgroundTransparency = 0,
			BackgroundColor3 = Color3.fromRGB(35, 37, 39),
		}, {
			storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				Roact.createElement(
					SquadLobbyPeekViewTopBar,
					llama.Dictionary.join({
						navigateBack = config.navigateBack,
					}, storyProps)
				),
			}),
		})
	end
end

local noOpt = function() end

return {
	controls = {},
	stories = {
		SquadLobbyPeekViewTopBar = setupStory({ navigateBack = noOpt }),
	},
}
