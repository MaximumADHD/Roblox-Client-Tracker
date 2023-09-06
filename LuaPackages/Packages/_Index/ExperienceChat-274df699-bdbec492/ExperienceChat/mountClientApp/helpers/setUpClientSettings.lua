local UserGameSettings = UserSettings():GetService("UserGameSettings")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Actions = ExperienceChat.Actions
local ClientSettingsLoaded = require(Actions.ClientSettingsLoaded)
local ClientSettingsChanged = require(Actions.ClientSettingsChanged)

return function(store)
	store:dispatch(ClientSettingsLoaded({
		preferredTransparency = UserGameSettings.PreferredTransparency,
	}))

	UserGameSettings:GetPropertyChangedSignal("PreferredTransparency"):Connect(function()
		store:dispatch(ClientSettingsChanged("preferredTransparency", UserGameSettings.PreferredTransparency))
	end)
end
