local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = devDependencies.jest

local findImageSet = devDependencies.findImageSet
local runWhileMounted = UnitTestHelpers.runWhileMounted

local Analytics = require(FriendsCarousel.Analytics)
local setupFireEvent = Analytics.setupFireEvent
local EventNames = Analytics.EventNames
local validateEvent = require(FriendsCarousel.TestHelpers.validateEvent)
local mockAnalytics = dependencies.SocialLuaAnalytics.TestingAnalytics.mockAnalytics

local FindFriendsTile = require(script.Parent)

local getFFlagFriendsCarouselCircularBadge = require(FriendsCarousel.Flags.getFFlagFriendsCarouselCircularBadge)
local getFFlagSocialOnboardingExperimentEnabled = dependencies.getFFlagSocialOnboardingExperimentEnabled

describe("FindFriendsTile", function()
	local state = {}
	local mockAnalyticsValue = function(analytics: any?)
		return {
			fireEvent = setupFireEvent({
				analytics = analytics or mockAnalytics(jest),
				infoForAllEvents = {
					uid = "test",
				},
			}),
		}
	end

	it("should create and destroy without errors", function()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function() end,
			},
		})
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("should fire onActivated if pressed", function()
		local onActivated = jest.fn()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function()
					onActivated()
				end,
			},
		})
		runWhileMounted(element, function(parent)
			local findFriendsTile = RhodiumHelpers.findFirstInstance(parent, {
				Name = "AddFriendsTileCircular",
			})
			RhodiumHelpers.clickInstance(findFriendsTile)
			jestExpect(onActivated).toHaveBeenCalled()
		end)
	end)

	it("should call onDidMount if passed", function()
		local onDidMountSpy = jest.fn()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function() end,
				onDidMount = function()
					onDidMountSpy()
				end,
			},
		})
		runWhileMounted(element, function()
			jestExpect(onDidMountSpy).toHaveBeenCalledTimes(1)
		end)
	end)

	it("SHOULD show the right icon", function()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function() end,
			},
		})
		runWhileMounted(element, function(parent)
			local imageLabelWithLegacyIcon =
				RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/menu/friends_large"))

			jestExpect(imageLabelWithLegacyIcon).toEqual(jestExpect.any("Instance"))
		end)
	end)

	it("SHOULD have the right text", function()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function() end,
			},
		})
		runWhileMounted(element, function(parent)
			local textLabel = RhodiumHelpers.findFirstInstance(parent, {
				Name = "AddFriendsLabel",
			})

			jestExpect(textLabel).never.toBeNil()
			jestExpect(textLabel.Text).toBe("Feature.Chat.Label.AddFriends")
		end)
	end)

	it("SHOULD not render badge if it's not passed", function()
		local element = createTreeWithProviders(FindFriendsTile, {
			store = mockStore(state),
			props = {
				onActivated = function() end,
			},
		})
		runWhileMounted(element, function(parent)
			local badge = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Badge",
			})

			jestExpect(badge).toBeNil()
		end)
	end)

	it("SHOULD render correct badge value if it passed", function()
		if getFFlagFriendsCarouselCircularBadge() and getFFlagSocialOnboardingExperimentEnabled() then
			local element = createTreeWithProviders(FindFriendsTile, {
				store = mockStore(state),
				props = {
					onActivated = function() end,
					badgeValue = "badgeValue",
				},
				mockAnalytics = {
					value = mockAnalyticsValue(nil),
				},
			})
			runWhileMounted(element, function(parent)
				local badge = RhodiumHelpers.findFirstInstance(parent, {
					Name = "Badge",
				})

				jestExpect(badge).never.toBeNil()
				jestExpect(badge.Inner.TextLabel.Text).toEqual("bad...")
			end)
		end
	end)

	it("SHOULD call analytics event when badge value is passed", function()
		if getFFlagSocialOnboardingExperimentEnabled() then
			local mockedAnalytics = mockAnalytics(jest)
			local element = createTreeWithProviders(FindFriendsTile, {
				store = mockStore(state),
				props = {
					onActivated = function() end,
					badgeValue = "badgeValue",
				},
				mockAnalytics = {
					value = mockAnalyticsValue(mockedAnalytics),
				},
			})
			runWhileMounted(element, function(_parent)
				jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
				jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
					mockedAnalytics.EventStream,
					validateEvent(EventNames.ContactImporterOnAddFriends, {
						uid = "test",
					})
				)
			end)
		end
	end)
end)
