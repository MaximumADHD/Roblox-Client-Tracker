--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local UIBlox = dependencies.UIBlox
local GridMetrics = UIBlox.App.Grid.GridMetrics
local Images = UIBlox.App.ImageSet.Images
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local mapToUsers = require(FriendsLanding.Friends.mapToUsers)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local ShowMoreWrapper = require(FriendsLanding.Components.ShowMoreWrapper)
local AddFriendsContentFrame = require(script.Parent)
local AddFriendsTile = require(script.Parent.Parent.AddFriendsTile)
local manyFriends = getBaseTestStates().manyFriends

local STORY_SCREEN_SIZE = Vector2.new(1080, 1920)
local PLAYER_TILE_MARGIN = 12
local VISIBLE_ROWS = 6

local Story = Roact.PureComponent:extend("Story")

function Story:init()
	local localUserId = "0"
	local friendStatusTitleMapping = {
		[Enum.FriendStatus.NotFriend] = "NoFriend",
		[Enum.FriendStatus.Friend] = "Friend",
		[Enum.FriendStatus.FriendRequestSent] = "RequestSent",
		[Enum.FriendStatus.FriendRequestReceived] = "RequestReceived",
	}
	local friendStatus = llama.Dictionary.keys(friendStatusTitleMapping)
	self.statusForIndex = function(index)
		return friendStatus[1 + index % #friendStatus]
	end
	self.createStore = function(items)
		return Rodux.Store.new(function()
			return {
				LocalUserId = localUserId,
				FriendStatuses = llama.Dictionary.map(items, function(item, index)
					return self.statusForIndex(index), item.id
				end),
			}
		end, { Rodux.thunkMiddleware })
	end
	self.createUsers = function()
		local items = mapToUsers(manyFriends)("test")
		llama.List.every(items, function(item, index)
			local status = self.statusForIndex(index)
			item.displayName = friendStatusTitleMapping[status]
			item.userPresenceType = EnumPresenceType.InGame
			item.lastLocation = "Last Location"
			return true
		end)
		return items
	end
end

function Story:render()
	local users = self.createUsers()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.createStore(users),
	}, {
		Roact.createElement(ShowMoreWrapper, {
			listComponent = AddFriendsContentFrame,
			visibleRows = VISIBLE_ROWS,
			itemSize = GridMetrics.getMediumMetrics(STORY_SCREEN_SIZE.X, PLAYER_TILE_MARGIN).itemWidth,
			friends = users,
			headerFrame = {
				title = string.format("QQ Friends (%d)", #users),
				icon = Images["icons/menu/more_off"],
				iconVisible = true,
			},
			renderAddFriendsTile = function(user, itemWidth, itemHeight, index)
				return Roact.createElement(AddFriendsTile, {
					layoutOrder = index,
					user = user,
					size = Vector2.new(itemWidth, itemHeight),
					isFriendRequest = self.statusForIndex(index) == Enum.FriendStatus.FriendRequestReceived
						or self.statusForIndex(index) == Enum.FriendStatus.Friend,
				})
			end,
			position = UDim2.new(0, 0, 0, 0),
			screenSize = STORY_SCREEN_SIZE,
		}),
	})
end

return Story
