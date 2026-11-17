local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local mockLeaveExperienceWithReason = jest.fn()
jest.mock(CorePackages.Workspace.Packages.ExperienceService, function()
	return {
		ExperienceService = {
			LeaveExperienceWithReason = function(_self, reason)
				mockLeaveExperienceWithReason(reason)
			end,
		},
	}
end)

local leaveGame = require(RobloxGui.Modules.Settings.leaveGame)

describe("leaveGame", function()
	-- Only the reason branch is exercised: the others shut down or natively exit the DataModel
	-- the suite runs in.
	it("SHOULD leave through ExperienceService with the reason WHEN a leave reason is given", function()
		leaveGame(false, {
			leaveReason = "Logout",
			inhibitAppRating = true,
			telemetryFields = {},
		})

		expect(mockLeaveExperienceWithReason).toHaveBeenCalledTimes(1)
		expect(mockLeaveExperienceWithReason).toHaveBeenCalledWith("Logout")
	end)
end)
