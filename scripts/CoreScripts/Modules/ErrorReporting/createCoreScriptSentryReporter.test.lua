local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local mockSentryReporterNew = jest.fn()

jest.mock(CorePackages.Workspace.Packages.ErrorReporters, function()
	return {
		SentryReporter = {
			new = mockSentryReporterNew,
		},
	}
end)

local createCoreScriptSentryReporter = require(script.Parent.createCoreScriptSentryReporter)

local DSN = "https://key@sentry.example.com/1"
local CORE_SCRIPT_VERSION = "0.700.0.7000000"

local function processReport(report)
	return report
end

local function createRunService(isStudio: boolean, coreScriptVersion: string?)
	return {
		IsStudio = function()
			return isStudio
		end,
		GetCoreScriptVersion = function()
			return coreScriptVersion
		end,
	}
end

local function createReporter(runService: any?)
	return createCoreScriptSentryReporter({
		dsn = DSN,
		processErrorReportMethod = processReport,
		runService = runService or createRunService(false, CORE_SCRIPT_VERSION),
	})
end

describe("createCoreScriptSentryReporter", function()
	beforeEach(function()
		mockSentryReporterNew.mockReset()
	end)

	it("should return the reporter created by SentryReporter.new", function()
		local fakeReporter = {}
		mockSentryReporterNew.mockReturnValue(fakeReporter)

		local reporter = createReporter()

		expect(reporter).toBe(fakeReporter)
	end)

	it("should pass the DSN and HttpService to SentryReporter.new", function()
		mockSentryReporterNew.mockReturnValue({})

		createReporter()

		expect(mockSentryReporterNew).toHaveBeenCalledTimes(1)
		local arguments = mockSentryReporterNew.mock.calls[1][1]
		expect(arguments.httpService).toBe(HttpService)
		expect(arguments.dsn).toBe(DSN)
	end)

	it("should disable SentryReporter's development logging", function()
		mockSentryReporterNew.mockReturnValue({})

		createReporter(createRunService(true, CORE_SCRIPT_VERSION))

		expect(mockSentryReporterNew.mock.calls[1][1].disableDevelopmentLogging).toBe(true)
	end)

	it("should process reports with the given processor and copy attributes into CoreScripts metadata", function()
		mockSentryReporterNew.mockReturnValue({})
		local report = {
			attributes = {},
			addCustomMetadata = jest.fn(),
		}
		local addCustomMetadata = jest.fn()
		local processedReportFromProcessor = {
			attributes = { PlaceId = 1234, ServerVersion = "0.701.0", PlayerCount = 3 },
			addCustomMetadata = addCustomMetadata,
		}
		local processor = jest.fn(function()
			return processedReportFromProcessor
		end)

		createCoreScriptSentryReporter({
			dsn = DSN,
			processErrorReportMethod = processor :: any,
			runService = createRunService(false, CORE_SCRIPT_VERSION),
		})
		local processErrorReportMethod = mockSentryReporterNew.mock.calls[1][1].processErrorReportMethod
		local processedReport = processErrorReportMethod(report)

		expect(processor).toHaveBeenCalledWith(report)
		expect(processedReport).toBe(processedReportFromProcessor)
		expect(report.addCustomMetadata).never.toHaveBeenCalled()
		expect(addCustomMetadata).toHaveBeenCalledWith(processedReportFromProcessor, {
			CoreScripts = { PlaceId = 1234, ServerVersion = "0.701.0", PlayerCount = 3 },
		})
	end)

	it("should use the CoreScript version as the release", function()
		mockSentryReporterNew.mockReturnValue({})

		createReporter()

		expect(mockSentryReporterNew.mock.calls[1][1].release).toBe(CORE_SCRIPT_VERSION)
	end)

	it("should fall back to an unknown release when the CoreScript version is unavailable", function()
		mockSentryReporterNew.mockReturnValue({})

		createReporter(createRunService(false, nil))

		expect(mockSentryReporterNew.mock.calls[1][1].release).toBe("unknown")
	end)

	it("should report to the production environment outside Studio", function()
		mockSentryReporterNew.mockReturnValue({})

		createReporter(createRunService(false, CORE_SCRIPT_VERSION))

		expect(mockSentryReporterNew.mock.calls[1][1].environment).toBe("production")
	end)

	it("should report to the development environment in Studio", function()
		mockSentryReporterNew.mockReturnValue({})

		createReporter(createRunService(true, CORE_SCRIPT_VERSION))

		expect(mockSentryReporterNew.mock.calls[1][1].environment).toBe("development")
	end)

	it("should return nil when SentryReporter.new throws", function()
		mockSentryReporterNew.mockImplementation(function()
			error("invalid arguments for SentryReporter")
		end)

		local reporter = createReporter()

		expect(reporter).toBeNil()
	end)

	it("should return nil when SentryReporter.new rejects its arguments", function()
		mockSentryReporterNew.mockReturnValue(nil)

		local reporter = createReporter()

		expect(reporter).toBeNil()
	end)
end)
