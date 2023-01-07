local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.dependencies)
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local RhodiumHelpers = devDependencies.RhodiumHelpers

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local AddFriendsSectionHeaderFrame = require(script.Parent)

local defaultIcon = Images["icons/menu/more_off"]

local function createInstance(title, iconVisible, onIconActivated)
	return createInstanceWithProviders(mockLocale)(AddFriendsSectionHeaderFrame, {
		props = {
			title = title or "QQ",
			icon = defaultIcon,
			iconVisible = iconVisible,
			onIconActivated = onIconActivated,
		},
	})
end
local function headerImageButtonFilter(instance)
	return RhodiumHelpers.findFirstInstance(instance, {
		Name = "HeaderImageButton",
	})
end
local function headerTitleFinder(instance)
	return RhodiumHelpers.findFirstInstance(instance, {
		Name = "HeaderLabel",
	})
end

local function testElement(instance, elementFinder, elementChecker)
	local element = elementFinder(instance)
	elementChecker(element)
end

describe("AddFriendsSectionHeaderFrame", function()
	it("SHOULD mount and unmount without issue", function()
		local _, cleanup = createInstance("QQ", false)
		cleanup()
	end)

	it("SHOULD show title correctly when iconVisible is true", function()
		local instance, cleanup = createInstance("MOCK TITLE", true)
		testElement(instance, headerTitleFinder, function(textLabel)
			expect(textLabel).never.toBeNil()
			expect(textLabel.Text).toBe("MOCK TITLE")
		end)
		cleanup()
	end)

	it("SHOULD show title correctly when iconVisible is false", function()
		local instance, cleanup = createInstance("MOCK TITLE", false)
		testElement(instance, headerTitleFinder, function(textLabel)
			expect(textLabel).never.toBeNil()
			expect(textLabel.Text).toBe("MOCK TITLE")
		end)
		cleanup()
	end)

	it("SHOULD NOT show HeaderImageButton when iconVisible is false", function()
		local instance, cleanup = createInstance("QQ", false, nil)
		testElement(instance, headerImageButtonFilter, function(iconButton)
			expect(iconButton).toBeNil()
		end)
		cleanup()
	end)

	it("SHOULD show HeaderImageButton correctly when iconVisible is true", function()
		local mockOnActivated = function() end
		local instance, cleanup = createInstance("QQ", true, mockOnActivated)
		testElement(instance, headerImageButtonFilter, function(iconButton)
			expect(iconButton).never.toBeNil()
		end)
		cleanup()
	end)
end)
