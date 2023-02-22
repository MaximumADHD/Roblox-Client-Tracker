local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Constants = require(Squads.SquadLobby.Common.Constants)
local Roact = dependencies.Roact
local SquadLobbyUserCard = require(Squads.SquadLobby.Components.SquadLobbyUserCard.SquadLobbyUserCard)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local ModelTypes = require(Squads.SquadLobby.Common.ModelTypes)

local setupStory = function(storyProps, config: { userCardProps: ModelTypes.UserCardProps })
	local store = Rodux.Store.new(function()
		return {
			ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
		}
	end, {}, { Rodux.thunkMiddleware })

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, Constants.USER_CARD_SIZE.X, 0, Constants.USER_CARD_SIZE.Y),
		BackgroundTransparency = 0,
		BackgroundColor3 = Color3.fromRGB(35, 37, 39),
	}, {
		storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			Roact.createElement(SquadLobbyUserCard, config.userCardProps),
		}),
	})
end

return {
	controls = {
		isBlocked = false,
	},
	stories = {
		SquadLobbyUserCardInExperience = function(storyProps)
			return setupStory(storyProps, {
				userCardProps = {
					user = {
						name = "user1",
						id = 1111111111,
					},
					experienceName = "BrookHavenReallyLongName",
					isBlocked = storyProps.controls.isBlocked,
				},
			})
		end,
		SquadLobbyUserCardNotInExperience = function(storyProps)
			return setupStory(storyProps, {
				userCardProps = {
					user = {
						name = "user1",
						id = 1111111111,
					},
					isBlocked = storyProps.controls.isBlocked,
					userStatus = {},
				},
			})
		end,
		SquadLobbyUserCardLoading = function(storyProps)
			return setupStory(storyProps, {
				userCardProps = {
					user = {
						name = "user1",
						id = 1111111111,
					},
					isLoading = true,
				},
			})
		end,
	},
}
