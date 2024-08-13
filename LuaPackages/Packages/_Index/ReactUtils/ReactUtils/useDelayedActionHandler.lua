local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

local function useDelayedActionHandler(
	delayTimeSeconds: number,
	throttleTimeSeconds: number?,
	action: () -> ()
): () -> ()
	local currentThreadRef = React.useRef(nil :: thread?)
	local lastThreadStartTime = React.useRef(0)

	-- Internal function to handle the delayed action
	local function handleAction()
		local currentTime = os.clock()

		-- Check if the last action was started within the throttle time
		if throttleTimeSeconds ~= nil and lastThreadStartTime.current ~= nil then
			if currentTime - lastThreadStartTime.current < throttleTimeSeconds then
				return
			end
		end

		lastThreadStartTime.current = currentTime
		local currentThread = currentThreadRef.current
		-- Cancel the previous thread if it exists
		if currentThread ~= nil then
			task.cancel(currentThread)
		end

		-- Start a new delayed action
		currentThreadRef.current = task.delay(delayTimeSeconds, function()
			action() -- Perform the action
		end)
	end

	React.useEffect(function()
		return function()
			local currentThread = currentThreadRef.current
			-- Cancel the previous thread if it exists
			if currentThread ~= nil then
				task.cancel(currentThread)
			end
		end
	end, { currentThreadRef } :: { any })

	return handleAction
end

return useDelayedActionHandler
