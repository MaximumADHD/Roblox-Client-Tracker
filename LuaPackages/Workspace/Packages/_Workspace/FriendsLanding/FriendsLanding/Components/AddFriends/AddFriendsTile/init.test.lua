local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.AddFriends.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local LocalizationProvider = dependencies.LocalizationProvider
local Signal = dependencies.Signal

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local ReactRoblox = devDependencies.ReactRoblox
local findImageSet = devDependencies.findImageSet
local TextKeys = require(FriendsLanding.Common.TextKeys)

local JestGlobals = devDependencies.JestGlobals
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local withEveryFriendStatus = require(script.Parent.withEveryFriendStatus)
local userForStatus = withEveryFriendStatus.userForStatus
local baseStore = withEveryFriendStatus.baseStore
local friendWithContextInfo = withEveryFriendStatus.friendWithContextInfo
local fullContextInfo = withEveryFriendStatus.fullContextInfo
local getFFlagProfileQRCodeFriendRequestContextInfoEnabled =
	dependencies.getFFlagProfileQRCodeFriendRequestContextInfoEnabled
local AddFriendsTile = require(script.Parent)

local mockLocalization = {
	mutualFriendsText = if fullContextInfo.userProps.mutualFriends
			and #fullContextInfo.userProps.mutualFriends == 1
		then "mutual friend"
		else "mutual friends",
	sentFromWithContextText = "Sent from",
	youAreFollowingText = "You are following",
	followsYouText = "Follows you",
	QRCodeText = "Sent from your QR code",
}

local function mockFunc() end

local function createAddFriendsTileInstance(friendStatus, propsOverride)
	local mockUser = propsOverride.user or userForStatus(friendStatus)
	local localizedKeys = {
		["Feature.Friends.Label.MutualFriends"] = mockLocalization.mutualFriendsText,
		["Feature.Friends.Label.SentFromWithContext"] = mockLocalization.sentFromWithContextText,
		["Feature.Friends.Label.YouAreFollowing"] = mockLocalization.youAreFollowingText,
		["Feature.Friends.Label.FollowsYou"] = mockLocalization.followsYouText,
		[TextKeys.PROFILE_QR_CODE_TILE_FOOTER] = mockLocalization.QRCodeText,
	}
	local function mockLocale(element)
		return Roact.createElement(LocalizationProvider, {
			localization = {
				Format = function(_, key, _)
					return localizedKeys[key] or key
				end,
				changed = Signal.new(),
			},
		}, { TestElement1 = element })
	end
	return createInstanceWithProviders(mockLocale)(AddFriendsTile, {
		props = llama.Dictionary.join({
			layoutOrder = 1,
			user = mockUser,
			size = Vector2.new(10, 10),
			handleNavigateDownToViewUserProfile = mockFunc,
			handleAcceptFriendRequest = mockFunc,
			handleDeclineFriendRequest = mockFunc,
			handleRequestFriendship = mockFunc,
		}, propsOverride),
		store = baseStore,
	})
end
local function testPlayerTileRenderAndCallback(friendStatus, isFriendRequest, findButton, callback)
	local mockFunc = jest.fn()
	local parent, cleanup = createAddFriendsTileInstance(friendStatus, {
		[callback] = function()
			mockFunc()
		end,
		["isFriendRequest"] = isFriendRequest,
	})
	local button = findButton(parent)
	ReactRoblox.act(function()
		RhodiumHelpers.clickInstance(button)
	end)
	expect(mockFunc).toHaveBeenCalledTimes(1)
	cleanup()
end

local function playerTileFilter(instance)
	return RhodiumHelpers.findFirstInstance(instance, {
		Name = "Tile",
	})
end

describe("friendStatus", function()
	it(
		"SHOULD onActivated be invoked without issue when isFriendRequest is false with status Enum.FriendStatus.NotFriend",
		function()
			testPlayerTileRenderAndCallback(
				Enum.FriendStatus.NotFriend,
				false,
				playerTileFilter,
				"handleNavigateDownToViewUserProfile"
			)
		end
	)

	it(
		"SHOULD onActivated be invoked without issue when isFriendRequest is true with status Enum.FriendStatus.NotFriend",
		function()
			testPlayerTileRenderAndCallback(
				Enum.FriendStatus.NotFriend,
				true,
				playerTileFilter,
				"handleNavigateDownToViewUserProfile"
			)
		end
	)

	it(
		"SHOULD onActivated be invoked without issue when isFriendRequest is false with status Enum.FriendStatus.FriendRequestReceived",
		function()
			testPlayerTileRenderAndCallback(
				Enum.FriendStatus.FriendRequestReceived,
				false,
				playerTileFilter,
				"handleNavigateDownToViewUserProfile"
			)
		end
	)

	it(
		"SHOULD onActivated be invoked without issue when isFriendRequest is true with status Enum.FriendStatus.FriendRequestReceived",
		function()
			testPlayerTileRenderAndCallback(
				Enum.FriendStatus.FriendRequestReceived,
				true,
				playerTileFilter,
				"handleNavigateDownToViewUserProfile"
			)
		end
	)

	it(
		"SHOULD onActivated be invoked without issue when isFriendRequest is false with status Enum.FriendStatus.FriendRequestSent",
		function()
			testPlayerTileRenderAndCallback(
				Enum.FriendStatus.FriendRequestSent,
				false,
				playerTileFilter,
				"handleNavigateDownToViewUserProfile"
			)
		end
	)

	it(
		"SHOULD onActivated be invoked without issue when isFriendRequest is true with status Enum.FriendStatus.FriendRequestSent",
		function()
			testPlayerTileRenderAndCallback(
				Enum.FriendStatus.FriendRequestSent,
				true,
				playerTileFilter,
				"handleNavigateDownToViewUserProfile"
			)
		end
	)
end)

