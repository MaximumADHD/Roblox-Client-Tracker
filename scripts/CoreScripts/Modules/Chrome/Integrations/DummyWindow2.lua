local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ChromeService = require(script.Parent.Parent.Service)
local CommonIcon = require(script.Parent.CommonIcon)
local Constants = require(script.Parent.Parent.Unibar.Constants)

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	id = "dummy_window_2",
	label = "Window",
	startingWindowSize = UDim2.new(0, Constants.DEFAULT_WIDTH_SMALL, 0, Constants.DEFAULT_HEIGHT_SMALL),
	startingWindowPosition = UDim2.new(1, -200, 0, 10),
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/home_on")
		end,
		Window = function(props)
			return React.createElement("Frame", {
				BackgroundTransparency = 0,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				corner = React.createElement("UICorner", {
					CornerRadius = Constants.CORNER_RADIUS,
				}),
			})
		end,
	},
})
