local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))

local Http = require(ShellModules:FindFirstChild('Http'))

local GameplaySettingsData = {}

local crossplayEnabled = nil

function GameplaySettingsData.Initialize()
	spawn(
		function()
			local waitDuration = 2
			while true do
				local jsonobject = Http.GetCrossplayEnabledStatusAsync()

				if jsonobject ~= nil then
					crossplayEnabled = jsonobject.isEnabled
					break
				end

				wait(waitDuration)
				waitDuration = waitDuration * 2
			end
		end
	)
end

function GameplaySettingsData.GetCrossplayEnabledStatus()
	while crossplayEnabled == nil do
		wait()
	end
	return crossplayEnabled
end

function GameplaySettingsData.SetCrossplayEnabledStatus(val)
	crossplayEnabled = val
	Http.PostCrossplayStatusAsync(val)
end

return GameplaySettingsData

