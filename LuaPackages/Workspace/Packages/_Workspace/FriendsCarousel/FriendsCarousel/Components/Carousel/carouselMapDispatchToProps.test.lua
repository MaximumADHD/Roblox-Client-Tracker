local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local getFFlagContactImporterOnFriendsCarousel = dependencies.getFFlagContactImporterOnFriendsCarousel

local carouselMapDispatchToProps = require(script.Parent.carouselMapDispatchToProps)

describe("lifecycle", function()
	local oldValue

	beforeEach(function()
		oldValue = game:SetFastFlagForTesting("AutoSyncForContactImporterDisabled", false)
	end)

	afterEach(function()
		game:SetFastFlagForTesting("AutoSyncForContactImporterDisabled", oldValue)
	end)

	it("SHOULD return fields", function()
		local dispatchProps = carouselMapDispatchToProps(nil)
		jestExpect(dispatchProps).toEqual({
			getContactImporterParams = if getFFlagContactImporterOnFriendsCarousel()
				then nil
				else jestExpect.any("function"),
			sendContacts = jestExpect.any("function"),
		})
	end)
end)
