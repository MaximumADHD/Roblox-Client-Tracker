local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local SystemInfoProtocol = require(CorePackages.Workspace.Packages.SystemInfoProtocol).SystemInfoProtocol

local FFlagCoreScriptSentryReportDeviceContext =
	require(script.Parent.Parent.Flags.FFlagCoreScriptSentryReportDeviceContext)

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
		GetControlAndVariantRolloutFlags = function(): (string?, string?)
			return nil, nil
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
		local fakeReporter = { setUser = function() end }
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
			addAttributes = function() end,
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

describe("device context", function()
	local SYSTEM_INFO = {
		deviceName = "iPhone 13",
		baseOs = "iOS",
		systemVersion = "26.6.1",
		availRAM = 1024,
		networkType = "WiFi",
	}

	local getSystemInfoSpy = jest.spyOn(SystemInfoProtocol.default, "getSystemInfo")

	local function createRunServiceWithRolloutFlags(controlRolloutFlags: string?, variantRolloutFlags: string?)
		return {
			IsStudio = function()
				return false
			end,
			GetCoreScriptVersion = function(): string?
				return CORE_SCRIPT_VERSION
			end,
			GetControlAndVariantRolloutFlags = function(): (string?, string?)
				return controlRolloutFlags, variantRolloutFlags
			end,
		}
	end

	local function processWith(runService)
		mockSentryReporterNew.mockReturnValue({})
		createCoreScriptSentryReporter({
			dsn = DSN,
			processErrorReportMethod = processReport,
			runService = runService,
		})
		local report = {
			attributes = { PlaceId = 1234 },
			addCustomMetadata = jest.fn(),
			addAttributes = jest.fn(),
		}
		mockSentryReporterNew.mock.calls[1][1].processErrorReportMethod(report)
		return report
	end

	beforeEach(function()
		mockSentryReporterNew.mockReset()
		getSystemInfoSpy.mockReset()
		getSystemInfoSpy.mockReturnValue(SYSTEM_INFO)
	end)

	if FFlagCoreScriptSentryReportDeviceContext then
		it("should add system info and rollout flags to reports", function()
			local report = processWith(createRunServiceWithRolloutFlags("FFlagControl", "FFlagVariant"))

			expect(report.addAttributes).toHaveBeenCalledTimes(1)
			expect(report.addAttributes).toHaveBeenCalledWith(report, {
				deviceName = "iPhone 13",
				baseOs = "iOS",
				systemVersion = "26.6.1",
				availRAM = 1024,
				networkType = "WiFi",
				RolloutFlagsInControl = "FFlagControl",
				RolloutFlagsInVariant = "FFlagVariant",
			})
		end)

		it("should keep device attributes out of the CoreScripts metadata", function()
			mockSentryReporterNew.mockReturnValue({})
			createCoreScriptSentryReporter({
				dsn = DSN,
				processErrorReportMethod = processReport,
				runService = createRunServiceWithRolloutFlags("FFlagControl", nil),
			})
			local coreScriptsMetadata
			local attributes: { [string]: string | number } = { PlaceId = 1234 }
			local report = { attributes = attributes }
			function report:addAttributes(attributes)
				for key, value in attributes do
					self.attributes[key] = value
				end
			end
			function report:addCustomMetadata(customMetadata)
				coreScriptsMetadata = table.clone(customMetadata.CoreScripts)
			end

			mockSentryReporterNew.mock.calls[1][1].processErrorReportMethod(report)

			expect(coreScriptsMetadata).toEqual({ PlaceId = 1234 })
			expect(report.attributes.deviceName).toBe("iPhone 13")
		end)

		it("should omit empty rollout flag lists", function()
			getSystemInfoSpy.mockReturnValue({ deviceName = "iPhone 13" })

			local report = processWith(createRunServiceWithRolloutFlags("", nil))

			expect(report.addAttributes).toHaveBeenCalledWith(report, { deviceName = "iPhone 13" })
		end)

		it("should still add rollout flags when system info is unavailable", function()
			getSystemInfoSpy.mockImplementation(function()
				error("SystemInfoProtocol unavailable")
			end)

			local report = processWith(createRunServiceWithRolloutFlags("FFlagControl", nil))

			expect(report.addAttributes).toHaveBeenCalledWith(report, { RolloutFlagsInControl = "FFlagControl" })
		end)
	end

	if not FFlagCoreScriptSentryReportDeviceContext then
		it("should not add device attributes", function()
			local report = processWith(createRunServiceWithRolloutFlags("FFlagControl", "FFlagVariant"))

			expect(report.addAttributes).never.toHaveBeenCalled()
		end)
	end
end)

