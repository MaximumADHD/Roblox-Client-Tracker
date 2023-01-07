local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local mapToUsers = require(FriendsLanding.Friends.mapToUsers)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local llama = dependencies.llama

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local ReactRoblox = devDependencies.ReactRoblox

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local AddFriendsContentFrame = require(script.Parent)
local smallNumbersOfFriends = getBaseTestStates().smallNumbersOfFriends

local AddFriendsTile = require(script.Parent.Parent.AddFriendsTile)

local function createStoreWithState(items)
	local StatusList = {
		Enum.FriendStatus.NotFriend,
		Enum.FriendStatus.Friend,
		Enum.FriendStatus.FriendRequestSent,
		Enum.FriendStatus.Unknown,
	}
	local mockState = {
		FriendStatuses = llama.Dictionary.map(items, function(item, index: number)
			return StatusList[1 + index % #StatusList], item.id
		end),
		LocalUserId = "0",
		ScreenSize = Vector2.new(500, 500),
	}
	return Rodux.Store.new(function()
		return mockState
	end, mockState, { Rodux.thunkMiddleware })
end

local function getHeaderFrameConfig(headerIconVisible)
	return {
		title = "QQ Friends (2)",
		icon = Images["icons/menu/more_off"],
		iconVisible = headerIconVisible,
	}
end

local function createInstance(headerFrameProps, users)
	local mockFunc = function() end
	local mockUsers = users or mapToUsers(smallNumbersOfFriends)("test")
	return createInstanceWithProviders(mockLocale)(AddFriendsContentFrame, {
		props = {
			headerFrame = headerFrameProps,
			renderAddFriendsTile = function(user, itemWidth, itemHeight, index)
				return Roact.createElement(AddFriendsTile, {
					layoutOrder = index,
					user = user,
					size = Vector2.new(itemWidth, itemHeight),
					handleNavigateDownToViewUserProfile = mockFunc,
					handleAcceptFriendRequest = mockFunc,
					handleDeclineFriendRequest = mockFunc,
					handleRequestFriendship = mockFunc,
				})
			end,
			position = UDim2.new(0, 0, 0, 24),
			friends = mockUsers,
			renderShowMore = function(layoutOrder)
				return Roact.createElement("Frame", {
					LayoutOrder = layoutOrder,
				}, {
					showMoreContainer = Roact.createElement("Frame", {}),
				})
			end,
			screenSize = Vector2.new(720, 1920),
		},
		store = createStoreWithState(mockUsers),
	})
end

local function createDefaultInstance(users)
	return createInstance(getHeaderFrameConfig(true), users)
end

describe("AddFriendsContentFrame", function()
	it("SHOULD mount and unmount without issue", function()
		local _, cleanup = createDefaultInstance()
		cleanup()
	end)

	it("SHOULD render GridView correctly by default", function()
		local instance, cleanup = createDefaultInstance()
		local gridView = RhodiumHelpers.findFirstInstance(instance, {
			Name = "ContentView",
		})
		local emptyState = RhodiumHelpers.findFirstInstance(instance, {
			Name = "EmptyState",
		})
		expect(gridView).never.toBeNil()
		expect(emptyState).toBeNil()
		cleanup()
	end)

	it("SHOULD render HeaderFrame correctly by default", function()
		local instance, cleanup = createDefaultInstance()
		local headerFrame = RhodiumHelpers.findFirstInstance(instance, {
			Name = "HeaderFrame",
		})
		expect(headerFrame).never.toBeNil()
		cleanup()
	end)

	it("SHOULD not show HeaderFrame if headerFrame props is nil", function()
		local instance, cleanup = createInstance(nil, nil)
		local headerFrame = RhodiumHelpers.findFirstInstance(instance, {
			Name = "HeaderFrame",
		})
		expect(headerFrame).toBeNil()
		cleanup()
	end)

	it("SHOULD have ShowMoreButtonContainer below the GridView", function()
		local instance, cleanup = createDefaultInstance()
		local showMoreContainer = RhodiumHelpers.findFirstInstance(instance, {
			Name = "showMoreContainer",
		})
		local addFriendsGridView = RhodiumHelpers.findFirstInstance(instance, {
			Name = "ContentView",
		})
		expect(showMoreContainer).never.toBeNil()
		expect(addFriendsGridView).never.toBeNil()
		-- quantum gui, AbsolutePosition is inaccurate on first access
		local _ = showMoreContainer.AbsolutePosition.Y
		expect(showMoreContainer).toBeBelow(addFriendsGridView)
		cleanup()
	end)

	it("SHOULD show not show IgnoreAllContextMenu by default", function()
		local instance, cleanup = createDefaultInstance()
		local ignoreAllContextMenu = RhodiumHelpers.findFirstInstance(instance, {
			Name = "cell 1",
		})
		expect(ignoreAllContextMenu).toBeNil()
		cleanup()
	end)

	describe("IgnoreAllContextMenu", function()
		local cleanup
		local expectIgnoreAllContextMenuVisibility, clickComponentByNameAndWait

		beforeEach(function()
			local instance
			instance, cleanup = createDefaultInstance()

			expectIgnoreAllContextMenuVisibility = function(visible)
				local ignoreAllMenu = RhodiumHelpers.findFirstInstance(instance, {
					Name = "cell 1",
				})
				if visible then
					expect(ignoreAllMenu).never.toBeNil()
				else
					expect(ignoreAllMenu).toBeNil()
				end
			end

			clickComponentByNameAndWait = function(componentName)
				local component = RhodiumHelpers.findFirstInstance(instance, {
					Name = componentName,
				})
				expect(component).never.toBeNil()
				ReactRoblox.act(function()
					RhodiumHelpers.clickInstance(component)
					wait()
				end)
			end
		end)

		afterEach(function()
			cleanup()
		end)

		it(
			"SHOULD show IgnoreAllContextMenu when clicking header ShowMore and close after clicking ShowMore again ",
			function()
				expectIgnoreAllContextMenuVisibility(false)

				clickComponentByNameAndWait("HeaderImageButton")

				expectIgnoreAllContextMenuVisibility(true)

				clickComponentByNameAndWait("HeaderImageButton")

				expectIgnoreAllContextMenuVisibility(false)
			end
		)

		it(
			"SHOULD show IgnoreAllContextMenu when clicking header ShowMore and close after clicking IgnoreAllContextMenu",
			function()
				expectIgnoreAllContextMenuVisibility(false)

				clickComponentByNameAndWait("HeaderImageButton")

				expectIgnoreAllContextMenuVisibility(true)

				clickComponentByNameAndWait("cell 1")

				expectIgnoreAllContextMenuVisibility(false)
			end
		)
	end)

	describe("EmptyState", function()
		local cleanup
		local setInstanceWithExtraProps, expectContentViewShow, expectEmptyStateShow

		beforeEach(function()
			setInstanceWithExtraProps = function()
				local instance
				instance, cleanup = createInstance(getHeaderFrameConfig(true), {})

				expectContentViewShow = function(visible)
					local contentView = RhodiumHelpers.findFirstInstance(instance, {
						Name = "ContentView",
					})
					if visible then
						expect(contentView).never.toBeNil()
					else
						expect(contentView).toBeNil()
					end
				end

				expectEmptyStateShow = function(visible)
					local emptyState = RhodiumHelpers.findFirstInstance(instance, {
						Name = "EmptyState",
					})
					if visible then
						expect(emptyState).never.toBeNil()
					else
						expect(emptyState).toBeNil()
					end
				end
			end
		end)

		afterEach(function()
			cleanup()
		end)

		it("SHOULD show emptyState if friends is empty", function()
			setInstanceWithExtraProps()
			expectContentViewShow(true)
			expectEmptyStateShow(true)
		end)
	end)
end)
