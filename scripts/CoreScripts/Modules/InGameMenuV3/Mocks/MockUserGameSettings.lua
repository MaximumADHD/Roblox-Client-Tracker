--[[
	A fake service for UserSettings():GetService("UserGameSettings")
]]

local MockUserGameSettings = {}
MockUserGameSettings.__index = MockUserGameSettings

function MockUserGameSettings.new()
	local fullscreenChangedEvent = Instance.new("BindableEvent")

	local self = {
		FullscreenChanged = {
			Connect = function(_, callback)
				return fullscreenChangedEvent.Event:Connect(callback)
			end,
			GoFullscreen = function()
				fullscreenChangedEvent:Fire(true)
			end
		},
	}

	setmetatable(self, {
		__index = MockUserGameSettings,
	})
	return self
end

function MockUserGameSettings:InFullScreen()
	return false
end

return MockUserGameSettings
