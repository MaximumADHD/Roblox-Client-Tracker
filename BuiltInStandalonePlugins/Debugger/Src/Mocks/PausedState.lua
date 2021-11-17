--!strict
--[[
PausedState:
- reason : Enum.DebuggerPauseReason (temporarily string)
- threadId : number
- allThreadsPaused : boolean
- breakpoint : Breakpoint.Breakpoint
]]--
local main = script.Parent.Parent.Parent
local Models = main.Src.Models
local Breakpoint = require(Models.Breakpoint)

local PausedState = {}

function PausedState.new(reason : string, threadId : number, allThreadsPaused : boolean, breakpoint : Breakpoint.Breakpoint)	
	local self = {
		Reason = reason,
		ThreadId = threadId,
		AllThreadsPaused = allThreadsPaused,
		Breakpoint = breakpoint,
	}
	
	return {
		Reason = self.Reason,
		ThreadId =  self.ThreadId,
		AllThreadsPaused =  self.AllThreadsPaused,
		Breakpoint = self.Breakpoint,
	}
end

export type PausedState = typeof(PausedState.new("DefaultReason", 1, true, Breakpoint.mockBreakpoint({}, 1)))
return PausedState
