local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local mockShowAvatarChangeFeatureRestriction = jest.fn()

jest.mock(CorePackages.Workspace.Packages.AvatarExperienceCommon, function()
	local RealCommon = jest.requireActual(CorePackages.Workspace.Packages.AvatarExperienceCommon) :: any
	local mockCommon = table.clone(RealCommon)
	mockCommon.Utils = table.clone(RealCommon.Utils)
	mockCommon.Utils.showAvatarChangeFeatureRestriction = mockShowAvatarChangeFeatureRestriction
	return mockCommon
end)

local showSaveAvatarTimeoutFeatureRestriction = require(script.Parent.showSaveAvatarTimeoutFeatureRestriction)

describe("showSaveAvatarTimeoutFeatureRestriction", function()
	it("should signal save avatar permission denied and show the avatar change feature restriction", function()
		local callOrder = {}
		local mockAvatarEditorService = {
			SignalSaveAvatarPermissionDenied = jest.fn(function()
				table.insert(callOrder, "denied")
			end),
		}
		mockShowAvatarChangeFeatureRestriction.mockImplementation(function()
			table.insert(callOrder, "featureRestriction")
		end)

		showSaveAvatarTimeoutFeatureRestriction(mockAvatarEditorService :: any)

		expect(mockAvatarEditorService.SignalSaveAvatarPermissionDenied).toHaveBeenCalledTimes(1)
		expect(mockShowAvatarChangeFeatureRestriction).toHaveBeenCalledTimes(1)
		expect(callOrder).toEqual({ "denied", "featureRestriction" })
	end)
end)
