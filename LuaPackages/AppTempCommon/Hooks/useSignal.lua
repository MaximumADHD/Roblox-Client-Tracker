--[[
	A hook that connects a callback to a Signal.
]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local dependencyArray = require(script.Parent.dependencyArray)

type Signal = AppCommonLib.Signal

local function useSignal(signal: Signal, callback: (...any) -> ())
	React.useEffect(function()
		local connection = signal:connect(callback)
		return function()
			connection:disconnect()
		end
	end, dependencyArray(signal, callback))
end

return useSignal
