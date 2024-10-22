local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)

local GetFFlagEnableChromeWindowOverflowButtonIntegration =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableChromeWindowOverflowButtonIntegration

return if GetFFlagEnableChromeWindowOverflowButtonIntegration()
	then ChromeService:register({
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		id = "overflow_button",
		label = "CoreScripts.TopBar.Overflow",
		components = {
			Icon = function(props)
				return React.createElement(Songbird.OverflowButton)
			end,
		},
	})
	else nil
