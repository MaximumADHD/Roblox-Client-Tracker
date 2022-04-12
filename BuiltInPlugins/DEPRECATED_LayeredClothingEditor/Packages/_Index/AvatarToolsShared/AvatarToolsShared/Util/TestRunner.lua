local AvatarToolsShared = script.Parent.Parent
local Packages = AvatarToolsShared.Parent
local Roact = require(Packages.Roact)

local Resources = require(AvatarToolsShared.Resources)

local StyleRoot = AvatarToolsShared.Components

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices

local FrameworkStyle = Framework.Style
local makeTheme = FrameworkStyle.makeTheme
local StudioTheme = FrameworkStyle.Themes.StudioTheme

local TestHelpers = Framework.TestHelpers
local provideMockContext = TestHelpers.provideMockContext

local TestRunner = {}

local function run(testChildren, container, testRunner)
	local frameworkStyleRoot = StudioTheme.mock({}, {})
	local theme = makeTheme(StyleRoot, {}, frameworkStyleRoot)()
	-- Localization
	local localization = ContextServices.Localization.mock({
		libraries = {
			[Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Resources.TranslationDevelopmentTable,
				translationResourceTable = Resources.TranslationReferenceTable,
			},
		},
	})

	local element = provideMockContext({
		theme,
		localization,
	}, testChildren)
	local handle = Roact.mount(element, container)

	local success, result = pcall(function()
		if testRunner then
			testRunner(container)
		end
	end)

	Roact.unmount(handle)
	container:Destroy()

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

return TestRunner