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

local FlagFriendsCarouselEnabled = "FriendsCarouselEnabled_v2"

describe("FriendsCarouselIXP", function()
	local oldFlagFriendsCarouselEnabled

	beforeEach(function()
		oldFlagFriendsCarouselEnabled = game:SetFastFlagForTesting(FlagFriendsCarouselEnabled, false)
	end)

	afterEach(function()
		game:SetFastFlagForTesting(FlagFriendsCarouselEnabled, oldFlagFriendsCarouselEnabled)
	end)

	describe("experimentVariant", function()
		it("SHOULD return nil", function()
			local MockIXPLayers = getMockIXPLayers({
				friends_carousel_ui = UIVariants.SQUARE_TILES,
			})
			jestExpect(FriendsCarouselIXP.experimentVariant(MockIXPLayers)).toBe(nil)
		end)
	end)

	describe("experimentOrRolloutEnabled", function()
		it("SHOULD return true if experiment flag enabled", function()
			game:SetFastFlagForTesting(FlagFriendsCarouselEnabled, true)
			jestExpect(FriendsCarouselIXP.experimentOrRolloutEnabled()).toBe(true)
		end)
	end)
end)
