local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local playerList = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local CoreScriptsCommon = require(CorePackages.Workspace.Packages.CoreScriptsCommon)
local MouseIconOverrideService = CoreScriptsCommon.MouseIconOverrideService
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagGameInviteModalUnlockMouse = SharedFlags.FFlagGameInviteModalUnlockMouse
local GameInvitePackage = require(CorePackages.Workspace.Packages.GameInvite)
local renderCoreScriptGameInviteModalContainer = GameInvitePackage.renderCoreScriptGameInviteModalContainer
local GameInviteModalManager = GameInvitePackage.GameInviteModalManager
local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)

local GAME_INVITE_MOUSE_OVERRIDE_KEY = "GameInviteModal"

local gameInviteCoreScriptSideEffectManager = function(isModalOpen: boolean)
	if isModalOpen then
		playerList:HideTemp("GameInviteMenu", true)
		if FFlagGameInviteModalUnlockMouse and UserInputService.MouseEnabled and not VRService.VREnabled then
			MouseIconOverrideService.push(GAME_INVITE_MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
		end
	else
		playerList:HideTemp("GameInviteMenu", false)
		if FFlagGameInviteModalUnlockMouse then
			MouseIconOverrideService.pop(GAME_INVITE_MOUSE_OVERRIDE_KEY)
		end
	end
end

renderCoreScriptGameInviteModalContainer(ApolloClient)
GameInviteModalManager.ToggleGameInviteModalEvent.Event:Connect(gameInviteCoreScriptSideEffectManager)
