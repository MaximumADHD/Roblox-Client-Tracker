--!strict
--[[
PausedState:
- reason : Enum.DebuggerPauseReason (temporarily string)
- threadId : number
- allThreadsPaused : boolean
]]--

local Breakpoint = require(script.Parent.Breakpoint)

local PausedState = {}
PausedState.__index = PausedState

function PausedState:SetBreakpointHit(breakpoint : Breakpoint.Breakpoint)
	self.Breakpoint = breakpoint
end

function PausedState.new(reason : string, threadId : number, allThreadsPaused : boolean)	
	local self = {
		Reason = reason,
		ThreadId = threadId,
		AllThreadsPaused = allThreadsPaused,
	}
	setmetatable(self, PausedState)
	return self
end

export type PausedState = typeof(PausedState.new("DefaultReason", 1, true))

return PausedState
