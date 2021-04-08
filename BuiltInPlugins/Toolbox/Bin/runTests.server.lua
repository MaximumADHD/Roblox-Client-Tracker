-- Fast flags
require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent

--[[
	RefactorFlags needs to be required and updated directly; before Framework's init
	is required (so that any files that Framework's init requires get the correct values).
]]
local RefactorFlags = require(Plugin.Libs.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = game:GetFastFlag("EnableToolboxStylizer")

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local TestsFolderPlugin = Plugin.Core

-- This ensures that coverage stats include all module scripts within the plugin.
-- And also that all ModuleScripts can be loaded without error
local function requireAllModuleScripts()
	local descendants = Plugin.Core:GetDescendants()

	for _, descendant in ipairs(descendants) do
		if descendant:IsA("ModuleScript") then
			require(descendant)
		end
	end
end

if DebugFlags.shouldRunTests() then
	local isCli, processService = pcall(function()
		return game:GetService("ProcessService")
	end)

	local ok, err = pcall(function()
		requireAllModuleScripts()

		local TestEZ = require(Plugin.Packages.Dev.TestEZ)
		local TestBootstrap = TestEZ.TestBootstrap
		local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
		local reporter = TestEZ.Reporters.TextReporter
		if DebugFlags.logTestsQuiet() then
			reporter = TestEZ.Reporters.TextReporterQuiet
		end

		reporter = _G["TEAMCITY"] and TeamCityReporter or reporter

		print("----- All " ..Plugin.Name.. " Tests ------")
		TestBootstrap:run({TestsFolderPlugin}, reporter)
		print("----------------------------------")
	end)

	if isCli then
		if not ok then
			warn(err)
		end
		processService:ExitAsync(ok and 0 or 1)
	elseif not ok then
		error(err)
	end
end

