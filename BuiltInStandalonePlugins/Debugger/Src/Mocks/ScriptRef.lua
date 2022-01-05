--!strict
--[[
ScriptRef:
]]--

local ScriptRef = {}

function ScriptRef.new()		
	return "TestScript" .. math.random()
end

export type ScriptRef = typeof(ScriptRef.new())
return ScriptRef
