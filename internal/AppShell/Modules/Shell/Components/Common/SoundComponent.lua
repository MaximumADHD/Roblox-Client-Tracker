--[[
		A simple sound component

		Props:
			SoundName : string - The name of the sound
]]
local RobloxGui = game:GetService("CoreGui").RobloxGui
local Modules = RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local GlobalSettings = require(Modules.Shell.GlobalSettings)

return function(props)
	local soundName = props.SoundName
	local soundsUrl = GlobalSettings.Sounds[soundName]
	return Roact.createElement('Sound',
	{
		SoundId = soundsUrl
	})
end
