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
local Http = Framework.Http
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

local Controllers = Plugin.Src.Controllers
local GeneralServiceController = require(Controllers.GeneralServiceController)
local ImageLoader = require(Controllers.ImageLoader)
local ImageUploader = require(Controllers.ImageUploader)
local ImportAssetHandler = require(Controllers.ImportAssetHandler)
local MaterialServiceController = require(Controllers.MaterialServiceController)
local PluginController = require(Controllers.PluginController)

-- New Plugin Setup: Populate contextItemsList with mocks

local store = ContextServices.Store.new(Rodux.Store.new(MainReducer, nil, {
	Rodux.thunkMiddleware,
}, nil))
local networking = Http.Networking.new({
	isInternal = true,
})
local imageUploader = ImageUploader.new(networking)

local contextItemsList = {
	ContextServices.Analytics.mock(),
	ContextServices.Localization.mock(),
	store,
	GeneralServiceController.mock(),
	ImportAssetHandler.mock(imageUploader),
	ImageLoader.mock(),
	MaterialServiceController.mock(store.store),
	PluginController.mock(),
	MakeTheme(true),
}

return function (story)
	assert(type(story) == "table", "Expected story to be a table")

	return TestHelpers.provideMockContext(contextItemsList, story)
end
