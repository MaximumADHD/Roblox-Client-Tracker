local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local ShowMoreWrapper = require(script.Parent)

local SMALL_SCREEN_SIZE = 400
local BASE_FRAME_HEIGHT = 200

return function(props)
	return Roact.createElement(
		ShowMoreWrapper,
		llama.Dictionary.join({
			listComponent = function(props)
				return Roact.createElement(
					"Frame",
					{ Size = UDim2.new(0, SMALL_SCREEN_SIZE, 0, SMALL_SCREEN_SIZE), BackgroundTransparency = 1 },
					{
						layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							SortOrder = Enum.SortOrder.LayoutOrder,
							VerticalAlignment = Enum.VerticalAlignment.Center,
						}),
						baseFrame = Roact.createElement(
							"TextLabel",
							{ Size = UDim2.new(1, 0, 0, BASE_FRAME_HEIGHT), Text = "Example", LayoutOrder = 1 }
						),
						props.renderShowMore(2),
					}
				)
			end,
			friends = {},
		}, props)
	)
end
