--!strict

local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserControlModuleEnabledAPI = FlagUtil.getUserFlag("UserControlModuleEnabledAPI")

local CONNECTIONS = {
	SERVER_AUTHORITY_CHANGED = "SERVER_AUTHORITY_CHANGED",
	ACTIONS_RELOADED = "ACTIONS_RELOADED",
}

-- The Module
export type ActionControllerType = {
	new: () -> ActionControllerType,
	Enable: (ActionControllerType, enable: boolean) -> boolean,

	enabled: boolean,
}

local ActionController = {} :: ActionControllerType
(ActionController :: any).__index = ActionController

function ActionController.new()
	local self = setmetatable({}, ActionController)

	self.enabled = true

	return self
end

function ActionController.initializeActions(data, playerData)
	data.connectionUtil:trackConnection(CONNECTIONS.SERVER_AUTHORITY_CHANGED,
		data.eventBus:subscribe(CONNECTIONS.SERVER_AUTHORITY_CHANGED):Connect(function()
			playerData.actions = {}
		end)
	)

	if playerData.actions.MoveAction and playerData.actions.JumpAction then return end
	if not playerData.player then return end

	-- may fail because the player's InputContexts may not be immediately available when the player is added
	pcall(function()
		local contextFolder = script.Parent.Parent.InputContexts
		if data.isServerAuthority then
			contextFolder = playerData.player.InputContexts
		end
		local characterContext = contextFolder.CharacterContext

		playerData.actions = {
			MoveAction = characterContext.MoveAction,
			JumpAction = characterContext.JumpAction,
		}

		data.eventBus:publish(CONNECTIONS.ACTIONS_RELOADED)
	end)
end

function ActionController.update(playerData)
	if FFlagUserControlModuleEnabledAPI then
		if not playerData.actions["MoveAction"] or not playerData.actions["JumpAction"] then
			return
		end

		local controlAPI = playerData.playerModule.ControlModule

		playerData.actions["MoveAction"].Enabled = controlAPI.Enabled
		playerData.actions["JumpAction"].Enabled = controlAPI.Enabled
	end

	playerData.moveVector = playerData.actions.MoveAction:GetState()
	playerData.isJumping = playerData.actions.JumpAction:GetState()
end

function ActionController:Enable(enable: boolean)
	-- empty function to be removed when ControlModule no longer manages active controller
end

return ActionController
