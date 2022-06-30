--[[
	A hook that connects to a Roblox event.
]]

local CorePackages = game:GetService("CorePackages")
local VarargHooks = require(CorePackages.AppTempCommon.Hooks.VarargHooks)

local function useExternalEvent(event: RBXScriptSignal, callback: (...any) -> ())
	VarargHooks.useEffect(function()
		local connection = event:Connect(callback)
		return function()
			connection:Disconnect()
		end
	end, event, callback)
end

return useExternalEvent
