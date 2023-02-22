local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local devDependencies = require(FriendsLanding.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local getShowNewAddFriendsPageVariant = require(script.Parent.getShowNewAddFriendsPageVariant)

it("SHOULD return false if variant is not correct", function()
	local controlVariantBoolean = getShowNewAddFriendsPageVariant({
		social_onboarding_variant = "control",
	})

	expect(controlVariantBoolean).toBe(false)

	local randomVariantBoolean = getShowNewAddFriendsPageVariant({
		social_onboarding_variant = "random",
	})

	expect(randomVariantBoolean).toBe(false)
end)

it("SHOULD return true if variant is correct", function()
	local newUIVariantBoolean = getShowNewAddFriendsPageVariant({
		social_onboarding_variant = "newUIAddFriendsEntry",
	})

	expect(newUIVariantBoolean).toBe(true)

	local oldUIVariantBoolean = getShowNewAddFriendsPageVariant({
		social_onboarding_variant = "oldUIAddFriendsEntry",
	})

	expect(oldUIVariantBoolean).toBe(true)
end)
