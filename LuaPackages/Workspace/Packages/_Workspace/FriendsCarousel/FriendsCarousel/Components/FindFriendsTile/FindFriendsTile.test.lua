local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local jest = devDependencies.jest
local findImageSet = devDependencies.findImageSet
local runWhileMounted = UnitTestHelpers.runWhileMounted
local getFFlagFriendsCarouselAddNewBadgeTracking =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddNewBadgeTracking)
local EventNames = require(FriendsCarousel.Analytics.EventNames)

local UIVariants = require(FriendsCarousel.Common.UIVariants)

local FindFriendsTile = require(script.Parent)

describe("FindFriendsTile", function()
	local state = {}

	describe("For both UIVariants", function()
		local runTestsForVariant = function(UIVariant, UIButton)
			it("should create and destroy without errors for UIVariant " .. UIVariant, function()
				local element = createTreeWithProviders(FindFriendsTile, {
					store = mockStore(state),
					props = {
						onActivated = function() end,
						friendsCarouselExperimentVariant = UIVariant,
					},
				})
				runWhileMounted(element, function(parent)
					jestExpect(#parent:GetChildren()).toBe(1)
				end)
			end)

			it("should fire onActivated if pressed for UIVariant " .. UIVariant, function()
				local onActivated = jest.fn()
				local element = createTreeWithProviders(FindFriendsTile, {
					store = mockStore(state),
					props = {
						onActivated = function()
							onActivated()
						end,
						friendsCarouselExperimentVariant = UIVariant,
					},
				})
				runWhileMounted(element, function(parent)
					local findFriendsTile = RhodiumHelpers.findFirstInstance(parent, {
						Name = UIButton,
					})
					RhodiumHelpers.clickInstance(findFriendsTile)
					jestExpect(onActivated).toHaveBeenCalled()
				end)
			end)

			it("should call onDidMount if passed for UIVariant " .. UIVariant, function()
				local onDidMountSpy = jest.fn()
				local element = createTreeWithProviders(FindFriendsTile, {
					store = mockStore(state),
					props = {
						onActivated = function() end,
						onDidMount = function()
							onDidMountSpy()
						end,
						friendsCarouselExperimentVariant = UIVariant,
					},
				})
				runWhileMounted(element, function()
					jestExpect(onDidMountSpy).toHaveBeenCalledTimes(1)
				end)
			end)

			describe(
				"WHEN isContactImporterEnabled = false and FriendsCarouselUpdateFindFriends = true for UIVariant "
					.. UIVariant,
				function()
					local oldValue
					beforeEach(function()
						oldValue = game:SetFastFlagForTesting("FriendsCarouselUpdateFindFriends", true)
					end)

					afterEach(function()
						game:SetFastFlagForTesting("FriendsCarouselUpdateFindFriends", oldValue)
					end)

					it("SHOULD show the right icon", function()
						local element = createTreeWithProviders(FindFriendsTile, {
							store = mockStore(state),
							props = {
								onActivated = function() end,
								friendsCarouselExperimentVariant = UIVariant,
								isContactImporterEnabled = false,
							},
						})
						runWhileMounted(element, function(parent)
							local imageLabelWithLegacyIcon =
								RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/menu/friends_large"))

							jestExpect(imageLabelWithLegacyIcon).toEqual(jestExpect.any("Instance"))
							game:SetFastFlagForTesting("FriendsCarouselUpdateFindFriends", oldValue)
						end)
					end)

					it("SHOULD have the right text", function()
						local element = createTreeWithProviders(FindFriendsTile, {
							store = mockStore(state),
							props = {
								onActivated = function() end,
								isContactImporterEnabled = false,
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
				end
			)
		end

		runTestsForVariant(UIVariants.SQUARE_TILES, "AddFriendsTileSquare")
		runTestsForVariant(UIVariants.CIRCULAR_TILES, "AddFriendsTileCircular")
	end)

	describe(
		"For UIVariants.SQUARE_TILES, isContactImporterEnabled = true and FriendsCarouselUpdateFindFriends = false",
		function()
			local oldValue
			beforeEach(function()
				oldValue = game:SetFastFlagForTesting("FriendsCarouselUpdateFindFriends", false)
			end)

			afterEach(function()
				game:SetFastFlagForTesting("FriendsCarouselUpdateFindFriends", oldValue)
			end)

			it("SHOULD have the right text", function()
				local badgeCount = 3945
				local element = createTreeWithProviders(FindFriendsTile, {
					store = mockStore(state),
					props = {
						badgeValue = badgeCount,
						onActivated = function() end,
						friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
						isContactImporterEnabled = true,
					},
				})
				runWhileMounted(element, function(parent)
					local textLabel = RhodiumHelpers.findFirstInstance(parent, {
						Name = "AddFriendsLabel",
					})

					jestExpect(textLabel).never.toBeNil()
					jestExpect(textLabel.Text).toBe("Feature.Friends.Action.FindFriends")
				end)
			end)

			it("SHOULD show the right icon", function()
				local element = createTreeWithProviders(FindFriendsTile, {
					store = mockStore(state),
					props = {
						onActivated = function() end,
						friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
						isContactImporterEnabled = true,
					},
				})
				runWhileMounted(element, function(parent)
					local imageLabelWithNewIcon =
						RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/menu/findfriends_large"))

					jestExpect(imageLabelWithNewIcon).toEqual(jestExpect.any("Instance"))
				end)
			end)

			it("should show no badge if badge value is equal to 0", function()
				local element = createTreeWithProviders(FindFriendsTile, {
					store = mockStore(state),
					props = {
						onActivated = function() end,
						friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
						isContactImporterEnabled = true,
					},
				})
				runWhileMounted(element, function(parent)
					local badge = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Badge",
					})

					jestExpect(badge).toBeNil()
				end)
			end)

			it(
				"should show badge if badge value is greater than 0 and and getFFlagFriendsCarouselUpdateFindFriends is false",
				function()
					local badgeCount = "26"
					local element = createTreeWithProviders(FindFriendsTile, {
						store = mockStore(state),
						props = {
							badgeValue = badgeCount,
							onActivated = function() end,
							friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
							isContactImporterEnabled = true,
						},
					})
					runWhileMounted(element, function(parent)
						local badge = RhodiumHelpers.findFirstInstance(parent, {
							Name = "Badge",
						})

						jestExpect(badge.Inner.TextLabel.Text).toEqual(badgeCount)
					end)
				end
			)

			it(
				"should show 99+ is badge value is greater than 99 and getFFlagFriendsCarouselUpdateFindFriends is false",
				function()
					local badgeCount = 3945
					local element = createTreeWithProviders(FindFriendsTile, {
						store = mockStore(state),
						props = {
							badgeValue = badgeCount,
							onActivated = function() end,
							friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
							isContactImporterEnabled = true,
						},
					})
					runWhileMounted(element, function(parent)
						local badge = RhodiumHelpers.findFirstInstance(parent, {
							Name = "Badge",
						})

						jestExpect(badge.Inner.TextLabel.Text).toEqual("99+")
					end)
				end
			)

			it("should fire badge seen event if showing a badge value", function()
				local mockEvent = jest.fn()
				local element = createTreeWithProviders(FindFriendsTile, {
					store = mockStore(state),
					props = {
						badgeValue = 80980980,
						onActivated = function() end,
						friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
						isContactImporterEnabled = true,
					},
					mockAnalytics = {
						value = {
							fireEvent = mockEvent,
						},
					},
				})

				runWhileMounted(element, function(parent)
					local badge = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Badge",
					})

					jestExpect(badge.Inner.TextLabel.Text).toEqual("99+")

					if getFFlagFriendsCarouselAddNewBadgeTracking() then
						jestExpect(mockEvent).toHaveBeenCalledTimes(1)
						jestExpect(mockEvent).toHaveBeenCalledWith(EventNames.ContactImporterOnAddFriends)
					else
						jestExpect(mockEvent).never.toHaveBeenCalled()
					end
				end)
			end)

			it("should not fire badge seen event if not showing a badge value", function()
				local mockEvent = jest.fn()
				local element = createTreeWithProviders(FindFriendsTile, {
					store = mockStore(state),
					props = {
						badgeValue = nil,
						onActivated = function() end,
						friendsCarouselExperimentVariant = UIVariants.SQUARE_TILES,
						isContactImporterEnabled = true,
					},
					mockAnalytics = {
						value = {
							fireEvent = mockEvent,
						},
					},
				})

				runWhileMounted(element, function(parent)
					local badge = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Badge",
					})

					jestExpect(badge).toBeNil()

					jestExpect(mockEvent).never.toHaveBeenCalled()
				end)
			end)
		end
	)
end)
