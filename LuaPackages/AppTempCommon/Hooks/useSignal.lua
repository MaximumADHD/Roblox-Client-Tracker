--[[
	A hook that connects a callback to a Signal.
]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Signal = require(CorePackages.AppTempCommon.Common.Signal)
local dependencyArray = require(CorePackages.AppTempCommon.Hooks.dependencyArray)

type Signal = Signal.Signal

local function useSignal(signal: Signal, callback: (...any) -> ())
	React.useEffect(function()
		local connection = signal:connect(callback)
		return function()
			connection:disconnect()
		end
	end, dependencyArray(signal, callback))
end

return useSignal
