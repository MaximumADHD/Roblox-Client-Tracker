local AvatarToolsShared = script.Parent.Parent
local Packages = AvatarToolsShared.Parent
local Roact = require(Packages.Roact)

local StyleRoot = AvatarToolsShared.Components

local Framework = require(Packages.Framework)

local FrameworkStyle = Framework.Style
local makeTheme = FrameworkStyle.makeTheme
local StudioTheme = FrameworkStyle.Themes.StudioTheme

local TestHelpers = Framework.TestHelpers
local provideMockContext = TestHelpers.provideMockContext

local TestRunner = {}

local function run(testChildren, container, testRunner)
	local frameworkStyleRoot = StudioTheme.mock({}, {})
	local theme = makeTheme(StyleRoot, {}, frameworkStyleRoot)()

	local element = provideMockContext({
		theme,
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