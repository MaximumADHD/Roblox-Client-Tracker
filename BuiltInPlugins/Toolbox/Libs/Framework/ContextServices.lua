--[[
	Public interface for ContextServices
]]

local Src = script

local mapToProps = require(Src.mapToProps)
local provide = require(Src.provide)

local Analytics = require(Src.Analytics)
local API = require(Src.API)
local ContextItem = require(Src.ContextItem)
local Focus = require(Src.Focus)
local FastFlags = require(Src.FastFlags)
local Localization = require(Src.Localization)
local Mouse = require(Src.Mouse)
local Navigation = require(Src.Navigation)
local Plugin = require(Src.Plugin)
local PluginActions = require(Src.PluginActions)
local Provider = require(Src.Provider)
local Store = require(Src.Store)
local Theme = require(Src.Theme)
local UILibraryWrapper = require(Src.UILibraryWrapper)

local ContextServices = {
	-- Wrap a component to use context
	mapToProps = mapToProps,

	-- Provide ContextItems to your plugin
	provide = provide,

	-- ContextItems
	Analytics = Analytics,
	API = API,
	ContextItem = ContextItem,
	FastFlags = FastFlags,
	Focus = Focus,
	Localization = Localization,
	Mouse = Mouse,
	Navigation = Navigation,
	Plugin = Plugin,
	PluginActions = PluginActions,
	Provider = Provider,
	Store = Store,
	Theme = Theme,
	UILibraryWrapper = UILibraryWrapper,
}

return ContextServices
