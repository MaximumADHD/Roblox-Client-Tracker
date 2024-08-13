local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local React = require(CorePackages.Packages.React)
local useProperty = require(CorePackages.Workspace.Packages.GuiObjectUtils).useProperty
local GetFFlagUsePropertyUpdates = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUsePropertyUpdates

local function useLocalPlayer(): Player?
	if GetFFlagUsePropertyUpdates() then
		return useProperty(Players, "LocalPlayer")
	end

	local localPlayer, setLocalPlayer = React.useState(Players.LocalPlayer)

	React.useEffect(function()
		local localPlayerConnection = Players:GetPropertyChangedSignal("LocalPlayer"):Connect(function()
			setLocalPlayer(Players.LocalPlayer)
		end)

		return function()
			localPlayerConnection:Disconnect()
		end
	end, {})
	
	return localPlayer
end

return useLocalPlayer
