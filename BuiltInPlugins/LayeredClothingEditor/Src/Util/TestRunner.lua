local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)
local LuaMeshEditingModule = require(Plugin.Packages.LuaMeshEditingModule)

local PointTool = require(LuaMeshEditingModule.Tools.PointTool)
local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext
local Signals = AvatarToolsShared.Contexts.Signals
local PreviewContext = AvatarToolsShared.Contexts.PreviewContext
local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext
local AssetServiceWrapper = AvatarToolsShared.Contexts.AssetServiceWrapper
local MannequinContext = AvatarToolsShared.Contexts.MannequinContext

local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local TestHelpers = Framework.TestHelpers
local Http = Framework.Http
local provideMockContext = TestHelpers.provideMockContext

local Constants = require(Plugin.Src.Util.Constants)
local TestHelper = require(Plugin.Src.Util.TestHelper)
local makeMockNetworkLayer = require(Plugin.Src.Util.makeMockNetworkLayer)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local LayeredClothingEditor = require(Plugin.Src.Components.LayeredClothingEditor)

local TestRunner = {}

local function run(testChildren, container, testRunner)
	local middlewares = {Rodux.thunkMiddleware}
	local store = Rodux.Store.new(MainReducer, nil, middlewares)
	local signals = Signals.new(Constants.SIGNAL_KEYS)
	local editingItemContext = EditingItemContext.new()
	local assetServiceWrapper = AssetServiceWrapper.mock()
	local mannequinContext = MannequinContext.mock()
	local theme = PluginTheme.mock()
	local localization = ContextServices.Localization.mock({
		libraries = {
			[AvatarToolsShared.Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = AvatarToolsShared.Resources.SourceStrings,
				translationResourceTable = AvatarToolsShared.Resources.LocalizedStrings,
			},
		},
	})

	local pointTool = PointTool.new()
	pointTool:setFalloff(Constants.DEFAULT_FALLOFF)
	local meshEditingContext = LuaMeshEditingModuleContext.new({
		[Constants.TOOL_MODE.Point] = pointTool,
	})

	local previewContext = PreviewContext.new()

	local element = provideMockContext({
		theme,
		ContextServices.Analytics.mock(),
		localization,
		ContextServices.Store.new(store),
		ContextServices.API.new({
			networking = Http.Networking.mock({
				onRequest = makeMockNetworkLayer,
			}),
		}),
		ContextServices.Focus.new(container),
		signals,
		editingItemContext,
		previewContext,
		meshEditingContext,
		assetServiceWrapper,
		mannequinContext,
	}, testChildren)
	local handle = Roact.mount(element, container)

	local success, result = pcall(function()
		if testRunner then
			testRunner(container, store, editingItemContext)
		end
	end)

	Roact.unmount(handle)
	container:Destroy()
	store:destruct()
	TestHelper.cleanTempInstances()

	if not success then
		error(result)
	end
end

function TestRunner.runTestMinimal(testRunner)
	local success, result = pcall(function()
		if testRunner then
			testRunner()
		end
	end)

	TestHelper.cleanTempInstances()

	if not success then
		error(result)
	end
end

function TestRunner.runComponentTest(component, testRunner)
	run({test = component}, Instance.new("ScreenGui"), testRunner)
end

local function makeContainer()
	local screen = Instance.new("ScreenGui", game.CoreGui)
	screen.Name = "PluginMockGui"
	screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	return screen
end

function TestRunner.runRhodiumTest(testRunner)
	run({LayeredClothingEditor = Roact.createElement(LayeredClothingEditor)}, makeContainer(), testRunner)
end

return TestRunner
