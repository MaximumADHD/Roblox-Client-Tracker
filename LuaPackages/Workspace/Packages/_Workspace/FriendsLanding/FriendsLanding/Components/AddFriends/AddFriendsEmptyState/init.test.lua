local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it

local dependencies = require(FriendsLanding.dependencies)
local getFFlagSocialOnboardingExperimentEnabled = dependencies.getFFlagSocialOnboardingExperimentEnabled

local AddFriendsEmptyState = require(script.Parent)

describe("AddFriendsEmptyState", function()
	it("SHOULD mount and render without issue", function()
		if getFFlagSocialOnboardingExperimentEnabled() then
			local _, cleanup = createInstanceWithProps(mockLocale)(
				AddFriendsEmptyState,
				{ props = { screenSize = Vector2.new(100, 100) } }
			)

			cleanup()
		else
			local _, cleanup = createInstanceWithProps(mockLocale)(AddFriendsEmptyState)

			cleanup()
		end
	end)
end)