describe("FFlagCoreScriptSentrySetUser", function()
	local INSTALLATION_ID = "installation-id-1234"

	local function loadCreateReporter(setUser: boolean)
		local loaded
		jest.isolateModules(function()
			jest.mock(script.Parent.Parent.Flags.FFlagCoreScriptSentrySetUser, function()
				return setUser
			end)
			loaded = require(script.Parent.createCoreScriptSentryReporter)
		end)
		return loaded
	end

	local function createAppStorageService(getItem: (key: string) -> string?)
		return {
			GetItem = function(_self, key: string)
				return getItem(key)
			end,
		}
	end

	local function createWithAppStorage(create: typeof(createCoreScriptSentryReporter), appStorageService)
		local fakeReporter = { setUser = jest.fn() }
		mockSentryReporterNew.mockReturnValue(fakeReporter)
		create({
			dsn = DSN,
			processErrorReportMethod = processReport,
			runService = createRunService(false, CORE_SCRIPT_VERSION),
			appStorageService = appStorageService,
		})
		return fakeReporter
	end

	beforeEach(function()
		mockSentryReporterNew.mockReset()
	end)

	it("should set the Sentry user to the app installation ID when the flag is on", function()
		local requestedKey
		local fakeReporter = createWithAppStorage(
			loadCreateReporter(true),
			createAppStorageService(function(key)
				requestedKey = key
				return INSTALLATION_ID
			end)
		)

		expect(requestedKey).toBe("AppInstallationId")
		expect(fakeReporter.setUser).toHaveBeenCalledTimes(1)
		expect(fakeReporter.setUser).toHaveBeenCalledWith(fakeReporter, { id = INSTALLATION_ID })
	end)

	it("should fall back to a generated ID when the installation ID is empty", function()
		local fakeReporter = createWithAppStorage(
			loadCreateReporter(true),
			createAppStorageService(function()
				return ""
			end)
		)

		local userId = fakeReporter.setUser.mock.calls[1][2].id
		expect(userId).toEqual(expect.any("string"))
		expect(userId).never.toBe("")
	end)

	it("should fall back to a generated ID when reading the installation ID throws", function()
		local fakeReporter = createWithAppStorage(
			loadCreateReporter(true),
			createAppStorageService(function()
				error("AppStorageService unavailable")
			end)
		)

		local userId = fakeReporter.setUser.mock.calls[1][2].id
		expect(userId).toEqual(expect.any("string"))
		expect(userId).never.toBe("")
	end)

	it("should not set the Sentry user when the flag is off", function()
		local fakeReporter = createWithAppStorage(
			loadCreateReporter(false),
			createAppStorageService(function()
				return INSTALLATION_ID
			end)
		)

		expect(fakeReporter.setUser).never.toHaveBeenCalled()
	end)
end)

describe("FFlagCoreScriptSentryReportTags", function()
	local function loadCreateReporter(reportTags: boolean)
		local loaded
		jest.isolateModules(function()
			jest.mock(script.Parent.Parent.Flags.FFlagCoreScriptSentryReportTags, function()
				return reportTags
			end)
			loaded = require(script.Parent.createCoreScriptSentryReporter)
		end)
		return loaded
	end

	local function processWithAttributes(create: typeof(createCoreScriptSentryReporter), attributes)
		mockSentryReporterNew.mockReturnValue({ setUser = function() end })
		create({
			dsn = DSN,
			processErrorReportMethod = processReport,
			runService = createRunService(false, CORE_SCRIPT_VERSION),
		})
		local processErrorReportMethod = mockSentryReporterNew.mock.calls[1][1].processErrorReportMethod
		return processErrorReportMethod({
			attributes = attributes,
			addCustomMetadata = function() end,
			addAttributes = function() end,
		})
	end

	beforeEach(function()
		mockSentryReporterNew.mockReset()
	end)

	it("should tag reports with their platform, place, version and channel when the flag is on", function()
		local processedReport = processWithAttributes(loadCreateReporter(true), {
			Platform = "Windows",
			PlaceId = 1234,
			LocalVersion = "0.745.0.7451137",
			RobloxChannel = "production",
			PlayerCount = 3,
		})

		expect(processedReport.tags).toEqual({
			client_platform = "Windows",
			place_id = "1234",
			app_version = "0.745.0.7451137",
			roblox_channel = "production",
		})
	end)

	it("should omit tags for missing attributes when the flag is on", function()
		local processedReport = processWithAttributes(loadCreateReporter(true), { PlaceId = 1234 })

		expect(processedReport.tags).toEqual({ place_id = "1234" })
	end)

	it("should not tag reports when the flag is off", function()
		local processedReport = processWithAttributes(loadCreateReporter(false), {
			Platform = "Windows",
			PlaceId = 1234,
		})

		expect(processedReport.tags).toBeNil()
	end)
end)
