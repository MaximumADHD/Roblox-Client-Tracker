local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local runWhileMounted = LuaProfileDeps.UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Stories = require(script.Parent.ProfileQRCodePageStories)
local defaultStory = Stories.default
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)

beforeEach(function()
	createOrGetProfileShareUrl.Mock.reply(function()
		return {
			responseBody = {
				shortUrl = "www.bbc.co.uk",
			},
		}
	end)
end)

afterEach(function()
	createOrGetProfileShareUrl.Mock.clear()
end)

it("SHOULD mount correctly", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD show description and qrcode", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		local topBar = findElementHelpers.findTopBarTitle(parent, { assertElementExists = true })
		local description = findElementHelpers.findDescription(parent, { assertElementExists = true })
		local qrCode = findElementHelpers.findQRCodeView(parent, { assertElementExists = true })

		expect(topBar:getRbxInstance()).toBeAbove(qrCode:getRbxInstance())
		expect(qrCode:getRbxInstance()).toBeAbove(description:getRbxInstance())
	end)
end)
