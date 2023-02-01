local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local runWhileMounted = LuaProfileDeps.UnitTestHelpers.runWhileMounted
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local QRCodeFailedView = require(script.Parent.QRCodeFailedView)
local Dash = require(Packages.Dash)
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)

local findElementWithAssert = SocialTestHelpers.TestHelpers.findElementWithAssert
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)

local findFailedIcon = findElementWithAssert({ Name = "FailedImage" })
local findFailedDescription = findElementWithAssert({ Name = "FailedMessage" })

it("SHOULD mount correctly", function()
	local component = createTreeWithProviders(QRCodeFailedView, {
		props = {

			layoutOrder = 1,
			size = UDim2.new(0, 200, 0, 200),
			onActivated = Dash.noop,
		},
	})

	runWhileMounted(component, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD show icon message and retry button", function()
	local component = createTreeWithProviders(QRCodeFailedView, {
		props = {
			layoutOrder = 1,
			size = UDim2.new(0, 200, 0, 200),
			onActivated = Dash.noop,
		},
	})

	runWhileMounted(component, function(parent)
		local failedIcon = findFailedIcon(parent, { assertElementExists = true })
		local failedDescription = findFailedDescription(parent, { assertElementExists = true })
		local retryButton = findElementHelpers.findRetryButton(parent, { assertElementExists = true })

		expect(failedIcon:getRbxInstance()).toBeAbove(failedDescription:getRbxInstance())
		expect(failedDescription:getRbxInstance()).toBeAbove(retryButton:getRbxInstance())
	end)
end)

it("SHOULD be able to click retry button", function()
	local onActivatedMock = jest.fn()
	local component = createTreeWithProviders(QRCodeFailedView, {
		props = {
			layoutOrder = 1,
			size = UDim2.new(0, 200, 0, 200),
			onActivated = function()
				onActivatedMock()
			end,
		},
	})

	runWhileMounted(component, function(parent)
		local retryButton = findElementHelpers.findRetryButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(retryButton:getRbxInstance())

		expect(onActivatedMock).toHaveBeenCalledTimes(1)
	end)
end)
