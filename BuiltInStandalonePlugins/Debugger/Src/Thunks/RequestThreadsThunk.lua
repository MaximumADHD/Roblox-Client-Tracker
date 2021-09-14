local Plugin = script.Parent.Parent.Parent
local AddThreadId = require(Plugin.Src.Actions.Callstack.AddThreadId)
local RequestCallstackThunk = require(Plugin.Src.Thunks.RequestCallstackThunk)
local ThreadState = require(Plugin.Src.Mocks.ThreadState)

return function(pausedState, dataModel, debuggerStateToken)
	return function(store, contextItems)
		pausedState:requestThreads()
		:andThen(function (threads : { [number] : ThreadState.ThreadState })
			for threadId, threadState in ipairs(threads) do
				store:dispatch(AddThreadId(threadId, threadState:getThreadName(), debuggerStateToken))
				store:dispatch(RequestCallstackThunk(threadState, dataModel, debuggerStateToken))
			end
		end)
		:catch(function (threads : { [number] : ThreadState.ThreadState })
			warn("Encountered an error during asynchronous execution: Request Threads")
			contextItems.analytics:report("ThunkFailed", "RequestThreadsThunk")
		end)
    end
end
