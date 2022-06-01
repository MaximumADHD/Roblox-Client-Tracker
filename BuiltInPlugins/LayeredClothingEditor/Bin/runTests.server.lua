local Plugin = script.Parent.Parent
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)
local LuaMeshEditingModule = require(Plugin.Packages.LuaMeshEditingModule)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local function runAvatarToolsSharedTests()
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TextReporter = TestEZ.Reporters.TextReporter -- Remove Quiet to see output
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter

	local reporter = _G["TEAMCITY"] and TeamCityReporter or TextReporter

	AvatarToolsShared.Util.runAvatarToolsSharedTests(TestEZ, reporter)
end

local function runLuaMeshEditingModuleTests()
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local TextReporter = TestEZ.Reporters.TextReporter -- Remove Quiet to see output
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter

	local reporter = _G["TEAMCITY"] and TeamCityReporter or TextReporter
	local runModuleTest = require(LuaMeshEditingModule.Util.runLuaMeshEditingModuleTests)

	runModuleTest(TestEZ, reporter)
end

local function runTests()
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local tests = Plugin.Src -- Where stores the package's unit tests

	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporter -- Remove Quiet to see output

	TestBootstrap:run({ tests }, TextReporter)
end

local function runRhodiumTests()
	local TestEZ = require(Plugin.Packages.Dev.TestEZ)
	local tests = Plugin.RhodiumTests

	local TestBootstrap = TestEZ.TestBootstrap
	local TextReporter = TestEZ.Reporters.TextReporter -- Remove Quiet to see output

	TestBootstrap:run({ tests }, TextReporter, false, true)
end

-- Do not check in as true!
local SHOULD_RUN_TESTS = DebugFlags.RunTests()
local SHOULD_RUN_RHODIUM_TESTS = DebugFlags.RunRhodiumTests()

if not game:GetFastFlag("AccessoryToolRefactor") and (SHOULD_RUN_TESTS or SHOULD_RUN_RHODIUM_TESTS) then
	game:GetService("ProcessService"):ExitAsync(0)
	return
end

if SHOULD_RUN_TESTS then
	print("----- All " .. script.Parent.Parent.Name .. " Tests ------")
	require(script.Parent.defineLuaFlags)
	runTests()
	print("----------------------------------")

	-- TODO: setup standalone testing suite for this
	print("----- All AvatarToolsShared Tests ------")
	runAvatarToolsSharedTests()
	print("----------------------------------")

	print("----- All LuaMeshEditingModule Tests ------")
	runLuaMeshEditingModuleTests()
	print("----------------------------------")
end

if SHOULD_RUN_RHODIUM_TESTS then
	print("----- All " ..script.Parent.Parent.Name.. " Rhodium Tests ------")
	runRhodiumTests()
	print("----------------------------------")
	game:GetService("ProcessService"):ExitAsync(0)
end
