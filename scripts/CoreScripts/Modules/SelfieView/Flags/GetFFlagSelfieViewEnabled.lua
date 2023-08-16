--!strict
local FFlagSelfieViewEnabled: boolean = game:DefineFastFlag("SelfieViewEnabled", false)
local FStringInGameMenuChromeForcedUserIds = game:DefineFastString("SelfieViewForcedUserIds", "")
local ChromeEnabled = require(script.Parent.Parent.Parent.Chrome.Enabled)

local Players = game:GetService("Players")

local GetFFlagSelfieViewEnabled = function(): boolean
	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	for id in FStringInGameMenuChromeForcedUserIds:gmatch("%d+") do
		if localPlayer and tonumber(id) == localPlayer.UserId then
			return true
		end
	end

	-- TODO: ChromeEnabled is only for dogfooding and makes
	-- selfieview and chrome inseparatable. This was done to quickly
	-- setup dogfooding, and should be removed before IXP.
	return FFlagSelfieViewEnabled or ChromeEnabled()
end

return GetFFlagSelfieViewEnabled
