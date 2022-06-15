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

local getFFlagMaterialManagerDetailsOverhaul = require(Plugin.Src.Flags.getFFlagMaterialManagerDetailsOverhaul)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

local Util = Plugin.Src.Util
local GeneralServiceController = require(Util.GeneralServiceController)
local MaterialServiceController = require(Util.MaterialServiceController)

-- New Plugin Setup: Populate contextItemsList with mocks

local store = ContextServices.Store.new(Rodux.Store.new(MainReducer, nil, nil, nil))

local contextItemsList = {
	ContextServices.Analytics.mock(),
	ContextServices.Localization.mock(),
	store,
	if getFFlagMaterialManagerDetailsOverhaul() then MaterialServiceController.mock(store) else nil,
	if getFFlagMaterialManagerDetailsOverhaul() then GeneralServiceController.mock() else nil,
	MakeTheme(true),
}

return function (story)
	assert(type(story) == "table", "Expected story to be a table")

	return TestHelpers.provideMockContext(contextItemsList, story)
end
