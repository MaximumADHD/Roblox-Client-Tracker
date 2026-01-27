--[[
Registers all integrations and returns table of configurations from each integration
]]

local Settings = script:FindFirstAncestor("Settings")

local SettingsFlags = require(Settings.Flags)
local FFlagRefactorInExpSettingsInDevelopment = SettingsFlags.FFlagRefactorInExpSettingsInDevelopment

-- Modules
local Integrations = Settings.Integrations

-- Core Module
local Settings
if FFlagRefactorInExpSettingsInDevelopment then
	Settings = require(Integrations.Settings)
end
local Constants = require(Integrations.Constants)
local Utils = require(Integrations.Utils)

return {
	Settings = Settings,
	Constants = Constants,
	Utils = Utils,
}
