--[[
	Jest 3 reporter that emits the per-file case events rotest (game-engine's test runner)
	parses when FeatureTest runs with --file_reporting. Suite enter/leave events are emitted by
	the FeatureTest binary itself, so this only reports cases.

	Case names must match what rotest derives from --list_content output: the part of the test
	path after the *last* "<suiteName>/", with "/" replaced by ".". The last occurrence matters
	because rotriever layouts repeat the package name (Packages/_Index/Explorer/Explorer/...).
]]
local RotestReporter = {}
RotestReporter.__index = RotestReporter

function RotestReporter.new(globalConfig, reporterOptions, reporterContext)
	local self = setmetatable({}, RotestReporter)
	self._globalConfig = globalConfig
	self._options = reporterOptions
	self._ctxt = reporterContext

	return self
end

function RotestReporter:_caseName(path: string): string
	local marker = self._options.suiteName .. "/"
	local caseStart = nil
	local searchFrom = 1
	while true do
		local _, markerEnd = string.find(path, marker, searchFrom, true)
		if markerEnd == nil then
			break
		end
		caseStart = markerEnd + 1
		searchFrom = caseStart
	end

	local relative = if caseStart then string.sub(path, caseStart) else path
	return (string.gsub(relative, "/", "."))
end

function RotestReporter:onRunStart() end

function RotestReporter:onRunComplete() end

function RotestReporter:onTestFileStart(test)
	print(string.format('Entering test case "%s"', self:_caseName(test.path)))
end

function RotestReporter:onTestFileResult(test, testResult)
	-- testExecError covers files that fail before any test runs (e.g. a require error), which
	-- report zero failing tests.
	if testResult.numFailingTests ~= 0 or testResult.testExecError ~= nil then
		-- rotest's failure marker; see robloxcli.py.
		print("Jest 3 test run failed")
	end
	print(string.format('Leaving test case "%s"', self:_caseName(test.path)))
end

return RotestReporter
