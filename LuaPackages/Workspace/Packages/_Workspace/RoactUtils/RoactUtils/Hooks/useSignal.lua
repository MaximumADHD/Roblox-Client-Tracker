--[[
	A hook that connects a callback to a Signal.
]]

local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)
local AppCommonLib = require(Packages.AppCommonLib)
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
