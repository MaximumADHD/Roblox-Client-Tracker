--!strict
--[[
ScriptRef:
]]--

local ScriptRef = {}

function ScriptRef.new()		
	return "TestScript"
end

export type ScriptRef = typeof(ScriptRef.new())
return ScriptRef
