--[[
	A number of components may need to create ServiceWrappers, this file constructs the table once.

	Then every dialog and widget that needs to reference these elements can refernce the globals
	instead of needing to create their own.

	NOTE - because this object creates an object with global state, it is inherently untestable.
]]
local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary2")

local Plugin = script.Parent.Parent.Parent
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local UILibrary = require(Plugin.Packages.UILibrary) -- remove with FFlagPluginManagementRemoveUILibrary

-- data
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local dataStore = Rodux.Store.new(MainReducer, nil, { Rodux.thunkMiddleware })

-- theme
local theme
if FFlagPluginManagementRemoveUILibrary then
	local makeTheme =  require(Plugin.Src.Resources.makeTheme)
	theme = makeTheme()
else
	local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
	theme = PluginTheme.new()
end

-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local Localization
if FFlagPluginManagementRemoveUILibrary then
	Localization = ContextServices.Localization
else
	Localization = UILibrary.Studio.Localization
end
local localization = Localization.new({
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
	pluginName = "PluginInstallation",
})

-- networking
-- TO DO : Replace with DevFramework's versions of these libraries 
-- (https://jira.rbx.com/browse/DEVTOOLS-4441)
local Http = require(Plugin.Packages.Http)
local api = Http.API.new({
	networking = Http.Networking.new({
		isInternal = true,
		loggingLevel = 0,
	}),
})

local globals

return function(plugin)
	if globals ~= nil then
		return globals
	end

	assert(plugin ~= nil, "getPluginGlobals hasn't been initialized yet")

	-- initialize this object once
	globals = {
		plugin = plugin,
		localization = localization,
		theme = theme,
		store = dataStore,
		api = api,
		mouse = plugin:GetMouse(),
		focusGui = {},
	}

	return globals
end