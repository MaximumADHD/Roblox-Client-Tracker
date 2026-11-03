--!nonstrict

local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach

local VoiceChatPackage = CorePackages.Workspace.Packages.VoiceChat

local mockFlagOverrides: { [string]: boolean } = {}
jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	local flags = table.clone(jest.requireActual(CorePackages.Workspace.Packages.SharedFlags))
	for name, value in mockFlagOverrides do
		flags[name] = value
	end
	return flags
end)

local function createControllerFactoryMock()
	return jest.fn(function()
		return {
			getPresentationState = function()
				return "normal"
			end,
			check = jest.fn(),
			applyUFRTimeout = jest.fn(),
			dispose = jest.fn(),
		}
	end)
end

local createVoiceRestrictionController = createControllerFactoryMock()
jest.mock(VoiceChatPackage.createVoiceRestrictionController, function()
	return createVoiceRestrictionController
end)
local createVoiceRestrictionController_DEPRECATED = createControllerFactoryMock()
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
end)
