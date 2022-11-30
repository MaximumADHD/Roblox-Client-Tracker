local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local dependencies = require(SocialTab.dependencies)
local VerifiedBadges = dependencies.VerifiedBadges

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local ProfileEntry = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(ProfileEntry)

		cleanup()
	end)
end)

describe("props", function()
	it("SHOULD have Premium icon if user has premium account", function()
		local profileEntry, cleanup = createInstanceWithProps(ProfileEntry, {
			isPremium = true,
		})
		local emoji = RhodiumHelpers.findFirstInstance(profileEntry, {
			Name = "Emoji",
		})

		expect(emoji).toBeDefined()
		expect(emoji.Text).toBe(VerifiedBadges.emoji.premium)

		cleanup()
	end)

	it("SHOULD not have Premium icon if user doesn't have premium account", function()
		local profileEntry, cleanup = createInstanceWithProps(ProfileEntry)
		local emoji = RhodiumHelpers.findFirstInstance(profileEntry, {
			Name = "Emoji",
		})

		if game:GetFastFlag("ReturnChildFromWrapper") then
			expect(emoji).toBeNil()
		else
			expect(emoji.Text).toBe("")
		end

		cleanup()
	end)

	it("SHOULD have a Verified icon if the user is verified", function()
		local profileEntry, cleanup = createInstanceWithProps(ProfileEntry, {
			hasVerifiedBadge = true,
		})
		local emoji = RhodiumHelpers.findFirstInstance(profileEntry, {
			Name = "Emoji",
		})

		expect(emoji).toBeDefined()
		expect(emoji.Text).toBe(VerifiedBadges.emoji.verified)

		cleanup()
	end)

	it("SHOULD not have Verified icon if user doesn't have verified account", function()
		local profileEntry, cleanup = createInstanceWithProps(ProfileEntry)
		local emoji = RhodiumHelpers.findFirstInstance(profileEntry, {
			Name = "Emoji",
		})

		if game:GetFastFlag("ReturnChildFromWrapper") then
			expect(emoji).toBeNil()
		else
			expect(emoji.Text).toBe("")
		end

		cleanup()
	end)

	it("SHOULD render correct userText", function()
		local TEST_USERNAME = "testUserName"

		local profileEntry, cleanup = createInstanceWithProps(ProfileEntry, {
			userText = TEST_USERNAME,
		})
		local userText = RhodiumHelpers.findFirstInstance(profileEntry, {
			Name = "userText",
		})

		expect(userText.Text).toBe(TEST_USERNAME)

		cleanup()
	end)

	it("SHOULD fire the onActivated callback when the ProfileEntry is tapped", function()
		RhodiumHelpers.testOnActivated(ProfileEntry)
	end)
end)
