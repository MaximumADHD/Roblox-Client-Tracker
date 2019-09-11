local Plugin = script.Parent.Parent
local Roact = require(Plugin.Roact)
local AnimationClipEditorPlugin = require(Plugin.Src.Components.AnimationClipEditorPlugin)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)

local isEnableRoactAnimationEditorOn = settings():GetFFlag("EnableRoactAnimationEditor")

if not isEnableRoactAnimationEditorOn then
	return
end

local handle = nil

local function init()
	local mainPlugin = Roact.createElement(AnimationClipEditorPlugin, {
		plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)
end

local function runTests()
	local TestEZ = Plugin.TestEZ
	local tests = Plugin.Src

	local TestBootstrap = require(TestEZ.TestBootstrap)
	local TextReporter = require(TestEZ.Reporters.TextReporter)

	TestBootstrap:run(tests, TextReporter)
end

local function runRhodiumTests()
	local TestEZ = Plugin.TestEZ
	local tests = Plugin.RhodiumTests

	local TestBootstrap = require(TestEZ.TestBootstrap)
	local TextReporter = require(TestEZ.Reporters.TextReporter)

	TestHelpers.init(plugin)
	TestBootstrap:run(tests, TextReporter, false, true)
end

plugin.Unloading:Connect(function()
	if handle then
		Roact.unmount(handle)
	end
end)

if DebugFlags.RunTests() then
	runTests()
elseif DebugFlags.RunRhodiumTests() then
	runRhodiumTests()
else
	init()
end