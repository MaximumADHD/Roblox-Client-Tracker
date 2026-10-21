local Main = script.Parent
local Plugin = require(Main.getPluginParentInternal)

local types = require(Main.types)
type DebugFlags = types.DebugFlags

local insert = table.insert

local function findFirstJestConfig(parent: Instance): ModuleScript?
	local config = parent:FindFirstChild("jest.config", true)
	if config and config:IsA("ModuleScript") then
		return config
	else
		return nil
	end
end

-- This ensures that coverage stats include all module scripts within the plugin.
-- And also that all ModuleScripts can be loaded without error
--
-- Note that this function must be run _after_ Jest 3 tests
local function requireAllModuleScripts(folder: Instance)
	local descendants = folder:GetDescendants()
	for _, descendant in ipairs(descendants) do
		-- In cases where Jest 3 and Jest 2 are both used, Jest 3 tests are
		-- usually written as 'foo.test.lua' instead of 'foo.spec.lua'.
		--
		-- JestGlobals 3+ will throw an error when required outside the Jest 3
		-- context, so we need to skip requiring those modules to avoid
		-- unexpected test failures
		if descendant.Name:match("%.test") then
			continue
		end

		if descendant:IsA("ModuleScript") then
			require(descendant)
		end
	end
end

local function runTestsInternal(folder: Instance, debugFlags: DebugFlags)
	_G.__DEV__ = debugFlags.EnableRoactConfigs
	_G.__ROACT_17_MOCK_SCHEDULER__ = true
	_G.__ROACT_17_INLINE_ACT__ = true

	local DevFrameworkRoot = if Plugin.Packages._Index:FindFirstChild("DeveloperFramework")
		then Plugin.Packages._Index.DeveloperFramework.DeveloperFramework
		else nil

	if debugFlags.RunUnitTests then
		if not Plugin.Packages.Dev:FindFirstChild("Jest") or not Plugin.Packages.Dev:FindFirstChild("JestGlobals") then
			error(
				`Please add both Jest and JestGlobals vers to Dev dependencies of {Plugin.Name} to run tests. \
See the guide https://roblox.github.io/jest-roblox-internal/upgrading-to-jest3 if you are migrating from Jest 2`
			)
		end

		local Jest = require(Plugin.Packages.Dev.Jest)
		print(`----- All {Plugin.Name} Tests (Jest 3) ------`)

		local jestConfig = findFirstJestConfig(Plugin)
		assert(jestConfig, `failed to run Jest 3 tests for {Plugin.Name} (no jest.config.lua file found)`)
		local root = jestConfig.Parent

		local cliCommandService = game:GetService("CLICommandService")

		local testDiscovery = false
		local success, response = pcall(function()
			testDiscovery = cliCommandService.TestDiscoveryMode
		end)

		local status, result = Jest.runCLI(root, {
			verbose = false,
			ci = true,
			testPathPattern = _G.LEST_TEST_NAME_PATTERN,
			listTests = testDiscovery,
		}, { root }):awaitStatus()

		if status == "Rejected" then
			print(result)
		end

		print("----------------------------------")

		if status ~= "Resolved" or result.results.numFailedTestSuites > 0 or result.results.numFailedTests > 0 then
			-- This error message is important. Gated commits will not fail from
			-- ProcessService exit codes, so instead we throw an error that gets
			-- processed in robloxcli.py to handle exiting during a test run
			error("Jest 3 test run failed")
		end
	end

	if debugFlags.RunTests or debugFlags.RunRhodiumTests or debugFlags.RunDeveloperFrameworkTests then
		if not Plugin.Packages.Dev:FindFirstChild("JestGlobals") then
			error(`Please add JestGlobals to Dev dependencies of {Plugin.Name} to run tests`)
		end
		local JestGlobals = require(Plugin.Packages.Dev.JestGlobals)
		if not JestGlobals.TestEZ then
			error(`Please use JestGlobals versions that has TestEZ (2.4.1) in {Plugin.Name} to run tests`)
		end
		local TestEZ = JestGlobals.TestEZ

		local TestBootstrap = TestEZ.TestBootstrap
		local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
		local reporter = TestEZ.Reporters.TextReporter
		if debugFlags.LogTestsQuiet then
			reporter = TestEZ.Reporters.TextReporterQuiet
		end
		reporter = if _G["TEAMCITY"] then TeamCityReporter else reporter

		if debugFlags.RunTests then
			requireAllModuleScripts(folder)

			print(`----- All {Plugin.Name} Tests (Jest 2) ------`)
			TestBootstrap:run({ folder }, reporter)
			print("----------------------------------")
		end

		if debugFlags.RunRhodiumTests then
			print(`----- All {Plugin.Name} Rhodium Tests ------`)
			TestBootstrap:run({ Plugin.RhodiumTests }, reporter)
			print("----------------------------------")
		end

		if DevFrameworkRoot and debugFlags.RunDeveloperFrameworkTests then
			print("----- All DeveloperFramework Tests ------")
			local folders = {}
			for _, folder in ipairs(DevFrameworkRoot:GetChildren()) do
				local isContainer = folder.ClassName == "Folder" or folder.ClassName == "ModuleScript"
				if isContainer and (folder.Name ~= "packages" and folder.Name ~= "Packages") then
					insert(folders, folder)
				end
			end
			TestBootstrap:run(folders, reporter)
			print("----------------------------------")
		end
	end
end

return runTestsInternal
