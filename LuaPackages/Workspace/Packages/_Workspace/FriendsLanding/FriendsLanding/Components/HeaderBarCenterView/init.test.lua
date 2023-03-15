local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local EnumScreens = require(FriendsLanding.EnumScreens)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)

local devDependencies = require(FriendsLanding.devDependencies)
local VirtualInput = devDependencies.Rhodium.VirtualInput
local ReactRoblox = devDependencies.ReactRoblox
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local dependencies = require(FriendsLanding.dependencies)
local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local getFFlagAddFriendsFullSearchbarAnalytics = dependencies.getFFlagAddFriendsFullSearchbarAnalytics
local getFFlagAddFriendsSearchbarWidemodeUpdate =
	require(FriendsLanding.Flags.getFFlagAddFriendsSearchbarWidemodeUpdate)

-- FIXME: APPFDN-1925
local headerBarCenterView = require((script :: any).Parent["HeaderBarCenterView.story"]) :: any

describe("HeaderBarCenterView", function()
	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function()
			local _, cleanup = createInstanceWithProviders(mockLocale)(headerBarCenterView, {})

			cleanup()
		end)
	end)
end)

describe("navigationEvents", function()
	local navigation, analytics
	local parent, cleanup

	beforeEach(function()
		navigation = {
			push = jest.fn().mockName("push"),
			state = {},
			replace = jest.fn().mockName("replace"),
		}
		analytics = {
			buttonClick = jest.fn().mockName("buttonClick"),
			playerSearch = jest.fn().mockName("playerSearch"),
			navigate = jest.fn().mockName("navigate"),
		}

		parent, cleanup = createInstanceWithProviders(mockLocale)(headerBarCenterView, {
			props = {
				navigation = navigation,
			},
			analytics = analytics,
		})
	end)

	afterEach(function()
		cleanup()
	end)

	it("SHOULD go to the search friends page if you press enter on text", function()
		local inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
			Name = "inputTextBox",
		})

		expect(inputTextBox).toEqual(expect.any("Instance"))

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(inputTextBox)
			inputTextBox.Text = "foo"
			task.wait()
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)
		end)

		ReactRoblox.act(function()
			task.wait()
		end)
		expect(navigation.push).toHaveBeenCalledTimes(1)
		expect(navigation.push).toHaveBeenCalledWith(EnumScreens.SearchFriends, { searchText = "foo" })
	end)

	it("SHOULD fire playerSearch analytics when you press enter for the first time", function()
		local inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
			Name = "inputTextBox",
		})

		expect(inputTextBox).toEqual(expect.any("Instance"))

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(inputTextBox)
			inputTextBox.Text = "foo"
			task.wait()
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)
		end)

		ReactRoblox.act(function()
			task.wait()
		end)

		expect(analytics.playerSearch).toHaveBeenCalledTimes(1)
		expect(analytics.playerSearch).toHaveBeenCalledWith(analytics, "submit", "foo", "Unknown")
	end)

	it("SHOULD fire navigate analytics when you press enter for the first time", function()
		local inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
			Name = "inputTextBox",
		})

		expect(inputTextBox).toEqual(expect.any("Instance"))

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(inputTextBox)
			inputTextBox.Text = "foo"
			task.wait()
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)
		end)

		ReactRoblox.act(function()
			task.wait()
		end)

		expect(analytics.navigate).toHaveBeenCalledTimes(1)
		expect(analytics.navigate).toHaveBeenCalledWith(analytics, EnumScreens.SearchFriends)
	end)

	it("SHOULD fire playerSearch event but not navigate analytics if already on the SearchScreen", function()
		navigation.state.routeName = EnumScreens.SearchFriends
		local inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
			Name = "inputTextBox",
		})

		expect(inputTextBox).toEqual(expect.any("Instance"))

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(inputTextBox)

			inputTextBox.Text = "foo"
			task.wait()
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)
		end)

		ReactRoblox.act(function()
			task.wait()
		end)

		expect(navigation.replace).toHaveBeenCalledTimes(1)
		expect(navigation.replace).toHaveBeenCalledWith(EnumScreens.SearchFriends, { searchText = "foo" })
		expect(analytics.playerSearch).toHaveBeenCalledTimes(1)
		expect(analytics.playerSearch).toHaveBeenCalledWith(analytics, "submit", "foo", "playerSearch")
		expect(analytics.navigate).never.toHaveBeenCalled()
	end)
