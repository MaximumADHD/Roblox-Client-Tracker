--!strict
local RunService = game:GetService("RunService")

local MOCK_HEARTBEAT_DELTA = 1 / 60

local boundCallbacks = {}
local MockHeartbeat = {
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
		if _G.__OTTER_MOCK_HEARTBEAT__ then
			return MockHeartbeat:Connect(callback)
		end

		return RunService.Heartbeat:Connect(callback)
	end,
	Fire = function(_, delta: number?)
		if _G.__OTTER_MOCK_HEARTBEAT__ then
			MockHeartbeat:Fire(delta or MOCK_HEARTBEAT_DELTA)
		else
			error("Cannot manually fire real Heartbeat")
		end
	end,
}
