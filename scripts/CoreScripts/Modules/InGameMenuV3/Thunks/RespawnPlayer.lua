local Players = game:GetService("Players")

local InGameMenu = script.Parent.Parent

local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

return function(store)
	local state = store:getState()
	if state.respawn.enabled then
		if state.respawn.customCallback then
			state.respawn.customCallback:Fire()
		else
			local character = Players.LocalPlayer.Character
			if character ~= nil then
				-- For backwards compatibility with games that disable respawning
				-- by renaming the humanoid instance, we don't use FindFirstChildOfClass.
				local humanoid = character:FindFirstChild("Humanoid")
				if humanoid ~= nil and humanoid:IsA("Humanoid") then
					humanoid.Health = 0
				end
			end
		end
	end

	store:dispatch(SetRespawning(false))
	store:dispatch(CloseMenu)
	SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.AnalyticsRespawnCharacterName, {confirmed = Constants.AnalyticsConfirmedName})
end