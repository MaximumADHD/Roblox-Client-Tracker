--[[
	Wrapper for provideMockContext to include unique context items.
	Used for testing.

	Required Props:
		Instance Story: The story you are testing
]]
local main = script.Parent.Parent
local Packages = main.Parent
local Framework = require(Packages.Framework)

local ContextServices: any = Framework.ContextServices
local TestHelpers = Framework.TestHelpers

local StudioServices = require(main.Context.StudioServices)
local Theme = require(main.Resources.Theme)

local Resources = require(main.Resources)

local contextItemsList = {
	ContextServices.Analytics.mock(),
	ContextServices.Localization.mock({
		libraries = {
			[Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Resources.SourceStrings,
				translationResourceTable = Resources.LocalizedStrings,
			},
		},
	}),
	StudioServices.mock(),
	Theme.mock(),
}

return function(story)
	assert(type(story) == "table", "Expected story to be a table")

	return TestHelpers.provideMockContext(contextItemsList, story)
end
