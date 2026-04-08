local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local React = require(Packages.React)

local useCallback = React.useCallback
local useEffect = React.useEffect
local useRef = React.useRef
local useState = React.useState

local DEFAULT_DISMISS_TIMEOUT = 5 -- seconds

local function useAutoDismissState(defaultIsActive: boolean?, dismissTimeout: number?): (boolean, () -> ())
	local timerRef = useRef(nil)
	local isActive, setIsActive = useState(defaultIsActive or true)

	local onInteraction = useCallback(function()
		if timerRef.current then
			task.cancel(timerRef.current)
		end

		setIsActive(true)
		timerRef.current = task.delay(dismissTimeout or DEFAULT_DISMISS_TIMEOUT, function()
			setIsActive(false)
		end)
	end, { dismissTimeout, isActive })

	useEffect(function()
		onInteraction()

		return function()
			if timerRef.current then
				task.cancel(timerRef.current)
				timerRef.current = nil
			end
		end
	end, { dismissTimeout })

	return isActive, onInteraction
end

return useAutoDismissState
