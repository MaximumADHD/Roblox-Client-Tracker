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

local makeTheme = Framework.Style.makeTheme
local getTheme = makeTheme(Plugin.Src.Components)

local contextItemsList = {
	ContextServices.Analytics.mock(),
	ContextServices.Localization.mock(),
	ContextServices.Store.new(Rodux.Store.new(MainReducer, nil, nil, nil)),
	getTheme(),
}

return function(story)
	assert(type(story) == "table", "Expected story to be a table")

	return TestHelpers.provideMockContext(contextItemsList, story)
end
