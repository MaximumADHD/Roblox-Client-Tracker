local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local t = dependencies.t
local llama = dependencies.llama
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local getFFlagAddFriendsPYMKExperimentEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsPYMKExperimentEnabled)
local getFFlagAddFriendsImproveAnalytics = require(FriendsLanding.Flags.getFFlagAddFriendsImproveAnalytics)

local getOverlayButtons = require(script.Parent.getOverlayButtons)

describe("AddFriendsTile#getPlayerTileOverlayButtons", function()
	local handleRequestFriendship, handleAcceptFriendRequest, handleDeclineFriendRequest

	local function wrapMockFunc(mockFunc)
		return function()
			mockFunc()
		end
	end

	local function runGetOverlayButtons(isFriendRequest, friendStatus, hasIncomingFriendRequest)
		return getOverlayButtons({
			playerId = "mock_player_id",
			isFriendRequest = isFriendRequest,
			friendStatus = friendStatus,
			hasIncomingFriendRequest = hasIncomingFriendRequest,
			networking = nil,
			sourceType = "QQ",
			handleRequestFriendship = wrapMockFunc(handleRequestFriendship),
			handleAcceptFriendRequest = wrapMockFunc(handleAcceptFriendRequest),
			handleDeclineFriendRequest = wrapMockFunc(handleDeclineFriendRequest),
			position = if getFFlagAddFriendsImproveAnalytics() then 0 else nil,
		})
	end

	local function findButtonWithIcon(buttons, iconRes)
		if not buttons then
			return nil
		end
		local filteredButtons = llama.List.filter(buttons, function(entry)
			return entry.icon == Images[iconRes]
		end)
		if #filteredButtons ~= 0 then
			expect(#filteredButtons).toEqual(1)
			return filteredButtons[1]
		else
			return nil
		end
	end

	local function checkButton(button, shouldExist, mockFunc)
		if shouldExist then
			expect(button).never.toBeNil()
			expect(button.onActivated).never.toBeNil()
			button.onActivated()
			if mockFunc then
				expect(mockFunc).toHaveBeenCalledTimes(1)
			end
		else
			expect(button).toBeNil()
		end
	end

	local function testButtonsExist(
		isFriendRequest,
		friendStatus,
		shouldRequestFriendshipExist,
		shouldAcceptExist,
		shouldDeclineExist,
		shouldPendingExist,
		hasIncomingFriendRequest
	)
		local buttons = runGetOverlayButtons(isFriendRequest, friendStatus, hasIncomingFriendRequest)
		if shouldRequestFriendshipExist then
			expect(#buttons).toBe(1)
		end
		if shouldAcceptExist or shouldDeclineExist then
			if not hasIncomingFriendRequest then
				expect(#buttons).toBe(2)
			end
		end
		if shouldPendingExist then
			expect(#buttons).toBe(1)
		end
		local buttonWithFriendAddIcon = findButtonWithIcon(buttons, "icons/actions/friends/friendAdd")
		local requestFriendshipButton = if hasIncomingFriendRequest
			then nil
			else #buttons == 1 and buttonWithFriendAddIcon or nil
		local acceptButton = (hasIncomingFriendRequest and #buttons == 1 or #buttons == 2) and buttonWithFriendAddIcon
			or nil
		local declineButton = findButtonWithIcon(buttons, "icons/actions/reject")
		local pendingButton = findButtonWithIcon(buttons, "icons/actions/friends/friendpending")
		checkButton(requestFriendshipButton, shouldRequestFriendshipExist, handleRequestFriendship)
		checkButton(acceptButton, shouldAcceptExist, handleAcceptFriendRequest)
		checkButton(declineButton, shouldDeclineExist, handleDeclineFriendRequest)
		checkButton(pendingButton, shouldPendingExist, nil)
	end

	beforeEach(function()
		handleRequestFriendship = jest.fn()
		handleAcceptFriendRequest = jest.fn()
		handleDeclineFriendRequest = jest.fn()
	end)

	it("SHOULD be a method", function()
		expect(type(getOverlayButtons)).toEqual(type(t.callback))
	end)

	it("SHOULD show the Accept and Decline buttons by default", function()
		testButtonsExist(true, nil, false, true, true, false)
	end)

	it("SHOULD only show RequestFriendship button with status: Enum.FriendStatus.NotFriend", function()
		testButtonsExist(false, Enum.FriendStatus.NotFriend, true, false, false, false)
	end)

	it("SHOULD NOT show any buttons with status: Enum.FriendStatus.Friend", function()
		testButtonsExist(false, Enum.FriendStatus.Friend, false, false, false, false)
	end)

	it("SHOULD only show the PendingStatus with status: Enum.FriendStatus.FriendRequestSent", function()
		testButtonsExist(false, Enum.FriendStatus.FriendRequestSent, false, false, false, true)
	end)

	it("SHOULD show the Accept and Decline buttons with status: Enum.FriendStatus.FriendRequestReceived", function()
		testButtonsExist(true, Enum.FriendStatus.FriendRequestReceived, false, true, true, false)
	end)

	it("SHOULD NOT show the buttons with status: Enum.FriendStatus.Unknown", function()
		testButtonsExist(true, Enum.FriendStatus.Unknown, false, false, false, false)
	end)

	if getFFlagAddFriendsPYMKExperimentEnabled() then
		it("SHOULD only show Accept button with hasIncomingFriendRequest", function()
			testButtonsExist(false, Enum.FriendStatus.NotFriend, false, true, false, false, true)
		end)
	end
end)
