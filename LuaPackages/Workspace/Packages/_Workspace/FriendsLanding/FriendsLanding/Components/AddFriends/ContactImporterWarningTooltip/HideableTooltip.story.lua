local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local Dash = dependencies.Dash
local HideableTooltip = require(script.Parent)

local DEFAULT_PROPS: HideableTooltip.Props = {
	onClick = Dash.noop,
	showTooltip = true,
	bodyText = "a",
	headerText = "b",
}

return {
	controls = nil,
	stories = {
		HideableTooltip = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(HideableTooltip, Dash.join(DEFAULT_PROPS, storyProps)),
			})
		end,

		HiddenHideableTooltip = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(
					HideableTooltip,
					Dash.join(DEFAULT_PROPS, {
						showTooltip = false,
					}, storyProps)
				),
			})
		end,
	},
}
