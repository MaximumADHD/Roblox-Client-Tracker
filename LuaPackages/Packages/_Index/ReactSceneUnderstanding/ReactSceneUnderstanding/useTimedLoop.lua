local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)

local useRef = React.useRef
local useEffect = React.useEffect

local function useTimedLoop(delaySeconds: number, callback: () -> ())
	local timeRemaining = useRef(0)
	local loopStartTime = useRef(nil :: number?)

	useEffect(function()
		local isRunning = true

		task.spawn(function()
			while isRunning do
				local initialDelay = delaySeconds
				if timeRemaining.current > 0 then
					initialDelay = timeRemaining.current
					timeRemaining.current = 0
				end
				loopStartTime.current = os.clock()

				task.wait(initialDelay)

				if not isRunning then
					break
				end

				callback()
			end
		end)

		return function()
			isRunning = false

			if loopStartTime.current then
				timeRemaining.current += os.clock() - loopStartTime.current
			end
		end
	end, { delaySeconds, callback } :: { unknown })
end

return useTimedLoop
