local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local React = require(CorePackages.Packages.React)
local Songbird = require(CorePackages.Workspace.Packages.Songbird)

local GetFFlagChromePeekArchitecture = require(Chrome.Parent.Flags.GetFFlagChromePeekArchitecture)
local GetFFlagPeekDismissUseZIndex = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekDismissUseZIndex

local function onDismiss()
	ChromeService:dismissCurrentPeek()
end

return if GetFFlagChromePeekArchitecture()
	then ChromeService:register({
		id = "peek_close",
		label = "CoreScripts.TopBar.PeekClose",
		activated = if not GetFFlagPeekDismissUseZIndex() then onDismiss else nil,
		components = {
			Icon = function(props)
				return React.createElement(Songbird.DismissButton, {
					onDismiss = if GetFFlagPeekDismissUseZIndex() then onDismiss else nil,
				})
			end,
		},
		initialAvailability = ChromeService.AvailabilitySignal.Available,
	})
	else nil
