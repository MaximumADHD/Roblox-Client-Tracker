--[[
	Provides components access to either DraftsService or MockDraftsService, depending
	on what main has selected
--]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

return Roact.createContext("DraftsService")
