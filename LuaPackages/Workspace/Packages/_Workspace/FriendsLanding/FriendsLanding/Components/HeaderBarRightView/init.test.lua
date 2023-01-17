local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local EnumScreens = require(FriendsLanding.EnumScreens)
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.dependencies)
local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled

-- FIXME: APPFDN-1925
local headerBarRightView = require((script :: any).Parent["HeaderBarRightView.story"]) :: any
local noFriendsStory = require((script :: any).Parent["noFriends.story"]) :: any

describe("HeaderBarRightView", function()
	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function()
			local _, cleanup = createInstanceWithProps(mockLocale)(headerBarRightView)

			cleanup()
		end)
	end)

	describe("conditional navigation buttons", function()
		it("SHOULD show AddFriendsIcon and SearchFriendsIcon on FriendsLanding", function()
			local parent, cleanup = createInstanceWithProps(mockLocale)(noFriendsStory, {
				navigation = {
					state = {
						routeName = EnumScreens.FriendsLanding,
					},
				},
			})

			local addFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
				Name = "AddFriendsIcon",
			})

			local searchFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
				Name = "SearchFriendsIcon",
			})

			expect(addFriendsIcon).toEqual(expect.any("Instance"))
			expect(searchFriendsIcon).toEqual(expect.any("Instance"))

			cleanup()
		end)

		if getFFlagAddFriendsSearchbarIXPEnabled() then
			it("SHOULD show SearchFriendsIcon on SearchFriends", function()
				local parent, cleanup = createInstanceWithProviders(mockLocale)(headerBarRightView, {
					context = {
						addFriendsPageSearchbarEnabled = true,
					},
					props = {
						navigation = {
							state = {
								routeName = EnumScreens.SearchFriends,
							},
						},
					},
				})

				local searchFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
					Name = "SearchFriendsIcon",
				})

				expect(searchFriendsIcon).toEqual(expect.any("Instance"))

				cleanup()
			end)
		else
			it("SHOULD show AddFriendsIcon and SearchFriendsIcon on SearchFriends", function()
				local parent, cleanup = createInstanceWithProps(mockLocale)(noFriendsStory, {
					navigation = {
						state = {
							routeName = EnumScreens.SearchFriends,
						},
					},
				})

				local addFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
					Name = "AddFriendsIcon",
				})

				local searchFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
					Name = "SearchFriendsIcon",
				})

				expect(addFriendsIcon).toEqual(expect.any("Instance"))
				expect(searchFriendsIcon).toEqual(expect.any("Instance"))

				cleanup()
			end)
		end

		if not getFFlagAddFriendsSearchbarIXPEnabled() then
			it("SHOULD ONLY show SearchFriendsIcon on AddFriends", function()
				local parent, cleanup = createInstanceWithProps(mockLocale)(noFriendsStory, {
					navigation = {
						state = {
							routeName = EnumScreens.AddFriends,
						},
					},
				})

				local addFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
					Name = "AddFriendsIcon",
				})

				local searchFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
					Name = "SearchFriendsIcon",
				})

				expect(searchFriendsIcon).toEqual(expect.any("Instance"))
				expect(addFriendsIcon).toBeNil()

				cleanup()
			end)
		end
	end)

	describe("friendshipStates", function()
		it("SHOULD show add friends tooltip if they have no friends", function()
			local parent, cleanup = createInstanceWithProps(mockLocale)(noFriendsStory, {
				navigation = {
					state = {
						routeName = EnumScreens.FriendsLanding,
					},
				},
			})

			local noFriendsTooltip = RhodiumHelpers.findFirstInstance(parent, {
				Name = "CallToActionTooltip",
			})

			expect(noFriendsTooltip).toEqual(expect.any("Instance"))

			cleanup()
		end)

		it("SHOULD not show add friends tooltip if they have friends", function()
			local parent, cleanup = createInstanceWithProps(mockLocale)(headerBarRightView)

			local noFriendsTooltip = RhodiumHelpers.findFirstInstance(parent, {
				Name = "CallToActionTooltip",
			})

			expect(noFriendsTooltip).toBeNil()

			cleanup()
		end)
	end)

	describe("navigationEvents", function()
		local navigation, navigateToLuaAppPages
		local parent, cleanup

		beforeEach(function()
			navigation = {
				navigate = jest.fn(),
				state = {
					routeName = EnumScreens.FriendsLanding,
				},
			}
			navigateToLuaAppPages = {
				[EnumScreens.FriendFinder] = jest.fn(),
			}

			parent, cleanup = createInstanceWithProviders(mockLocale)(headerBarRightView, {
				context = {
					navigateToLuaAppPages = navigateToLuaAppPages,
				},

				props = {
					navigation = navigation,
					navigateToLuaAppPages = navigateToLuaAppPages,
				},
			})
		end)

		afterEach(function()
			cleanup()
		end)

		it("SHOULD go to the friends request page if you click the requests icon", function()
			local addFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
				Name = "AddFriendsIcon",
			})

			expect(addFriendsIcon).toEqual(expect.any("Instance"))

			RhodiumHelpers.clickInstance(addFriendsIcon)

			expect(navigation.navigate).toHaveBeenCalledTimes(1)
			expect(navigation.navigate).toHaveBeenCalledWith(EnumScreens.AddFriends)
			expect(navigateToLuaAppPages[EnumScreens.FriendFinder]).never.toHaveBeenCalled()
		end)
	end)
end)
