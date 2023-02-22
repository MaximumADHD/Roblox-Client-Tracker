local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Roact = dependencies.Roact
local SquadLobbyUsers = require(Squads.SquadLobby.Components.SquadLobbyUsers.SquadLobbyUsers)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama
local ModelTypes = require(Squads.SquadLobby.Common.ModelTypes)

local setupStory = function(storyProps, config: { users: { [number]: ModelTypes.User } })
	local store = Rodux.Store.new(function()
		return {
			ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
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
				SquadLobbyUsers,
				llama.Dictionary.join({
					users = config.users,
				}, storyProps)
			),
		}),
	})
end

return {
	controls = {
		userCount = 6,
	},
	stories = {
		SquadLobbyUsers = function(storyProps)
			local users = {}
			for i = 1, storyProps.controls.userCount do
				table.insert(users, {
					id = 1111111111,
					name = "user1",
				})
			end

			return setupStory(storyProps, { users = users })
		end,
	},
}
