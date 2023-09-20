--!strict
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local React = require(Packages.React)

local ClientSettings = require(script.Parent)
local ClientSettingsUtility = require(script.Parent.ClientSettingsUtility)

return function(chatSettings: ClientSettingsUtility.ChatSettings)
	local clientSettings = React.useContext(ClientSettings)

	local interpolatedSettings, setInterpolatedSettings = React.useState({
		BackgroundColor = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings),
		BackgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings),
	})

	React.useEffect(function()
		setInterpolatedSettings({
			BackgroundColor3 = ClientSettingsUtility.getBackgroundColor(chatSettings, clientSettings),
			BackgroundTransparency = ClientSettingsUtility.getBackgroundTransparency(chatSettings, clientSettings),
		})
	end, { chatSettings, clientSettings } :: { any })

	return interpolatedSettings
end
