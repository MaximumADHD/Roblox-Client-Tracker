local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

-- Chrome
local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement
local ChromeConstants = require(Chrome.ChromeShared.Unibar.Constants)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal

-- SwitchServer
local SwitchServer = require(CorePackages.Workspace.Packages.SwitchServer)
local GetSwitchServerStore = SwitchServer.GetSwitchServerStore
local SwitchServerConstants = SwitchServer.Constants
local switchServerStore = GetSwitchServerStore(false)

-- Signals
local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = AppCommonLib.Signal
local SignalsUtils = require(CorePackages.Workspace.Packages.SignalsUtils)

local isOpen = false
local openSignal = Signal.new()
local mappedSignal = MappedSignal.new(openSignal, function()
	return isOpen
end)

SignalsUtils.createDetachedEffect(function(scope)
	local isConfirmationOpen = switchServerStore.isConfirmationOpen(scope)
	if isOpen ~= isConfirmationOpen then
		isOpen = isConfirmationOpen
		openSignal:fire()
	end
end)

local switchServerIntegration = ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	id = ChromeConstants.SWITCH_SERVER_ID,
	label = SwitchServerConstants.BUTTON.LABEL,
	sideSheetPlacement = SideSheetPlacement.Page,
	activated = function()
		switchServerStore.setConfirmationOpen(true)
	end,
	isActivated = mappedSignal,
	components = {
		Icon = function(_)
			return CommonIcon("TwoLocationPinsConnectingArrow", nil, mappedSignal)
		end,
	},
})

SignalsUtils.createDetachedEffect(function(scope)
	local shouldEnableSwitchServer = switchServerStore.shouldEnableSwitchServer(scope)

	if shouldEnableSwitchServer then
		switchServerIntegration.availability:available()
	else
		switchServerIntegration.availability:unavailable()
	end
end)

return switchServerIntegration
