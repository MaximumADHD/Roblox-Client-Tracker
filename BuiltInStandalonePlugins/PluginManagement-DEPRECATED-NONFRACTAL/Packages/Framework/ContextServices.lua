--[[
	Public interface for ContextServices
]]

local Src = script

local mapToProps = require(Src.mapToProps)
local provide = require(Src.provide)

local ContextItem = require(Src.ContextItem)
local Focus = require(Src.Focus)
local Mouse = require(Src.Mouse)
local Plugin = require(Src.Plugin)
local Localization = require(Src.Localization)
local Store = require(Src.Store)
local Theme = require(Src.Theme)

local ContextServices = {
	-- Wrap a component to use context
	mapToProps = mapToProps,

	-- Provide ContextItems to your plugin
	provide = provide,

	-- ContextItems
	ContextItem = ContextItem,
	Focus = Focus,
	Mouse = Mouse,
	Plugin = Plugin,
	Localization = Localization,
	Store = Store,
	Theme = Theme,
}

return ContextServices