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
local ServiceWrapper = TestHelpers.ServiceWrapper
local ContextServices = Framework.ContextServices

local getFFlagMaterialManagerGlassNeonForceField = require(Plugin.Src.Flags.getFFlagMaterialManagerGlassNeonForceField)
local DEPRECATED_getBuiltInMaterialVariants = require(Plugin.Src.Resources.Constants.DEPRECATED_getBuiltInMaterialVariants)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

local Controllers = Plugin.Src.Controllers
local CalloutController = require(Controllers.CalloutController)
local GeneralServiceController = require(Controllers.GeneralServiceController)
local ImageLoader = require(Controllers.ImageLoader)
local ImportAssetHandler = require(Controllers.ImportAssetHandler)
local MaterialController = require(Controllers.MaterialController)
local MaterialServiceController = require(Controllers.MaterialServiceController)
local PluginController = require(Controllers.PluginController)

-- New Plugin Setup: Populate contextItemsList with mocks

local store = ContextServices.Store.new(Rodux.Store.new(MainReducer, nil, {
	Rodux.thunkMiddleware,
}, nil))
local materialController = if getFFlagMaterialManagerGlassNeonForceField() then
	MaterialController.new(nil, ServiceWrapper.new("MaterialService", true))
else
	MaterialController.new(DEPRECATED_getBuiltInMaterialVariants(), ServiceWrapper.new("MaterialService", true))


local contextItemsList = {
	ContextServices.Analytics.mock(),
	ContextServices.Localization.mock(),
	store,
	CalloutController.mock(),
	GeneralServiceController.mock(),
	ImportAssetHandler.mock(),
	ImageLoader.mock(),
	materialController,
	MaterialServiceController.mock(store.store),
	PluginController.mock(),
	MakeTheme(true),
}

return function (story)
	assert(type(story) == "table", "Expected story to be a table")

	return TestHelpers.provideMockContext(contextItemsList, story)
end
