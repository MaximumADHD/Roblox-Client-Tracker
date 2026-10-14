--[[
	Runs Jest 3 with the integration rotest (game-engine's test runner) expects, on top of the
	caller's own Jest options. Plugins with a custom runTests.legacy.lua should call this instead
	of Jest.runCLI so that FeatureTest can discover, report, exclude and select tests per file:

	  - prints the "All <suiteName> Tests (Jest 3)" header rotest's discovery parses
	  - lists test files instead of running them under --list_content (TestDiscoveryMode)
	  - adds RotestReporter under --file_reporting
	  - applies rotest's excluded tests under --file_reporting, unless --run-excluded
	  - lets rotest choose files via _G.LEST_TEST_NAME_PATTERN, overriding the caller's
	    testPathPattern (and any plugin-side sharding) when set

	suiteName must appear in every test path as "<suiteName>/"; it defaults to rootDir.Name.

	Returns the same (status, result) pair as Jest.runCLI(...):awaitStatus(). Callers keep
	their own failure and exit handling.
]]
local Main = script.Parent

export type RunJestConfig = {
	Jest: any,
	rootDir: Instance,
	projects: { Instance },
	options: { [string]: any }?,
	suiteName: string?,
}

-- CLICommandService and some of its members are missing outside roblox-cli / FeatureTest and
-- on older Studio builds.
local function readCliCommandService<T>(read: (any) -> T): T?
	local ok, value = pcall(function()
		return read((game :: any):GetService("CLICommandService"))
	end)
	return if ok then value else nil
end

local function runJestAsync(config: RunJestConfig): (string, any)
	local suiteName = config.suiteName or config.rootDir.Name
	local options = table.clone(config.options or {})

	local testDiscovery = readCliCommandService(function(service)
		return service.TestDiscoveryMode
	end) == true
	local fileReporting = readCliCommandService(function(service)
		return service.FileReporting
	end) == true
	local runExcluded = readCliCommandService(function(service)
		return service.RunExcluded
	end) == true

	options.listTests = testDiscovery

	if _G.LEST_TEST_NAME_PATTERN ~= nil then
		options.testPathPattern = _G.LEST_TEST_NAME_PATTERN
	end

	if fileReporting then
		local reporters = table.clone(options.reporters or { "default" })
		table.insert(reporters, { reporter = Main.RotestReporter, options = { suiteName = suiteName } })
		options.reporters = reporters

		if not runExcluded then
			local excludedTests = readCliCommandService(function(service)
				return service:getExcludedTests()
			end)
			if excludedTests ~= nil then
				local ignorePatterns = table.clone(options.testPathIgnorePatterns or {})
				table.move(excludedTests, 1, #excludedTests, #ignorePatterns + 1, ignorePatterns)
				options.testPathIgnorePatterns = ignorePatterns
			end
		end
	end

	print(`----- All {suiteName} Tests (Jest 3) ------`)
	local status, result = config.Jest.runCLI(config.rootDir, options, config.projects):awaitStatus()
	print("----------------------------------")

	return status, result
end

return runJestAsync
