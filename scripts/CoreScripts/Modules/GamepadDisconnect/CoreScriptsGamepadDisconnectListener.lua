local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local EventIngestService = game:GetService("EventIngestService")
local React = require(CorePackages.Packages.React)
local InputUi = require(CorePackages.Workspace.Packages.InputUi)
local GamepadDisconnectedModal = InputUi.Gamepad.GamepadDisconnectedModal
local useGamepadDisconnectOverlayEffect = InputUi.Gamepad.useGamepadDisconnectOverlayEffect
local InGameMenuConstants = require(CoreGui.RobloxGui.Modules.InGameMenuConstants)
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest
local eventIngest = EventIngest.new(EventIngestService)

local GetFFlagGamepadAnalytics = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGamepadAnalytics

type ReactNode = React.ReactNode

local function CoreScriptsGamepadDisconnectListener(): ReactNode?
	local shouldShow, setShouldShow = React.useState(false)
	local hideOverlay = React.useCallback(function()
		setShouldShow(false)
	end, { setShouldShow } :: { any })
	local showOverlay = React.useCallback(function()
		setShouldShow(true)
	end, { setShouldShow } :: { any })

	if GetFFlagGamepadAnalytics() then
		useGamepadDisconnectOverlayEffect(showOverlay, hideOverlay, eventIngest, "InExperience")
	else
		useGamepadDisconnectOverlayEffect(showOverlay, hideOverlay)
	end

	-- We should probably migrate some version of CentralOverlay to be usable in CoreScripts
	-- For now, we can just make a ScreenGui and mount it for each case.
	if shouldShow then
		return React.createElement("ScreenGui", {
			DisplayOrder = InGameMenuConstants.DisplayOrder.HeadsetDisconnectedDialog,
			IgnoreGuiInset = true,
			OnTopOfCoreBlur = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			GamepadDisconnectedModal = React.createElement(GamepadDisconnectedModal),
		})
	else
		return nil
	end
end

return CoreScriptsGamepadDisconnectListener
