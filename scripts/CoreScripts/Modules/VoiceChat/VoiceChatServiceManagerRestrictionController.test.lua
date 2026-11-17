--!nonstrict

local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local VoiceChatPackage = CorePackages.Workspace.Packages.VoiceChat

local mockFlagOverrides: { [string]: boolean } = {}
jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	local flags = table.clone(jest.requireActual(CorePackages.Workspace.Packages.SharedFlags))
	for name, value in mockFlagOverrides do
		flags[name] = value
	end
	return flags
end)
local mockExposureLogging = false
jest.mock(script.Parent.Flags.FFlagProactiveVoiceRestrictionsUFRIXPExposure, function()
	return mockExposureLogging
end)

local function createDeprecatedControllerMock()
	return {
		getPresentationState = function()
			return "normal"
		end,
		check = jest.fn(),
		dispose = jest.fn(),
	}
end

local createVoiceRestrictionController = jest.fn(function()
	local controller = createDeprecatedControllerMock()
	controller.applyUFRTimeout = jest.fn()
	controller.showPendingAcknowledgement = jest.fn()
	return controller
end)
jest.mock(VoiceChatPackage.createVoiceRestrictionController, function()
	return createVoiceRestrictionController
end)
local createVoiceRestrictionController_DEPRECATED = jest.fn(createDeprecatedControllerMock)
jest.mock(VoiceChatPackage.createVoiceRestrictionController_DEPRECATED, function()
	return createVoiceRestrictionController_DEPRECATED
end)

-- Requiring the manager creates VoiceChatServiceManager.default, which creates its restriction controller.
local function requireManagerWithFlags(flags: { [string]: boolean })
	mockFlagOverrides = flags
	jest.resetModules()
	require(CorePackages.Packages.UIBlox).init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
	return require(script.Parent.VoiceChatServiceManager)
end

describe("VoiceChatServiceManager restriction controller", function()
	beforeEach(function()
		createVoiceRestrictionController.mockClear()
		createVoiceRestrictionController_DEPRECATED.mockClear()
	end)

	it("creates the UFR controller with the UFR dialog when reactive restrictions are on", function()
		requireManagerWithFlags({
			FFlagProactiveVoiceRestrictionsUFR = true,
			FFlagReactiveVoiceRestrictionsUFR = true,
		})
		expect(createVoiceRestrictionController).toHaveBeenCalledTimes(1)
		expect(createVoiceRestrictionController).toHaveBeenCalledWith(expect.objectContaining({
			showUFRRestriction = expect.any("function"),
			getNow = expect.any("function"),
		}))
		expect(createVoiceRestrictionController_DEPRECATED).never.toHaveBeenCalled()
	end)

	it("creates the proactive-only controller when reactive restrictions are off", function()
		requireManagerWithFlags({
			FFlagProactiveVoiceRestrictionsUFR = true,
			FFlagReactiveVoiceRestrictionsUFR = false,
		})
		expect(createVoiceRestrictionController_DEPRECATED).toHaveBeenCalledTimes(1)
		expect(createVoiceRestrictionController).never.toHaveBeenCalled()
	end)

	describe("join overlay with an acknowledgement-only restriction", function()
		local overlay = {
			voiceSettings = { isBanned = false, banReason = 10, bannedUntil = { Seconds = 1000 } },
			universePlaceVoiceEnabledSettings = { isUniverseEnabledForVoice = true, isPlaceEnabledForVoice = true },
		}
		local allFlagsOn = {
			FFlagProactiveVoiceRestrictionsUFR = true,
			FFlagReactiveVoiceRestrictionsUFR = true,
		}

		local function emitJoinOverlay(manager, joinOverlay)
			manager.default.coreVoiceManager:emit("OnJoinAgeVerificationOverlayFetched", joinOverlay)
		end

		local function getController()
			return createVoiceRestrictionController.mock.results[1].value
		end

		local logExposure
		local function requireManagerWithExposureSpy(flags: { [string]: boolean })
			local manager = requireManagerWithFlags(flags)
			local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
			logExposure = jest.spyOn(IXPServiceWrapper, "LogFlagLinkedUserLayerExposure").mockImplementation(function() end)
			return manager
		end

		beforeEach(function()
			mockExposureLogging = true
		end)

		afterEach(function()
			mockExposureLogging = false
			jest.restoreAllMocks()
		end)

		it("logs the voice IXP exposure and passes the overlay's voice settings to the controller", function()
			local manager = requireManagerWithExposureSpy(allFlagsOn)
			local AppUserLayers = require(CorePackages.Workspace.Packages.ExperimentLayers).AppUserLayers
			emitJoinOverlay(manager, overlay)
			local showPendingAcknowledgement = getController().showPendingAcknowledgement
			expect(showPendingAcknowledgement).toHaveBeenCalledTimes(1)
			expect(showPendingAcknowledgement).toHaveBeenCalledWith(overlay.voiceSettings)
			expect(logExposure).toHaveBeenCalledTimes(1)
			expect(logExposure).toHaveBeenCalledWith(expect.anything(), AppUserLayers.VoiceUserIDLayer)
		end)

		it("logs the voice IXP exposure in the experiment's control arm without a controller", function()
			local manager = requireManagerWithExposureSpy({
				FFlagProactiveVoiceRestrictionsUFR = false,
				FFlagReactiveVoiceRestrictionsUFR = true,
			})
			expect(manager.default.voiceRestrictionController).toBeNil()
			emitJoinOverlay(manager, overlay)
			expect(logExposure).toHaveBeenCalledTimes(1)
			expect(createVoiceRestrictionController).never.toHaveBeenCalled()
		end)

		it("shows the dialog without logging exposure when exposure logging is off", function()
			mockExposureLogging = false
			local manager = requireManagerWithExposureSpy(allFlagsOn)
			emitJoinOverlay(manager, overlay)
			expect(getController().showPendingAcknowledgement).toHaveBeenCalledTimes(1)
			expect(logExposure).never.toHaveBeenCalled()
		end)

		it.each({
			{ name = "nil", value = nil },
			{ name = "not a table", value = "invalid" },
			{ name = "missing voice settings", value = {} },
			{ name = "banned", value = { voiceSettings = { isBanned = true, banReason = 10 } } },
			{ name = "another ban reason", value = { voiceSettings = { isBanned = false, banReason = 9 } } },
		})("ignores an overlay that is $name", function(testCase)
			local manager = requireManagerWithExposureSpy(allFlagsOn)
			emitJoinOverlay(manager, testCase.value)
			expect(getController().showPendingAcknowledgement).never.toHaveBeenCalled()
			expect(logExposure).never.toHaveBeenCalled()
		end)

		it("ignores the overlay when reactive restrictions are off", function()
			local manager = requireManagerWithExposureSpy({
				FFlagProactiveVoiceRestrictionsUFR = true,
				FFlagReactiveVoiceRestrictionsUFR = false,
			})
			emitJoinOverlay(manager, overlay)
			expect(createVoiceRestrictionController_DEPRECATED).toHaveBeenCalledTimes(1)
			expect(logExposure).never.toHaveBeenCalled()
		end)
	end)
end)
