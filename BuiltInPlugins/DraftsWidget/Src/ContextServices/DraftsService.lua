--[[
	Provides components access to either DraftsService or MockDraftsService, depending
	on what main has selected
--]]
local FFlagUpdateDraftsWidgetToDFContextServices = game:GetFastFlag("UpdateDraftsWidgetToDFContextServices")
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

if FFlagUpdateDraftsWidgetToDFContextServices then
	return ContextItem:createSimple("DraftsService")
else
	return Roact.createContext("DraftsService")
end