end)

if getFFlagAddFriendsSearchbarIXPEnabled() then
	describe("inputTextBox", function()
		it("SHOULD render cancel text button when inputTextBox is activated", function()
			local parent, cleanup = createInstanceWithProviders(mockLocale)(headerBarCenterView, {})
			local inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
				Name = "inputTextBox",
			})
			expect(inputTextBox).toEqual(expect.any("Instance"))

			ReactRoblox.act(function()
				RhodiumHelpers.clickInstance(inputTextBox)
				task.wait()
			end)

			local cancel = RhodiumHelpers.findFirstInstance(parent, {
				Name = "cancel",
			})
			expect(cancel).toEqual(expect.any("Instance"))
			cleanup()
		end)
	end)

	if not getFFlagAddFriendsSearchbarWidemodeUpdate() then
		describe("wideMode device searchbar button on AddFriends page", function()
			local parent, cleanup, analytics
			local navigation = {
				state = {
					routeName = EnumScreens.AddFriends,
				},
				navigate = jest.fn().mockName("navigate"),
			}

			beforeEach(function()
				analytics = {
					buttonClick = jest.fn().mockName("buttonClick"),
					navigate = jest.fn().mockName("navigate"),
					playerSearch = jest.fn().mockName("playerSearch"),
				}

				parent, cleanup = createInstanceWithProviders(mockLocale)(headerBarCenterView, {
					props = {
						shouldRenderSearchbarButtonInWideMode = true,
						navigation = navigation,
						wideMode = true,
						addFriendsPageSearchbarEnabled = true,
					},
					analytics = analytics,
				})
			end)

			afterEach(function()
				cleanup()
			end)

			it("SHOULD have searchbar button with disabled searchbar", function()
				expect(parent).toEqual(expect.any("Instance"))

				local CallbackInputBox = RhodiumHelpers.findFirstInstance(parent, {
					className = "CallbackInputBox",
				})

				expect(CallbackInputBox).toBeNil()
			end)

			it("SHOULD NOT have cancel text button", function()
				local cancel = RhodiumHelpers.findFirstInstance(parent, {
					Name = "cancel",
				})

				expect(cancel).toBeNil()
			end)

			it("SHOULD go to the search friends page if you press on searchbar button", function()
				local ImageButton = RhodiumHelpers.findFirstInstance(parent, {
					className = "ImageButton",
				})

				expect(ImageButton).toEqual(expect.any("Instance"))

				ReactRoblox.act(function()
					RhodiumHelpers.clickInstance(ImageButton)
					task.wait()
				end)

				expect(navigation.navigate).toHaveBeenCalledTimes(1)
				expect(navigation.navigate).toHaveBeenCalledWith(
					EnumScreens.SearchFriends,
					{ searchText = "", shouldShowEmptyLandingPage = true }
				)
			end)

			if getFFlagAddFriendsFullSearchbarAnalytics() then
				it("SHOULD fire analytic events when you press on searchbar button", function()
					local ImageButton = RhodiumHelpers.findFirstInstance(parent, {
						className = "ImageButton",
					})

					expect(ImageButton).toEqual(expect.any("Instance"))

					ReactRoblox.act(function()
						RhodiumHelpers.clickInstance(ImageButton)
						task.wait()
					end)

					expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
					expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, ButtonClickEvents.PeopleSearchBar, {
						contextOverride = Contexts.PeopleSearchFromAddFriends.rawValue(),
						formFactor = "WIDE",
					})
					expect(analytics.navigate).toHaveBeenCalledTimes(1)
					expect(analytics.navigate).toHaveBeenCalledWith(analytics, EnumScreens.SearchFriends)
				end)
			end
		end)
	end
end
