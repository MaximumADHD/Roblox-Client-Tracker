local Main = script.Parent
local Plugin = Main.Parent.Parent.Parent.Parent
local types = require(Main.types)
type DebugFlags = types.DebugFlags

local insert = table.insert

-- This ensures that coverage stats include all module scripts within the plugin.
-- And also that all ModuleScripts can be loaded without error
local function requireAllModuleScripts(folder: Instance)
	local descendants = folder:GetDescendants()
	for _, descendant in ipairs(descendants) do
		if descendant:IsA("ModuleScript") then
			require(descendant)
		end
	end
end

local function runTestsInternal(folder: Instance, debugFlags: DebugFlags)
	_G.__DEV__ = debugFlags.EnableRoactConfigs
	_G.__ROACT_17_MOCK_SCHEDULER__ = true
	_G.__ROACT_17_INLINE_ACT__ = true

	local DevFrameworkRoot = Plugin.Packages._Index.DeveloperFramework.DeveloperFramework

	if Plugin.Packages:FindFirstChild("Framework") then
		local RefactorFlags = require(DevFrameworkRoot.Util.RefactorFlags)
		RefactorFlags.THEME_REFACTOR = true
	end

	local JestGlobals = require(Plugin.Packages.Dev.JestGlobals)
	local TestEZ = JestGlobals.TestEZ

	local TestBootstrap = TestEZ.TestBootstrap
	local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
	local reporter = TestEZ.Reporters.TextReporter
	if debugFlags.LogTestsQuiet then
		reporter = TestEZ.Reporters.TextReporterQuiet
	end
	reporter = _G["TEAMCITY"] and TeamCityReporter or reporter

	if debugFlags.RunTests then
		requireAllModuleScripts(folder)

		print("----- All " .. Plugin.Name .. " Tests ------")
		TestBootstrap:run({ folder }, reporter)
		print("----------------------------------")
	end

	if debugFlags.RunRhodiumTests then
		print("----- All " .. Plugin.Name .. " Rhodium Tests ------")
		TestBootstrap:run({ Plugin.RhodiumTests }, reporter)
		print("----------------------------------")
	end
	
	if debugFlags.RunDeveloperFrameworkTests then
		print("----- All DeveloperFramework Tests ------")
		local folders = {}
		for _, folder in ipairs(DevFrameworkRoot:GetChildren()) do
			local isContainer = folder.ClassName == "Folder" or folder.ClassName == "ModuleScript"
			if isContainer and folder.Name ~= "packages" then
				insert(folders, folder)
			end
		end
		TestBootstrap:run(folders, reporter)
		print("----------------------------------")
	end
end

return runTestsInternal
