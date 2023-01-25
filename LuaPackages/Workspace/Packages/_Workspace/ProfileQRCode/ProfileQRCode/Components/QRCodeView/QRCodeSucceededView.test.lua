local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local runWhileMounted = LuaProfileDeps.UnitTestHelpers.runWhileMounted
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local QRCodeSucceededView = require(script.Parent.QRCodeSucceededView)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local mockState = require(ProfileQRCode.TestHelpers.mockState)

local findElementWithAssert = SocialTestHelpers.TestHelpers.findElementWithAssert
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)

local findDisplayName = findElementWithAssert({ Text = "bigMalc" })
local findUsename = findElementWithAssert({ Text = "@malcolmtucker" })

it("SHOULD mount correctly", function()
	local component = createTreeWithProviders(QRCodeSucceededView, {
		props = {
			layoutOrder = 1,
			qrCodeLength = 200,
			toEncode = "",
		},
		store = mockStore(mockState({
			LocalUserId = "156",
		})),
	})

	runWhileMounted(component, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD show displayname and username", function()
	local component = createTreeWithProviders(QRCodeSucceededView, {
		props = {
			layoutOrder = 1,
			qrCodeLength = 200,
			toEncode = "",
		},
		store = mockStore(mockState({
			LocalUserId = "156",
		})),
	})

	runWhileMounted(component, function(parent)
		local qrCode = findElementHelpers.findQRCode(parent, { assertElementExists = true })
		local displayName = findDisplayName(parent, { assertElementExists = true })
		local username = findUsename(parent, { assertElementExists = true })

		expect(qrCode:getRbxInstance()).toBeAbove(displayName:getRbxInstance())
		expect(displayName:getRbxInstance()).toBeInsideAbove(username:getRbxInstance())
	end)
end)

it("SHOULD show avatar infront of qrcode", function()
	local component = createTreeWithProviders(QRCodeSucceededView, {
		props = {
			layoutOrder = 1,
			qrCodeLength = 200,
			toEncode = "",
		},
		store = mockStore(mockState({
			LocalUserId = "156",
		})),
	})

	runWhileMounted(component, function(parent)
		local playerAvatar = findElementHelpers.findPlayerAvatar(parent, { assertElementExists = true })
		local qrCode = findElementHelpers.findQRCode(parent, { assertElementExists = true })

		expect(playerAvatar:getRbxInstance()).toBeInside(qrCode:getRbxInstance())
	end)
end)
