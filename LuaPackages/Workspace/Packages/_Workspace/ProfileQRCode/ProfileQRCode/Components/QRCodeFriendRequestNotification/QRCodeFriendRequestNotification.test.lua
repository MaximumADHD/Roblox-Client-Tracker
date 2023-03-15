local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local runWhileMounted = SocialTestHelpers.TestHelpers.runWhileMounted
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Stories = require(script.Parent.QRCodeFriendRequestNotificationStories)
local defaultStory = Stories.default
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)
local jest = JestGlobals.jest
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)
local DefaultTestUserId = require(ProfileQRCode.TestHelpers.DefaultTestUserId)

it("SHOULD mount correctly", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD show username, description, icon, close and accept", function()
	local component = createTreeWithProviders(defaultStory, {})

	runWhileMounted(component, function(parent)
		local QRCodeIcon = findElementHelpers.findQRCodeIcon(parent, { assertElementExists = true })
		local username = findElementHelpers.findUsername(parent, { assertElementExists = true })
		local description = findElementHelpers.findNotificationDescription(parent, { assertElementExists = true })
		local closeButton = findElementHelpers.findCloseButton(parent, { assertElementExists = true })
		local acceptButton = findElementHelpers.findAcceptButton(parent, { assertElementExists = true })

		expect(QRCodeIcon:getRbxInstance()).toBeLeftOf(username:getRbxInstance())
		expect(closeButton:getRbxInstance()).toBeRightOf(username:getRbxInstance())
		expect(username:getRbxInstance()).toBeAbove(description:getRbxInstance())
		expect(description:getRbxInstance()).toBeInsideBelow(username:getRbxInstance())
		expect(acceptButton:getRbxInstance()).toBeInsideBelow(description:getRbxInstance())
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
		local closeButton = findElementHelpers.findCloseButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(closeButton:getRbxInstance())

		expect(onClose).toHaveBeenCalledTimes(1)
	end)
end)

it("SHOULD call onAccept if accept friend", function()
	local onAccept = jest.fn()
	local component = createTreeWithProviders(defaultStory, {
		props = {
			onAccept = onAccept,
			userId = DefaultTestUserId,
		},
	})

	runWhileMounted(component, function(parent)
		local acceptButton = findElementHelpers.findAcceptButton(parent, { assertElementExists = true })

		RhodiumHelpers.clickInstance(acceptButton:getRbxInstance())

		expect(onAccept).toHaveBeenCalledTimes(1)
		expect(onAccept).toHaveBeenCalledWith(DefaultTestUserId)
	end)
end)
