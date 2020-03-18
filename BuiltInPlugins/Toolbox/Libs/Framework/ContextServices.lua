--[[
	Public interface for ContextServices
]]

local Src = script

local mapToProps = require(Src.mapToProps)
local provide = require(Src.provide)

local API = require(Src.API)
local ContextItem = require(Src.ContextItem)
local Focus = require(Src.Focus)
local FastFlags = require(Src.FastFlags)
local Localization = require(Src.Localization)
local Mouse = require(Src.Mouse)
local Plugin = require(Src.Plugin)
local Store = require(Src.Store)
local Theme = require(Src.Theme)

local ContextServices = {
	-- Wrap a component to use context
	mapToProps = mapToProps,

	-- Provide ContextItems to your plugin
	provide = provide,

	-- ContextItems
	API = API,
	ContextItem = ContextItem,
	FastFlags = FastFlags,
	Focus = Focus,
	Localization = Localization,
	Mouse = Mouse,
	Plugin = Plugin,
	Store = Store,
	Theme = Theme,
}

return ContextServices