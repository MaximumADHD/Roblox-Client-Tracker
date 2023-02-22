local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama
local SquadLobbyPeekView = require(Squads.SquadLobby.Components.SquadLobbyPeekView.SquadLobbyPeekView)
local ModelTypes = require(Squads.SquadLobby.Common.ModelTypes)

type SquadLobbyPeekViewConfig = {
	users: { [number]: ModelTypes.User },
	peekViewProps: ModelTypes.PeekViewProps,
	viewHeight: number,
	viewWidth: number,
}

local setupStory = function(storyProps, config: SquadLobbyPeekViewConfig)
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
			Roact.createElement(SquadLobbyPeekView, llama.Dictionary.join(config, storyProps)),
		}),
	})
end

return {
	controls = {
		userCount = 6,
	},
	stories = {
		SquadLobbyPeekView = function(storyProps)
			local users = {}
			for i = 1, storyProps.controls.userCount do
				table.insert(users, { id = 1111111111, name = "user" .. i })
			end

			return setupStory(storyProps, {
				peekViewProps = {
					mountAsFullView = false,
					mountAnimation = true,
					onPeekViewGoBack = function() end,
				},
				users = users,
				viewWidth = 375,
				viewHeight = 770,
			})
		end,
	},
}
