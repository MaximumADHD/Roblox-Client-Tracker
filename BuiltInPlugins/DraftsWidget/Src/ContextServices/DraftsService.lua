--[[
	Provides components access to either DraftsService or MockDraftsService, depending
	on what main has selected
--]]
local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

return ContextItem:createSimple("DraftsService")