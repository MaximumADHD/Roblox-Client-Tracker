local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama

local SquadInviteTopBar = require(Squads.SquadLobby.Components.SquadInviteTopBar.SquadInviteTopBar)

local setupStory = function(config: { navigateBack: () -> (), disableAddButton: boolean, addUsers: () -> () })
	return function(storyProps)
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
					SquadInviteTopBar,
					llama.Dictionary.join({
						navigateBack = config.navigateBack,
						isAddButtonDisabled = config.disableAddButton,
						addUsers = config.addUsers,
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
		SquadInviteTopBarDisabled = setupStory({ navigateBack = noOpt, disableAddButton = true, addUsers = noOpt }),
		SquadInviteTopBarEnabled = setupStory({ navigateBack = noOpt, disableAddButton = false, addUsers = noOpt }),
	},
}
