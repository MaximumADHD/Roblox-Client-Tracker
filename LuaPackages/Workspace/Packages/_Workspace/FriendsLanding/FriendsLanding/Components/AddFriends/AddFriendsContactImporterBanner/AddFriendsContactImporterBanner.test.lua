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
local getFFlagAddFriendsNewEmptyStateAndBanners = dependencies.getFFlagAddFriendsNewEmptyStateAndBanners

local AddFriendsContactImporterBanner = require(script.Parent)

local BANNER_TEXT = "Test Banner text"
local BUTTON_TEXT = "Test Button text"
local DEFAULT_WIDTH = 400
local noOpt = function() end

if getFFlagAddFriendsNewEmptyStateAndBanners() then
	it("SHOULD mount and unmount without issue", function()
		-- Placeholder test for the flag FFlagAddFriendsNewEmptyStateAndBanners
		-- This folder can be cleaned when cleaning FFlagAddFriendsNewEmptyStateAndBanners
	end)
else
	describe("AddFriendsContactImporterBanner", function()
		it("SHOULD mount and unmount without issue", function()
			local _, cleanup = createInstanceWithProps(mockLocale)(AddFriendsContactImporterBanner, {
				buttonText = BUTTON_TEXT,
				bannerText = BANNER_TEXT,
				onActivated = noOpt,
				containerWidth = DEFAULT_WIDTH,
			})
			cleanup()
		end)

		it("should have the banner text and no button when no button text is provided", function()
			local parent, cleanup = createInstanceWithProps(mockLocale)(AddFriendsContactImporterBanner, {
				bannerText = BANNER_TEXT,
				buttonText = nil,
				onActivated = noOpt,
				containerWidth = DEFAULT_WIDTH,
			})
			local button = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Button",
			})
			local bannerText = RhodiumHelpers.findFirstInstance(parent, {
				Name = "BannerText",
			})

			expect(bannerText).toEqual(expect.any("Instance"))
			expect(button).toBeNil()
			cleanup()
		end)

		it("should have the banner text and button", function()
			local parent, cleanup = createInstanceWithProps(mockLocale)(AddFriendsContactImporterBanner, {
				bannerText = BANNER_TEXT,
				buttonText = BUTTON_TEXT,
				onActivated = noOpt,
				containerWidth = DEFAULT_WIDTH,
			})
			local button = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Button",
			})
			local bannerText = RhodiumHelpers.findFirstInstance(parent, {
				Name = "BannerText",
			})

			expect(bannerText).toEqual(expect.any("Instance"))
			expect(button).toEqual(expect.any("Instance"))
			cleanup()
		end)

		it("should fire onClick when clicked", function()
			local onCTAClick = jest.fn()
			local parent, cleanup = createInstanceWithProps(mockLocale)(AddFriendsContactImporterBanner, {
				bannerText = BANNER_TEXT,
				buttonText = BUTTON_TEXT,
				onActivated = function()
					onCTAClick()
				end,
				containerWidth = DEFAULT_WIDTH,
			})
			local button = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Button",
			})

			RhodiumHelpers.clickInstance(button)
			expect(onCTAClick).toHaveBeenCalledTimes(1)
			cleanup()
		end)
	end)
end
