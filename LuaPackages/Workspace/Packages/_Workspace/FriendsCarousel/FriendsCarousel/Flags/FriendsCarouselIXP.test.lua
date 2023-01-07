local FriendsCarousel = script.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local getFStringSocialFriendsLayer = dependencies.getFStringSocialFriendsLayer
local UIVariants = require(FriendsCarousel.Common.UIVariants)

local FriendsCarouselIXP = require(script.Parent.FriendsCarouselIXP)

local getMockIXPLayers = function(layerConfig)
	local SocialFriendsLayer = getFStringSocialFriendsLayer()
	local mockIXPLayers = {
		[SocialFriendsLayer] = layerConfig or {},
	}
	return mockIXPLayers
end

local FlagFriendsCarouselVariant = "FriendsCarouselVariant"
local FlagFriendsCarouselEnabled = "FriendsCarouselEnabled_v2"
local FIntFriendsCarouselRolloutEnabled = "FriendsCarouselRolloutEnabled_v2"
local FlagFriendsCarouselEnabledForAll = "FriendsCarouselEnabledForAll_v2"

describe("FriendsCarouselIXP", function()
	local oldFlagFriendsCarouselVariant
	local oldFlagFriendsCarouselEnabled
	local oldFIntFriendsCarouselRolloutEnabled
	local oldFlagFriendsCarouselEnabledForAll

	beforeEach(function()
		oldFlagFriendsCarouselVariant = game:SetFastStringForTesting(FlagFriendsCarouselVariant, "")
		oldFlagFriendsCarouselEnabled = game:SetFastFlagForTesting(FlagFriendsCarouselEnabled, false)
		oldFIntFriendsCarouselRolloutEnabled = game:SetFastIntForTesting(FIntFriendsCarouselRolloutEnabled, 0)
		oldFlagFriendsCarouselEnabledForAll = game:SetFastFlagForTesting(FlagFriendsCarouselEnabledForAll, false)
	end)

	afterEach(function()
		game:SetFastStringForTesting(FlagFriendsCarouselVariant, oldFlagFriendsCarouselVariant)
		game:SetFastFlagForTesting(FlagFriendsCarouselEnabled, oldFlagFriendsCarouselEnabled)
		game:SetFastIntForTesting(FIntFriendsCarouselRolloutEnabled, oldFIntFriendsCarouselRolloutEnabled)
		game:SetFastFlagForTesting(FlagFriendsCarouselEnabledForAll, oldFlagFriendsCarouselEnabledForAll)
	end)

	describe("enabledForAll", function()
		it("SHOULD return true if FriendsCarouselEnabledForAll is true and UIVariant is squareTiles", function()
			game:SetFastFlagForTesting(FlagFriendsCarouselEnabledForAll, true)
			game:SetFastStringForTesting(FlagFriendsCarouselVariant, UIVariants.SQUARE_TILES)
			jestExpect(FriendsCarouselIXP.enabledForAll()).toBe(true)
		end)

		it("SHOULD return true if FriendsCarouselEnabledForAll is true and UIVariant is circularTiles", function()
			game:SetFastFlagForTesting(FlagFriendsCarouselEnabledForAll, true)
			game:SetFastStringForTesting(FlagFriendsCarouselVariant, UIVariants.CIRCULAR_TILES)
			jestExpect(FriendsCarouselIXP.enabledForAll()).toBe(true)
		end)

		it("SHOULD return false if FriendsCarouselEnabledForAll is false", function()
			game:SetFastFlagForTesting(FlagFriendsCarouselEnabledForAll, false)
			jestExpect(FriendsCarouselIXP.enabledForAll()).toBe(false)
		end)

		it(
			"SHOULD return false if FriendsCarouselEnabledForAll is true and UIVariant is not experiment value",
			function()
				game:SetFastFlagForTesting(FlagFriendsCarouselEnabledForAll, false)
				game:SetFastStringForTesting(FlagFriendsCarouselVariant, "randomvalue")
				jestExpect(FriendsCarouselIXP.enabledForAll()).toBe(false)
			end
		)
	end)

	describe("experimentVariant", function()
		it("SHOULD return correct variant from fast string", function()
			local MockIXPLayers = getMockIXPLayers({
				friends_carousel_ui = UIVariants.SQUARE_TILES,
			})
			game:SetFastStringForTesting(FlagFriendsCarouselVariant, UIVariants.CIRCULAR_TILES)
			jestExpect(FriendsCarouselIXP.experimentVariant(MockIXPLayers)).toBe(UIVariants.CIRCULAR_TILES)
		end)

		it("SHOULD return correct variant from mocked IXP layer if fast string is not set up", function()
			local MockIXPLayers = getMockIXPLayers({
				friends_carousel_ui = UIVariants.SQUARE_TILES,
			})
			game:SetFastStringForTesting(FlagFriendsCarouselVariant, "")
			jestExpect(FriendsCarouselIXP.experimentVariant(MockIXPLayers)).toBe(UIVariants.SQUARE_TILES)
		end)

		it("SHOULD return nil if Layer doesn't have variant and fast string is not set up", function()
			game:SetFastStringForTesting(FlagFriendsCarouselVariant, "")
			jestExpect(FriendsCarouselIXP.experimentVariant(nil)).toBe(nil)
		end)
	end)

	describe("experimentOrRolloutEnabled", function()
		describe("experiment variant from IXP is correct", function()
			local MockIXPLayers = getMockIXPLayers({
				friends_carousel_ui = UIVariants.SQUARE_TILES,
			})

			it("SHOULD return true if experiment flag enable", function()
				game:SetFastFlagForTesting(FlagFriendsCarouselEnabled, true)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled(MockIXPLayers)).toBe(true)
			end)

			it("SHOULD return false if experiment flag disabled", function()
				game:SetFastFlagForTesting(FlagFriendsCarouselEnabled, false)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled(MockIXPLayers)).toBe(false)
			end)

			it("SHOULD return true if rollout is 100", function()
				game:SetFastIntForTesting(FIntFriendsCarouselRolloutEnabled, 100)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled(MockIXPLayers)).toBe(true)
			end)

			it("SHOULD return false if rollout is 0", function()
				game:SetFastIntForTesting(FIntFriendsCarouselRolloutEnabled, 0)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled(MockIXPLayers)).toBe(false)
			end)

			it("SHOULD return true if developer flag enable", function()
				game:SetFastFlagForTesting(FlagFriendsCarouselEnabledForAll, true)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled(MockIXPLayers)).toBe(true)
			end)
		end)

		describe("experiment variant from IXP is not correct", function()
			local MockIXPLayers = getMockIXPLayers({
				friends_carousel_ui = "randomString",
			})

			it("SHOULD return false if experiment flag enable", function()
				game:SetFastFlagForTesting(FlagFriendsCarouselEnabled, true)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled(MockIXPLayers)).toBe(false)
			end)

			it("SHOULD return false if rollout enable", function()
				game:SetFastIntForTesting(FIntFriendsCarouselRolloutEnabled, 100)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled(MockIXPLayers)).toBe(false)
			end)

			it("SHOULD return false if developer flag enable", function()
				game:SetFastFlagForTesting(FlagFriendsCarouselEnabledForAll, true)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled(MockIXPLayers)).toBe(false)
			end)
		end)

		describe("experiment variant from fast string is correct", function()
			it("SHOULD return true if experiment flag is enabled", function()
				game:SetFastStringForTesting(FlagFriendsCarouselVariant, UIVariants.SQUARE_TILES)
				game:SetFastFlagForTesting(FlagFriendsCarouselEnabled, true)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled()).toBe(true)
			end)

			it("SHOULD return true if rollout is enabled", function()
				game:SetFastStringForTesting(FlagFriendsCarouselVariant, UIVariants.SQUARE_TILES)
				game:SetFastIntForTesting(FIntFriendsCarouselRolloutEnabled, 100)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled()).toBe(true)
			end)

			it("SHOULD return true if developer flag enable", function()
				game:SetFastStringForTesting(FlagFriendsCarouselVariant, UIVariants.SQUARE_TILES)
				game:SetFastFlagForTesting(FlagFriendsCarouselEnabledForAll, true)
				jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled()).toBe(true)
			end)
		end)
	end)
end)
