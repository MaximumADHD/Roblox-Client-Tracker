local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local mapToUsers = require(FriendsLanding.Friends.mapToUsers)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local FriendsSourceType = require(FriendsLanding.AddFriends.Enums.FriendsSourceType)

local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local llama = dependencies.llama

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it

local AddFriendsTile = require(script.Parent.Parent.AddFriendsTile)
local AddFriendsGridView = require(script.Parent)

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
		LocalUserId = items[1].id,
	}
	return Rodux.Store.new(function()
		return mockState
	end, mockState, { Rodux.thunkMiddleware })
end

describe("AddFriendsGridView", function()
	local smallNumbersOfFriends = getBaseTestStates().smallNumbersOfFriends

	it("SHOULD mount and unmount without issue", function()
		local items = mapToUsers(smallNumbersOfFriends)("test")
		local mockFunc = function() end
		local _, cleanup = createInstanceWithProviders(mockLocale)(AddFriendsGridView, {
			props = {
				items = items,
				windowSize = Vector2.new(720, 1920),
				renderAddFriendsTile = function(user, itemWidth, itemHeight, index)
					return Roact.createElement(AddFriendsTile, {
						layoutOrder = index,
						user = user,
						size = Vector2.new(itemWidth, itemHeight),
						isFriendRequest = false,
						sourceType = FriendsSourceType.QQ,
						handleNavigateDownToViewUserProfile = mockFunc,
						handleAcceptFriendRequest = mockFunc,
						handleDeclineFriendRequest = mockFunc,
						handleRequestFriendship = mockFunc,
					})
				end,
			},
			store = createStoreWithState(items),
		})
		cleanup()
	end)
end)
