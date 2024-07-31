local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local useLocalPlayer = require(script.Parent.useLocalPlayer)

local function usePlayerGui(): PlayerGui?
	local localPlayer = useLocalPlayer()
	local playerGui, setPlayerGui = React.useState(nil :: PlayerGui?)

	React.useEffect(function()
		local playerGuiConnection

		if localPlayer then
			setPlayerGui(localPlayer:FindFirstChildOfClass("PlayerGui"))

			playerGuiConnection = localPlayer.ChildAdded:Connect(function(child)
				if child:IsA("PlayerGui") then
					setPlayerGui(child)
				end
			end)
		end

		return function()
			if playerGuiConnection then
				playerGuiConnection:Disconnect()
			end
		end
	end, {localPlayer})
	
	return playerGui
end

return usePlayerGui
