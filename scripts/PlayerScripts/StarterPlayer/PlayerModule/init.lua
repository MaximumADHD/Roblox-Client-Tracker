--!strict
--[[
	PlayerModule - This module file returns the public API for PlayerModule.
--]]

export type PlayerModule = {
	ControlModule: ControlModule,
}
export type ControlModule = {
	Enabled: boolean,
}

local PlayerModuleAPI : PlayerModule = {
	ControlModule = {
		Enabled = true,
	},
}

return PlayerModuleAPI
