--!strict
--[[
	Types used by PlayerModule and its submodules. This is the data which is shared across modules. 
--]]

local ControlModuleData = require(script.ControlModuleData)
local PlayerModuleInternalData = require(script.PlayerModuleInternalData)

export type ControlModuleData = ControlModuleData.ControlModuleData
export type PlayerModuleInternalData = PlayerModuleInternalData.PlayerModuleInternalData

return {}
