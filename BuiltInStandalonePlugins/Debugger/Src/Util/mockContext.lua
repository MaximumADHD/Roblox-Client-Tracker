--[[
	Wrapper for provideMockContext to include unique context items.
	Used for testing.

	Required Props:
		Instance Story: The story you are testing
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local ContextServices = Framework.ContextServices

local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local Middleware = require(Plugin.Src.Middleware.MainMiddleware)

local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

local contextItemsList = {
	ContextServices.Analytics.mock(),
	ContextServices.Localization.mock(),
	MakeTheme(true),
}

return function(initialStore, children)
	assert(type(initialStore) == "table", "Expected initialStore to be a table")
	assert(type(children) == "table", "Expected children to be a table")

	local mainStore = Rodux.Store.new(MainReducer, initialStore, Middleware)
	table.insert(contextItemsList, ContextServices.Store.new(mainStore))

	return {
		getStore = function()
			return mainStore
		end,
		getChildrenWithMockContext = function()
			return TestHelpers.provideMockContext(contextItemsList, children)
		end,
	}
end
