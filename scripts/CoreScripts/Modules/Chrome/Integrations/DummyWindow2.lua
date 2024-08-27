local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ChromeService = require(script.Parent.Parent.Service)
local CommonIcon = require(script.Parent.CommonIcon)
local Constants = require(script.Parent.Parent.Unibar.Constants)

local GetFFlagDebugEnableUnibarDummyIntegrations =
	require(script.Parent.Parent.Flags.GetFFlagDebugEnableUnibarDummyIntegrations)

return ChromeService:register({
	initialAvailability = if GetFFlagDebugEnableUnibarDummyIntegrations()
		then ChromeService.AvailabilitySignal.Available
		else ChromeService.AvailabilitySignal.Unavailable,
	id = "dummy_window_2",
	label = "CoreScripts.TopBar.Menu",
	startingWindowPosition = UDim2.new(1, -245, 0, 95),
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/home_on")
		end,
		Window = function(props)
			return React.createElement("Frame", {
				BackgroundTransparency = 0,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				Corner = React.createElement("UICorner", {
					CornerRadius = Constants.CORNER_RADIUS,
				}),
			})
		end,
	},
})
