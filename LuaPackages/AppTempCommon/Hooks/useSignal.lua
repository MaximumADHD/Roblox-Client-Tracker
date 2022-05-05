--[[
	A hook that connects a callback to a Signal.
]]

local CorePackages = game:GetService("CorePackages")
local Signal = require(CorePackages.AppTempCommon.Common.Signal)
local React = require(CorePackages.Packages.React)

type Signal = typeof(Signal.new())

local function useSignal(signal: Signal, callback: (...any) -> ())
	React.useEffect(function()
		local connection = signal:connect(callback)
		return function()
			connection:disconnect()
		end
	end, {signal :: any, callback})
end

return useSignal
