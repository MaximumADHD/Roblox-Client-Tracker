--!nonstrict

local Players = game:GetService("Players")

game:DefineFastFlag("EnableSaveUserPins", false)

return function()
	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	return game:GetFastFlag("EnableSaveUserPins")
end
