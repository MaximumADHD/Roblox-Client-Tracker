local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)
local isAutomaticSizingEnabled = require(SocialTab.TestHelpers.isAutomaticSizingEnabled)

local devDependencies = require(SocialTab.devDependencies)
local TestUtils = devDependencies.TestUtils
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local UserCarousel = require(script.Parent)

-- FIXME: APPFDN-1925
local manyFriendsStory = require((script :: any).Parent["manyFriends.story"]) :: any
local defaultPropsStory = require((script :: any).Parent["UserCarousel.story"]) :: any

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(UserCarousel, {
			analytics = jest.fn(),
		})

		cleanup()
	end)
end)

describe("Measurements", function()
	it("SHOULD be tall enough to include room for presence text WITH AutomaticSizing ON", function()
		if isAutomaticSizingEnabled() then
			local oldValue = game:SetFastFlagForTesting("SocialTabAutoSizedCarouselAndTileEnabled2", true)
			local parent, cleanup = createInstanceWithProps(manyFriendsStory, {
				friendThumbnailSize = 96,
			})
			local inGameOrStudioTitle = nil
			TestUtils.waitUntil(function()
				inGameOrStudioTitle = RhodiumHelpers.findFirstInstance(parent, {
					Name = "InGameOrStudioTitle",
				})

				return inGameOrStudioTitle ~= nil
			end)

			local styleProvider = RhodiumHelpers.findFirstInstance(parent, {
				Name = "styleProvider",
			})

			expect(inGameOrStudioTitle).toEqual(expect.any("Instance"))
			expect(styleProvider).toEqual(expect.any("Instance"))

			local titleInside = inGameOrStudioTitle.AbsolutePosition.Y + inGameOrStudioTitle.AbsoluteSize.Y
				<= styleProvider.AbsolutePosition.Y + styleProvider.AbsoluteSize.Y
			expect(titleInside).toBe(true)

			cleanup()
			game:SetFastFlagForTesting("SocialTabAutoSizedCarouselAndTileEnabled2", oldValue)
		end
	end)
end)

describe("Components", function()
	it("SHOULD show addFriendHint if friendCount is 0", function()
		local parent, cleanup = createInstanceWithProps(defaultPropsStory)
		local addFriendHint = nil
		TestUtils.waitUntil(function()
			addFriendHint = RhodiumHelpers.findFirstInstance(parent, {
				Name = "HintFrame",
			})

			return addFriendHint ~= nil
		end)

		expect(addFriendHint).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD render Carousel Title", function()
		local parent, cleanup = createInstanceWithProps(defaultPropsStory)
		local Title = nil
		TestUtils.waitUntil(function()
			Title = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Title",
			})

			return Title ~= nil
		end)

		expect(Title).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD render AddFriendButton", function()
		local parent, cleanup = createInstanceWithProps(defaultPropsStory)
		local AddFriendButton = nil
		TestUtils.waitUntil(function()
			AddFriendButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "AddFriendButton",
			})

			return AddFriendButton ~= nil
		end)

		expect(AddFriendButton).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD render UserTile", function()
		local parent, cleanup = createInstanceWithProps(manyFriendsStory)
		local UserTile = nil
		TestUtils.waitUntil(function()
			UserTile = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Thumbnail",
			})

			return UserTile ~= nil
		end)

		expect(UserTile).toEqual(expect.any("Instance"))

		cleanup()
	end)
end)
