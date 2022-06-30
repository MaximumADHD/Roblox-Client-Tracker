--[[
	A hook that connects a callback to a Signal.
]]

local CorePackages = game:GetService("CorePackages")
local Signal = require(CorePackages.AppTempCommon.Common.Signal)
local VarargHooks = require(CorePackages.AppTempCommon.Hooks.VarargHooks)

type Signal = typeof(Signal.new())

local function useSignal(signal: Signal, callback: (...any) -> ())
	VarargHooks.useEffect(function()
		local connection = signal:connect(callback)
		return function()
			connection:disconnect()
		end
	end, signal, callback)
end

return useSignal
