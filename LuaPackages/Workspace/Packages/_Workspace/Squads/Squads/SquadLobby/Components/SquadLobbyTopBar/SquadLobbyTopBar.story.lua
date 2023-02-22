local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Roact = dependencies.Roact
local SquadLobbyTopBar = require(Squads.SquadLobby.Components.SquadLobbyTopBar.SquadLobbyTopBar)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama

local setupStory = function()
	return function(storyProps)
		local users = {}
		for i = 1, storyProps.controls.numUsers do
			users[i] = "user" .. i
		end
		local title = table.concat(users, ", ")
		local store = Rodux.Store.new(function()
			return {
				ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
			}
		end, {}, { Rodux.thunkMiddleware })

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 375, 0, 100),
			BackgroundTransparency = 0,
			BackgroundColor3 = Color3.fromRGB(35, 37, 39),
		}, {
			storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				Roact.createElement(
					SquadLobbyTopBar,
					llama.Dictionary.join({
						title = title,
						numUsers = storyProps.controls.numUsers,
					}, storyProps)
				),
			}),
		})
	end
end

return {
	controls = {
		numUsers = 2,
	},
	stories = {
		SquadLobbyTopBar = setupStory(),
	},
}
