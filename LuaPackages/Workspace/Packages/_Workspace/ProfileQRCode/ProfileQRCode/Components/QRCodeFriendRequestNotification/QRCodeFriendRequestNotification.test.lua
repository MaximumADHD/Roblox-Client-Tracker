local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local LuaProfileDeps = require(Packages.Dev.LuaProfileDeps)
local runWhileMounted = LuaProfileDeps.UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(ProfileQRCode.TestHelpers.createTreeWithProviders)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Stories = require(script.Parent.QRCodeFriendRequestNotificationStories)
local defaultStory = Stories.default
local findElementHelpers = require(ProfileQRCode.TestHelpers.findElementHelpers)

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

-- it("SHOULD call onClose if closed", function()
-- 	local onClose = jest.fn()
-- 	local component = createTreeWithProviders(defaultStory, {
-- 		-- props = {
-- 		-- 	onClose = onClose,
-- 		-- },
-- 	})

-- 	runWhileMounted(component, function(parent)
-- 		local backButton = findElementHelpers.findBackButton(parent, { assertElementExists = true })

-- 		RhodiumHelpers.clickInstance(backButton:getRbxInstance())

-- 		-- it seems to get called twice, but this seems to be to be a test-specific thing. Rather than actual duplicate calls in real life.
-- 		expect(onClose).toHaveBeenCalled()
-- 	end)
-- end)

-- it("SHOULD call onAccept if accept friend", function()
-- 	local onClose = jest.fn()
-- 	local component = createTreeWithProviders(defaultStory, {
-- 		-- props = {
-- 		-- 	onAccept = onAccept,
-- 		-- },
-- 	})

-- 	runWhileMounted(component, function(parent)
-- 		local backButton = findElementHelpers.findBackButton(parent, { assertElementExists = true })

-- 		RhodiumHelpers.clickInstance(backButton:getRbxInstance())

-- 		-- it seems to get called twice, but this seems to be to be a test-specific thing. Rather than actual duplicate calls in real life.
-- 		expect(onAccept).toHaveBeenCalled()
-- 	end)
-- end)
