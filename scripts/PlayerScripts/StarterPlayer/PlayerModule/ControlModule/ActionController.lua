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

function ActionController.initializeActions(data)
	data.connectionUtil:trackConnection(CONNECTIONS.SERVER_AUTHORITY_CHANGED,
		data.eventBus:subscribe(CONNECTIONS.SERVER_AUTHORITY_CHANGED):Connect(function()
			data.actions = {}
		end)
	)

	if data.actions.MoveAction and data.actions.JumpAction then return end
	if not data.player then return end

	-- may fail because the player's InputContexts may not be immediately available when the player is added
	pcall(function()
		local contextFolder = script.Parent.Parent.InputContexts
		if data.isServerAuthority then
			contextFolder = data.player.InputContexts
		end
		local characterContext = contextFolder.CharacterContext

		data.actions = {
			MoveAction = characterContext.MoveAction,
			JumpAction = characterContext.JumpAction,
		}

		data.eventBus:publish(CONNECTIONS.ACTIONS_RELOADED)
	end)
end

function ActionController.update(data)
	if FFlagUserControlModuleEnabledAPI then
		if not data.actions["MoveAction"] or not data.actions["JumpAction"] then
			return
		end

		local controlAPI = data.playerModule.ControlModule

		data.actions["MoveAction"].Enabled = controlAPI.Enabled
		data.actions["JumpAction"].Enabled = controlAPI.Enabled
	end

	data.moveVector = data.actions.MoveAction:GetState()
	data.isJumping = data.actions.JumpAction:GetState()
end

function ActionController:Enable(enable: boolean)
	-- empty function to be removed when ControlModule no longer manages active controller
end

return ActionController
