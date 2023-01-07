local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Constants = require(FriendsLanding.Common.Constants)
local MockAppStorageService = require(FriendsLanding.TestHelpers.MockAppStorageService)

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local contactImporterTooltip = require(script.Parent.contactImporterTooltip)

describe("Check hasSeenFriendRequest", function()
	local HAS_ENGINE_FEATURE = game:GetEngineFeature(Constants.TOOLTIP_GAME_ENGINE_FEATURE)

	if HAS_ENGINE_FEATURE then
		describe("When user dismisses contact importer tooltip", function()
			it("SHOULD update local storage for contact importer tooltip", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.TOOLTIP_APP_STORAGE_KEY] = "true",
				})
				contactImporterTooltip.updateKey(appStorageService, false)

				local hasSeenFriendRequest = appStorageService:GetItem(Constants.TOOLTIP_APP_STORAGE_KEY)
				expect(hasSeenFriendRequest).toBe("false")
			end)
		end)
	else
		it("SHOULD NOT update local storage if no engine feature detected", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.TOOLTIP_APP_STORAGE_KEY] = "",
			})
			contactImporterTooltip.updateKey(appStorageService, true)
			local hasSeenFriendRequest = appStorageService:GetItem(Constants.TOOLTIP_APP_STORAGE_KEY)
			expect(hasSeenFriendRequest).toBe("")
		end)
	end
end)
