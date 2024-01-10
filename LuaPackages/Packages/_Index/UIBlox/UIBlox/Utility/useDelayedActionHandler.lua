local UIBlox = script:FindFirstAncestor("UIBlox")
local Packages = UIBlox.Parent

local React = require(Packages.React)

local function useDelayedActionHandler(
	delayTimeSeconds: number,
	throttleTimeSeconds: number?,
	action: () -> ()
): () -> ()
	local currentThreadBinding, setCurrentThreadBinding = React.useBinding(nil :: thread?)
	local lastThreadStartTime, setLastThreadStartTime = React.useBinding(0)

	-- Internal function to handle the delayed action
	local function handleAction()
		local currentTime = tick()

		-- Check if the last action was started within the throttle time
		if throttleTimeSeconds then
			assert(throttleTimeSeconds, "Assert throttleTimeSeconds is not nil")
			if currentTime - lastThreadStartTime:getValue() < throttleTimeSeconds then
				return
			end
		end

		setLastThreadStartTime(currentTime)
		local currentThread = currentThreadBinding:getValue()
		-- Cancel the previous thread if it exists
		if currentThread then
			task.cancel(currentThread)
		end

		-- Start a new delayed action
		setCurrentThreadBinding(task.delay(delayTimeSeconds, function()
			action() -- Perform the action
		end))
	end

	React.useEffect(function()
		return function()
			local currentThread = currentThreadBinding:getValue()
			-- Cancel the previous thread if it exists
			if currentThread then
				task.cancel(currentThread)
			end
		end
	end, { currentThreadBinding } :: { any })

	return handleAction
end

return useDelayedActionHandler
