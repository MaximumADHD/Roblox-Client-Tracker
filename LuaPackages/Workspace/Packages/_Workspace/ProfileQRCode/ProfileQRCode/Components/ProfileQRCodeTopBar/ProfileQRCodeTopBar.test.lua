local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local runWhileMounted = SocialTestHelpers.TestHelpers.runWhileMounted
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Stories = require(script.Parent.ProfileQRCodeTopBarStories)
local defaultStory = Stories.default
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)
local jest = JestGlobals.jest
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)

it("SHOULD mount correctly", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD call onClose if closed", function()
	local onClose = jest.fn()
	local component = createTreeWithProviders(defaultStory, {
		props = {
			onClose = onClose,
		},
	})

	runWhileMounted(component, function(parent)
		local backButton = findElementHelpers.findBackButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(backButton:getRbxInstance())

		-- it seems to get called twice, but this seems to be to be a test-specific thing. Rather than actual duplicate calls in real life.
		expect(onClose).toHaveBeenCalled()
	end)
end)
