--!strict
local PlayerModule = require(script.Parent.Parent)
local ControlModuleData = require(script.Parent.ControlModuleData)

export type PlayerModuleInternalData = {
	-- the public API for this player's controls
	playerModule: PlayerModule.PlayerModule,

	controlModule: ControlModuleData.ControlModuleData,

	player: Player?,
	-- reference to the player's character, if it exists
	character: Model?,

	-- holds the connects to major Roblox services
	connectionUtil: any, -- ConnectionUtil.ConnectionUtilType

	eventBus: any, -- EventBus.EventBus

	isServerAuthority: boolean,
}

return {}
