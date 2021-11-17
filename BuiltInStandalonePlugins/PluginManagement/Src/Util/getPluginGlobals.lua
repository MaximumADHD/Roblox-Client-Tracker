--[[
	A number of components may need to create a context provider, this file constructs the table once.

	Then every dialog and widget that needs to reference these elements can refernce the globals
	instead of needing to create their own.

	NOTE - because this object creates an object with global state, it is inherently untestable.
]]

local Plugin = script.Parent.Parent.Parent
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

-- data
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local dataStore = Rodux.Store.new(MainReducer, nil, { Rodux.thunkMiddleware })

-- theme
local theme = require(Plugin.Src.Resources.makeTheme)


-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local Localization = ContextServices.Localization
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

local getAnalyticsContextItem = require(Plugin.Src.Util.getAnalyticsContextItem)
local analytics = getAnalyticsContextItem()

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
		analytics = analytics,
	}

	return globals
end
