--[[
	Wrapper for provideMockContext to include unique context items.
	Used for testing.

	Required Props:
		Instance Story: The story you are testing
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local ContextServices = Framework.ContextServices

local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

local contextItemsList = {
	ContextServices.Analytics.mock(),
	ContextServices.Localization.mock(),
	MakeTheme(true),
}

return function(story)
	assert(type(story) == "table", "Expected story to be a table")

	return TestHelpers.provideMockContext(contextItemsList, story)
end
