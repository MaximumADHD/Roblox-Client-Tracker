local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local GameInviteModalManager = require(CorePackages.Workspace.Packages.GameInvite).GameInviteModalManager
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement
local Signal = SignalLib.Signal

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConnectionsToFriendsRename = SharedFlags.FFlagConnectionsToFriendsRename

-- TODO APPEXP-4782: update mappedSignal to work on console if sidesheet can be open when modal is open
local gameInviteModalChangedSignal = Signal.new()
local mappedGameInviteModalOpenSignal = MappedSignal.new(gameInviteModalChangedSignal, function()
	return GameInviteModalManager:isGameModalOpen()
end)
GameInviteModalManager.ToggleGameInviteModalEvent.Event:Connect(function()
	gameInviteModalChangedSignal:fire()
end)

local function shouldShowInviteFriends(): boolean
	return not RunService:IsStudio() and Players.LocalPlayer ~= nil and Players.LocalPlayer.UserId > 0
end

return ChromeService:register({
	initialAvailability = if shouldShowInviteFriends()
		then ChromeService.AvailabilitySignal.Available
		else ChromeService.AvailabilitySignal.Unavailable,
	id = "invite_friends",
	label = if FFlagConnectionsToFriendsRename
		then "CoreScripts.InGameMenu.PageTitle.InviteFriends"
		else "CommonUI.Features.Label.InviteConnections",
	sideSheetPlacement = SideSheetPlacement.Vertical,
	activated = InGameMenuIntegrationUtils.toggleInviteFriendsPage,
	isActivated = mappedGameInviteModalOpenSignal,
	components = {
		Icon = function()
			return CommonIcon("PersonArrowFromBottomRight", nil, mappedGameInviteModalOpenSignal)
		end,
	},
})
