local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local GetFFlagDebugEnableUnibarDummyIntegrations =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagDebugEnableUnibarDummyIntegrations

return ChromeService:register({
	initialAvailability = if GetFFlagDebugEnableUnibarDummyIntegrations()
		then ChromeService.AvailabilitySignal.Available
		else ChromeService.AvailabilitySignal.Unavailable,
	id = "dummy_window_2",
	label = "CoreScripts.TopBar.Menu",
	startingWindowPosition = UDim2.new(1, -245, 0, 95),
	persistWindowState = true,
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
