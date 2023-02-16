local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local dependencies = require(FriendsLanding.dependencies)
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local AddFriendsGenericBanner = require(script.Parent)

local BANNER_TITLE = "Mocked Banner Title"
local BANNER_TEXT = "Mocked Banner Text"
local BANNER_ICON = Images["icons/graphic/contacts_large"]

describe("AddFriendsGenericBanner", function()
	it("SHOULD mount and unmount without issue", function()
		local _, cleanup = createInstanceWithProps(mockLocale)(AddFriendsGenericBanner, {
			bannerIcon = BANNER_ICON,
			bannerTitle = BANNER_TITLE,
			bannerText = BANNER_TEXT,
			onActivated = function() end,
		})
		cleanup()
	end)

	it("SHOULD have correct banner title, text, and icon", function()
		local parent, cleanup = createInstanceWithProps(mockLocale)(AddFriendsGenericBanner, {
			bannerIcon = BANNER_ICON,
			bannerTitle = BANNER_TITLE,
			bannerText = BANNER_TEXT,
			onActivated = function() end,
		})

		local bannerTitle = RhodiumHelpers.findFirstInstance(parent, {
			Name = "BannerTitle",
		})
		expect(bannerTitle).never.toBeNil()
		expect(bannerTitle.Text).toEqual("Mocked Banner Title")

		local bannerText = RhodiumHelpers.findFirstInstance(parent, {
			Name = "BannerText",
		})
		expect(bannerText).never.toBeNil()
		expect(bannerText.Text).toEqual("Mocked Banner Text")

		local bannerIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "BannerIcon",
		})
		expect(bannerIcon).never.toBeNil()
		expect(bannerIcon.Image).toEqual(BANNER_ICON.Image)

		cleanup()
	end)

	it("should fire onActivated when pressed", function()
		local onActivatedSpy = jest.fn()
		local parent, cleanup = createInstanceWithProps(mockLocale)(AddFriendsGenericBanner, {
			bannerIcon = BANNER_ICON,
			bannerTitle = BANNER_TITLE,
			bannerText = BANNER_TEXT,
			onActivated = function()
				onActivatedSpy()
			end,
		})
		local banner = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Banner",
		})

		RhodiumHelpers.clickInstance(banner)
		expect(onActivatedSpy).toHaveBeenCalledTimes(1)
		cleanup()
	end)

	it("should have no info button by default", function()
		local parent, cleanup = createInstanceWithProps(mockLocale)(AddFriendsGenericBanner, {
			bannerIcon = BANNER_ICON,
			bannerTitle = BANNER_TITLE,
			bannerText = BANNER_TEXT,
			onActivated = function() end,
		})

		local infoButton = RhodiumHelpers.findFirstInstance(parent, {
			Name = "BannerInfoButton",
		})
		local infoIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "InfoIcon",
		})

		expect(infoButton).toBeNil()
		expect(infoIcon).toBeNil()
		cleanup()
	end)

	it("should fire onInfoButtonActivated when info button pressed", function()
		local onInfoButtonActivatedSpy = jest.fn()
		local parent, cleanup = createInstanceWithProps(mockLocale)(AddFriendsGenericBanner, {
			bannerIcon = BANNER_ICON,
			bannerTitle = BANNER_TITLE,
			bannerText = BANNER_TEXT,
			onActivated = function() end,
			hasInfoButton = true,
			onInfoButtonActivated = function()
				onInfoButtonActivatedSpy()
			end,
		})

		local infoIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "InfoIcon",
		})
		expect(infoIcon).never.toBeNil()
		RhodiumHelpers.clickInstance(infoIcon)
		expect(onInfoButtonActivatedSpy).toHaveBeenCalledTimes(1)
		cleanup()
	end)
end)
