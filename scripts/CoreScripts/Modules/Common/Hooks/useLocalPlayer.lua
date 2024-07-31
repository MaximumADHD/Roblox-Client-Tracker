local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local React = require(CorePackages.Packages.React)

local function useLocalPlayer(): Player?
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
