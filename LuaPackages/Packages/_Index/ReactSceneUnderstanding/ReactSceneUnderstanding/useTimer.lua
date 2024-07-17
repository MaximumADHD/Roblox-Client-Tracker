local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local RunService = game:GetService("RunService")

local React = require(Root.Parent.React)

local useEffect = React.useEffect
local useRef = React.useRef

local function useTimer(secondsToWait: number, callback: () -> ())
	local elapsed = useRef(0)

	useEffect(function()
		local conn = RunService.Heartbeat:Connect(function(dt)
			elapsed.current += dt

			if secondsToWait <= 0 or elapsed.current > secondsToWait then
				elapsed.current = 0
				callback()
			end
		end)

		return function()
			conn:Disconnect()
		end
	end, { secondsToWait, callback })
end

return useTimer
