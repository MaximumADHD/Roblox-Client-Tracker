--!strict
local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)

local Players = game:GetService("Players")

local function useLocalPlayer(): Player
	return React.useMemo(function()
		local localPlayer = Players.LocalPlayer
		while not localPlayer do
			Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
			localPlayer = Players.LocalPlayer
		end
		assert(localPlayer ~= nil)
		return localPlayer
	end)
end

return useLocalPlayer
