--!nonstrict
--[[
	A hook that connects to a Roblox event.
]]

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

local function useExternalEvent(event: RBXScriptSignal, callback: (...any) -> ())
	React.useEffect(function()
		local connection = event:Connect(callback)
		return function()
			connection:Disconnect()
		end
	end, { event, callback })
end

return useExternalEvent
