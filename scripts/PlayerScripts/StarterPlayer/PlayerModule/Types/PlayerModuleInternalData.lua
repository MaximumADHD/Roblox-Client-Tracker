--!strict
local PlayerModule = require(script.Parent.Parent)
local ControlModuleData = require(script.Parent.ControlModuleData)
local EngineInterfaceData = require(script.Parent.EngineInterfaceData)

export type PlayerModuleInternalData = {
	-- the public API for this player's controls
	playerModule: PlayerModule.PlayerModule,

	controlModule: ControlModuleData.ControlModuleData,

	engineInterface: EngineInterfaceData.EngineInterfaceData,

	-- holds the connects to major Roblox services
	connectionUtil: any, -- ConnectionUtil.ConnectionUtilType

	eventBus: any, -- EventBus.EventBus

	isServerAuthority: boolean,
}

return {}
