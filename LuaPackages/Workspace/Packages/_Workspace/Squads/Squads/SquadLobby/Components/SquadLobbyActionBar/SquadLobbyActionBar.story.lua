local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Roact = dependencies.Roact
local SquadLobbyActionBar = require(Squads.SquadLobby.Components.SquadLobbyActionBar.SquadLobbyActionBar)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local UIBlox = dependencies.UIBlox
local RetrievalStatus = UIBlox.App.Loading.Enum.RetrievalStatus
local llama = dependencies.llama

local setupStory = function(config: { actionBarLoadingStatus: string, numUsers: number })
	return function(storyProps)
		local store = Rodux.Store.new(function()
			return {
				ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
			}
		end, {}, { Rodux.thunkMiddleware })

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 471, 0, 70),
			BackgroundTransparency = 1,
		}, {
			storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				Roact.createElement(
					SquadLobbyActionBar,
					llama.Dictionary.join({
						actionBarLoadingStatus = config.actionBarLoadingStatus,
						numUsers = config.numUsers,
					}, storyProps)
				),
			}),
		})
	end
end

return {
	controls = {},
	stories = {
		InviteFriendsSquadLobbyActionBar = setupStory({
			actionBarLoadingStatus = RetrievalStatus.Done.rawValue(),
			numUsers = 1,
		}),
		PickAnExperienceSquadLobbyActionBar = setupStory({
			actionBarLoadingStatus = RetrievalStatus.Done.rawValue(),
			numUsers = 2,
		}),
		LoadingSquadLobbyActionBar = setupStory({
			actionBarLoadingStatus = RetrievalStatus.Fetching.rawValue(),
			numUsers = 2,
		}),
		FailedSquadLobbyActionBar = setupStory({
			actionBarLoadingStatus = RetrievalStatus.Failed.rawValue(),
			numUsers = 2,
		}),
	},
}
