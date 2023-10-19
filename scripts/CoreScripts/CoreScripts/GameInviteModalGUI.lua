local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local playerList = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local GameInvitePackage = require(CorePackages.Workspace.Packages.GameInvite)
local renderCoreScriptGameInviteModalContainer = GameInvitePackage.renderCoreScriptGameInviteModalContainer
local GameInviteModalManager = GameInvitePackage.GameInviteModalManager

local gameInviteCoreScriptSideEffectManager = function(isModalOpen: boolean)
	if isModalOpen then
		playerList:HideTemp("GameInviteMenu", true)
	else
		playerList:HideTemp("GameInviteMenu", false)
	end
end

renderCoreScriptGameInviteModalContainer()
GameInviteModalManager.ToggleGameInviteModalEvent.Event:Connect(gameInviteCoreScriptSideEffectManager)
