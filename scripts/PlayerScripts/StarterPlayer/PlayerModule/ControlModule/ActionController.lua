--!strict

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
			data.controlModule.actions = {}
		end)
	)

	if data.controlModule.actions.MoveAction and data.controlModule.actions.JumpAction then return end
	if not data.player then return end

	-- may fail because the player's InputContexts may not be immediately available when the player is added
	pcall(function()
		local contextFolder = script.Parent.Parent.InputContexts
		if data.isServerAuthority then
			contextFolder = data.player.InputContexts
		end
		local characterContext = contextFolder.CharacterContext

		data.controlModule.actions = {
			MoveAction = characterContext.MoveAction,
			JumpAction = characterContext.JumpAction,
		}

		data.eventBus:publish(CONNECTIONS.ACTIONS_RELOADED)
	end)
end

function ActionController.update(data)
	if not data.controlModule.actions["MoveAction"] or not data.controlModule.actions["JumpAction"] then
		return
	end

	local controlAPI = data.playerModule.ControlModule

	data.controlModule.actions["MoveAction"].Enabled = controlAPI.Enabled
	data.controlModule.actions["JumpAction"].Enabled = controlAPI.Enabled

	data.controlModule.moveVector = data.controlModule.actions.MoveAction:GetState()
	data.controlModule.isJumping = data.controlModule.actions.JumpAction:GetState()
end

function ActionController:Enable(enable: boolean)
	-- empty function to be removed when ControlModule no longer manages active controller
end

return ActionController