describe("relevancyInfo", function()
	local parent, cleanup

	local function createAddFriendsTileWithContext(isFriendRequest, friendStatus, contextInfo)
		parent, cleanup = createAddFriendsTileInstance(
			friendStatus,
			llama.Dictionary.join(contextInfo.tileProps, {
				isFriendRequest = isFriendRequest,
				friendStatus = friendStatus,
				user = userForStatus(friendStatus, contextInfo.userProps),
			})
		)
	end

	local function expectPlayerContextContainsLabel(targetLabel)
		local PlayerContext = RhodiumHelpers.findFirstInstance(parent, {
			Name = "PlayerContext",
		})
		local textLabel = RhodiumHelpers.findFirstInstance(PlayerContext, {
			Name = "Text",
		})
		if targetLabel then
			expect(textLabel.Text).toContain(targetLabel)
		else
			expect(textLabel.Text).toContain("")
		end
	end

	local function expectPlayerContextContainsIcon(iconRes)
		local PlayerContext = RhodiumHelpers.findFirstInstance(parent, {
			Name = "PlayerContext",
		})
		if iconRes ~= nil then
			local icon = RhodiumHelpers.findFirstInstance(PlayerContext, findImageSet(iconRes))
			expect(icon).toEqual(expect.any("Instance"))
		else
			local iconFrame = RhodiumHelpers.findFirstInstance(PlayerContext, {
				Name = "IconFrame",
			})
			expect(iconFrame).toBeNil()
		end
	end

	afterEach(function()
		cleanup()
	end)

	it("SHOULD render MutualFriends user context correctly", function()
		createAddFriendsTileWithContext(
			true,
			Enum.FriendStatus.FriendRequestReceived,
			friendWithContextInfo.FriendWithMutualFriends
		)
		expectPlayerContextContainsLabel(mockLocalization.mutualFriendsText)
		expectPlayerContextContainsIcon("icons/status/player/friend")
	end)

	it("SHOULD render SentFrom user context correctly", function()
		createAddFriendsTileWithContext(
			true,
			Enum.FriendStatus.FriendRequestReceived,
			friendWithContextInfo.FriendWithSentFrom
		)
		expectPlayerContextContainsLabel(mockLocalization.sentFromWithContextText)
		expectPlayerContextContainsIcon(nil)
	end)

	it("SHOULD render YouAreFollowing user context correctly", function()
		createAddFriendsTileWithContext(
			true,
			Enum.FriendStatus.FriendRequestReceived,
			friendWithContextInfo.FriendYouAreFollowing
		)
		expectPlayerContextContainsLabel(mockLocalization.youAreFollowingText)
		expectPlayerContextContainsIcon("icons/status/player/following")
	end)

	it("SHOULD render FollowsYou user context correctly", function()
		createAddFriendsTileWithContext(
			true,
			Enum.FriendStatus.FriendRequestReceived,
			friendWithContextInfo.FriendFollowingMe
		)
		expectPlayerContextContainsLabel(mockLocalization.followsYouText)
		expectPlayerContextContainsIcon("icons/status/player/following")
	end)

	it("SHOULD render QRCode user context correctly", function()
		createAddFriendsTileWithContext(
			true,
			Enum.FriendStatus.FriendRequestReceived,
			friendWithContextInfo.FriendViaQRCode
		)
		if getFFlagProfileQRCodeFriendRequestContextInfoEnabled() then
			expectPlayerContextContainsLabel(mockLocalization.QRCodeText)
		end
		expectPlayerContextContainsIcon(nil)
	end)

	it("SHOULD render NoFriend user context correctly", function()
		createAddFriendsTileWithContext(false, Enum.FriendStatus.NotFriend, friendWithContextInfo.FriendNoFriend)
		expectPlayerContextContainsLabel(nil)
		expectPlayerContextContainsIcon(nil)
	end)

	it("SHOULD render FriendPending user context correctly", function()
		createAddFriendsTileWithContext(false, Enum.FriendStatus.FriendRequestSent, friendWithContextInfo.FriendPending)
		expectPlayerContextContainsLabel(nil)
		expectPlayerContextContainsIcon(nil)
	end)
end)
