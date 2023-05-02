local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local devDependencies = require(FriendsLanding.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local getAddFriendsPagePYMKVariant = require(script.Parent.getAddFriendsPagePYMKVariant)

it("SHOULD return correct info if in five rows variant", function()
	local shouldShowPYMKSection, initialRequestsRows = getAddFriendsPagePYMKVariant({
		add_friends_page_pymk_variant = "requestsFiveRows",
	})

	expect(shouldShowPYMKSection).toBe(true)
	expect(initialRequestsRows).toBe(5)
end)

it("SHOULD return correct info if in two rows variant", function()
	local shouldShowPYMKSection, initialRequestsRows = getAddFriendsPagePYMKVariant({
		add_friends_page_pymk_variant = "requestsTwoRows",
	})

	expect(shouldShowPYMKSection).toBe(true)
	expect(initialRequestsRows).toBe(2)
end)

it("SHOULD return correct info if in one row variant", function()
	local shouldShowPYMKSection, initialRequestsRows = getAddFriendsPagePYMKVariant({
		add_friends_page_pymk_variant = "requestsOneRow",
	})

	expect(shouldShowPYMKSection).toBe(true)
	expect(initialRequestsRows).toBe(1)
end)

it("SHOULD not show PYMK if in control group", function()
	local shouldShowPYMKSection, initialRequestsRows = getAddFriendsPagePYMKVariant({
		add_friends_page_pymk_variant = "control",
	})

	expect(shouldShowPYMKSection).toBe(false)
	expect(initialRequestsRows).toBeNil()
end)

it("SHOULD not show PYMK for random or unknown variants", function()
	local shouldShowPYMKSection, initialRequestsRows = getAddFriendsPagePYMKVariant({
		add_friends_page_pymk_variant = "",
	})

	expect(shouldShowPYMKSection).toBe(false)
	expect(initialRequestsRows).toBeNil()

	local shouldShowPYMKSectionRandom, initialRequestsRowsRandom = getAddFriendsPagePYMKVariant({
		add_friends_page_pymk_variant = "random",
	})

	expect(shouldShowPYMKSectionRandom).toBe(false)
	expect(initialRequestsRowsRandom).toBeNil()
end)
