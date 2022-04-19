--[[
	A hook that connects to a Roblox event.
]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local function useExternalEvent(event: RBXScriptSignal, callback: () -> any?)
	React.useEffect(function()
		local connection = event:Connect(callback)
		return function()
			connection:Disconnect()
		end
	end, {event :: any, callback})
end

return useExternalEvent
