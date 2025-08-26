--!strict
local RunService = game:GetService("RunService")

local MOCK_FRAME_DELTA = 1 / 60

local boundCallbacks = {}
local MockAnimationStepSignal = {
	Connect = function(_, callback: (number) -> ())
		boundCallbacks[callback] = true
		return {
			Disconnect = function()
				boundCallbacks[callback] = nil
			end,
		} :: any
	end,
	Fire = function(_, dt: number)
		for callback, _ in boundCallbacks do
			callback(dt)
		end
	end,
}

return {
	Connect = function(_, callback): RBXScriptConnection
		if _G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ then
			return MockAnimationStepSignal:Connect(callback)
		end

		return RunService.RenderStepped:Connect(callback)
	end,
	Fire = function(_, delta: number?)
		if _G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ then
			MockAnimationStepSignal:Fire(delta or MOCK_FRAME_DELTA)
		else
			error("Cannot manually fire real animation step signal")
		end
	end,
}
