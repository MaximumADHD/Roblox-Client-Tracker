--!strict
--[[
StackFrame:
- line : number
- scriptRef : ScriptRef 
- frameName : string
- frameType : Enum.DebuggerFrameType (temporarily string)
]]--

local ScriptRef = require(script.Parent.ScriptRef)
local DebuggerVariable = require(script.Parent.DebuggerVariable)

local StackFrame = {}

function StackFrame.new(line : number, scriptRef : ScriptRef.ScriptRef, frameName : string, frameType)
	local self = {
		line = line,
		scriptRef = scriptRef,
		frameName = frameName,
		frameType = frameType,
	}

	return {
		Line = self.line,
		Script = self.scriptRef,
		FrameName = self.frameName,
		FrameType = self.frameType,
		Populated = true,
		Locals = DebuggerVariable.new(1, '', '', ''),
		Globals = DebuggerVariable.new(1, '', '', ''),
		Upvalues = DebuggerVariable.new(1, '', '', ''),
		FrameId = 0
	}
end

export type StackFrame = typeof(StackFrame.new(0, ScriptRef.new(), "DefaultFrameName", nil))
return StackFrame
