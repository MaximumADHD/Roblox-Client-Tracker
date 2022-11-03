--[[
	A hook that connects to a Roblox event.
]]

local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)
local dependencyArray = require(script.Parent.dependencyArray)

local function useExternalEvent(event: RBXScriptSignal, callback: (...any) -> ())
	React.useEffect(function()
		local connection = event:Connect(callback)
		return function()
			connection:Disconnect()
		end
	end, dependencyArray(event, callback))
end

return useExternalEvent
