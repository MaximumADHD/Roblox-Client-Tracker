local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama
local SquadInviteShareLinkButton =
	require(SquadWidget.SquadLobby.Components.SquadInviteShareLinkButton.SquadInviteShareLinkButton)

local setupStory = function(storyProps, config: { shareLinkUrl: string? })
	local store = Rodux.Store.new(function()
		return {
			ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
		}
	end, {}, { Rodux.thunkMiddleware })

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 327, 0, 62),
		BackgroundTransparency = 0,
		BackgroundColor3 = Color3.fromRGB(35, 37, 39),
	}, {
		storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			Roact.createElement(
				SquadInviteShareLinkButton,
				llama.Dictionary.join({
					shareLinkUrl = config.shareLinkUrl,
				}, storyProps)
			),
		}),
	})
end

return {
	stories = {
		SquadInviteShareLinkButton = function(storyProps)
			return setupStory(storyProps, {
				shareLinkUrl = "http://roblox.com/this_is_a_really_long_url_that_should_be_truncated_because_it_is_too_long",
			})
		end,
	},
}
