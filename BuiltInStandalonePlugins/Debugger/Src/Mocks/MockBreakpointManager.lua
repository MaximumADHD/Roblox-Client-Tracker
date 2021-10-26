local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Signal = Framework.Util.Signal

local Breakpoint = require(main.Src.Models.Breakpoint)

local MockBreakpointManager = {}
MockBreakpointManager.__index = MockBreakpointManager

function MockBreakpointManager.new() 
	local self = {}
	setmetatable(self, MockBreakpointManager)
	self.MetaBreakpointAdded = Signal.new()
	self.MetaBreakpointChanged = Signal.new()
	self.MetaBreakpointRemoved = Signal.new()
	
	self.deletedBreakpoints = {}
	return self
end

function MockBreakpointManager:RemoveBreakpointById(id : number) 
	self.deletedBreakpoints[id] = true
end

function MockBreakpointManager:GetBreakpointById(id : number)
	return Breakpoint.mockBreakpoint({}, id)
end

return MockBreakpointManager
