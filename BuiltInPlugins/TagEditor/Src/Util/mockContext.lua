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

local MakeTheme = require(Plugin.Src.Resources.MakeTheme)
local Reducers = require(Plugin.Src.Reducers)
local InitialStoreState = require(Plugin.Src.InitialStoreState)

local store = ContextServices.Store.new(Rodux.Store.new(Reducers, InitialStoreState, {
	Rodux.thunkMiddleware,
}, nil))

local contextItemsList = {
	ContextServices.Analytics.mock(),
	ContextServices.Localization.mock(),
	MakeTheme(true),
	store,
}

return function (story)
	assert(type(story) == "table", "Expected story to be a table")

	return TestHelpers.provideMockContext(contextItemsList, story)
end
