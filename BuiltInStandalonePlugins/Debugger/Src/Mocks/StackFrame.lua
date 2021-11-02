local ScriptRef = require(script.Parent.ScriptRef)

local StackFrame = {}
StackFrame.__index = StackFrame

function StackFrame.new(line : number, scriptRef : ScriptRef.ScriptRef, frameName : string, frameType)
	local self = {
		Line = line,
		Script = scriptRef,
		FrameName = frameName,
		FrameType = frameType,
		Populated = false,
		FrameId = 0,
		PopulatableType = "StackFrame"
	}
	
	setmetatable(self, StackFrame)
	return self
end

function StackFrame:MockSetChildren(newVariables)
	assert(newVariables)
	self.Locals = newVariables["Locals"]
	self.Globals = newVariables["Globals"]
	self.Upvalues = newVariables["Upvalues"]
	self.Populated = true
end

export type StackFrame = typeof(StackFrame.new(0, ScriptRef.new(), "DefaultFrameName", nil))
return StackFrame
