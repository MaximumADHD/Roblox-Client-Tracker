--[[
	Modules for each SettingsPage are required here.
]]

local Avatar = require(script.Parent.Avatar)
local Options = require(script.Parent.Options)
local BasicInfo = require(script.Parent.BasicInfo)
local DeveloperSubscriptions = require(script.Parent.DeveloperSubscriptions)

local DFFlagGameSettingsWorldPanel = settings():GetFFlag("GameSettingsWorldPanel3")
local FFlagStudioGameSettingsAccessPermissions = settings():GetFFlag("StudioGameSettingsAccessPermissions")
local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")

local World = nil
if DFFlagGameSettingsWorldPanel then
	World = require(script.Parent.World)
end

local AccessPermissions = nil
if FFlagStudioGameSettingsAccessPermissions then
	AccessPermissions = require(script.Parent.AccessPermissions)
end

local SettingsPages = {
	["Avatar"] = Avatar,
	["Options"] = Options,
	["Basic Info"] = BasicInfo,
}

if DFFlagGameSettingsWorldPanel then
	SettingsPages["World"] = World
end

if FFlagStudioGameSettingsAccessPermissions then
	SettingsPages["Access Permissions"] = AccessPermissions
end

if DFFlagDeveloperSubscriptionsEnabled then
	SettingsPages["Developer Subscriptions"] = DeveloperSubscriptions
end

return SettingsPages
