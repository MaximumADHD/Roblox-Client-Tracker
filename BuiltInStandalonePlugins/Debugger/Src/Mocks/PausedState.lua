--!strict
--[[
PausedState:
- reason : Enum.DebuggerPauseReason (temporarily string)
- threadId : number
- allThreadsPaused : boolean
]]--

local PausedState = {}

function PausedState.new(reason : string, threadId : number, allThreadsPaused : boolean)	
	local self = {
		Reason = reason,
		ThreadId = threadId,
		AllThreadsPaused = allThreadsPaused,
	}
	
	return {
		Reason = self.Reason,
		ThreadId =  self.ThreadId,
		AllThreadsPaused =  self.AllThreadsPaused,
	}
end

export type PausedState = typeof(PausedState.new("DefaultReason", 1, true))
return PausedState
