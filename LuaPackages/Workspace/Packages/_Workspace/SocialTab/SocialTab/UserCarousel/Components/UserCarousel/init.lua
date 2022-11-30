--!nonstrict
-- Based on src/internal/LuaApp/Modules/LuaApp/Components/Home/UserCarousel.lua

local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local Text = dependencies.Text
local t = dependencies.t
local llama = dependencies.llama
local Mock = dependencies.Mock

local UserUtils = require(SocialTab.User)
local Logger = require(SocialTab.Logger)
local EnumScreens = require(SocialTab.EnumScreens)

local AddFriendsTile = require(script.Parent.AddFriendsTile)
local UserTile = require(script.Parent.UserTile)
local UserCarouselHeader = require(script.Parent.UserCarouselHeader)
local UIBloxCarouselAdaptor = require(script.Parent.UIBloxCarouselAdaptor)

local TILE_INTERNAL_PADDING = 8

local UserCarousel = Roact.PureComponent:extend("UserCarousel")

UserCarousel.defaultProps = {
	accountProviderName = "",
	addFriendOnActivated = function() end,
	enableDisplayNamePolicy = false,
	friends = {},
	friendThumbnailSize = 96,
	LayoutOrder = 0,
	Logger = Logger,
	onFriendSelected = function() end,
	peopleListFrozen = false,
	screenSize = Vector2.new(1000, 1000),
	shouldInviteFromAccountProvider = false,
	wideMode = false,
	hasFriendRequests = false,
}

UserCarousel.validateProps = t.interface({
	analytics = t.table,
	accountProviderName = t.optional(t.string),
	addFriendOnActivated = t.optional(t.callback),
	enableDisplayNamePolicy = t.optional(t.boolean),
	friends = t.array(UserUtils.validateUser),
	friendThumbnailSize = t.optional(t.number),
	LayoutOrder = t.optional(t.number),
	onFriendSelected = t.optional(t.callback),
	peopleListFrozen = t.optional(t.boolean),
	screenSize = t.optional(t.union(t.Vector2, Mock.MagicMock.is)),
	shouldInviteFromAccountProvider = t.optional(t.boolean),
	wideMode = t.optional(t.boolean),
	hasFriendRequests = t.boolean,
	navigateToLuaAppPages = t.optional(t.table),
	goToFriendsLanding = t.optional(t.callback),
	goToAddFriends = t.optional(t.callback),
	isLuaProfilePageEnabled = t.optional(t.boolean),
	luaAddFriendsPageEnabled = t.optional(t.boolean),
})

function UserCarousel:init()
	self.state = {
		friends = {},
	}

	self.onFriendSelected = function(userTileInfo)
		self.props.Logger:info("Going to ViewUser")
		self.props.analytics:buttonClick("UserTile", {
			friendId = userTileInfo.user.id,
			position = userTileInfo.positionIndex,
			subpage = if self.props.isLuaProfilePageEnabled then "peekView" else nil,
			page = if self.props.isLuaProfilePageEnabled then "playerProfile" else nil,
		})
		if self.props.isLuaProfilePageEnabled then
			self.props.analytics:navigate("ViewUserProfile")
		end

		local viewUserData = llama.Dictionary.join(userTileInfo, {
			onOpen = function()
				self.props.setPeopleListFrozen(true)
			end,
			onClose = function()
				self.props.setPeopleListFrozen(false)
			end,
		})

		if self.props.isLuaProfilePageEnabled then
			local navConfig = {
				contextualMenuProps = viewUserData,
				profilePeekViewProps = {
					absolutePosition = userTileInfo.absolutePosition,
				},
				openJoinable = true,
			}
			self.props.navigateToLuaAppPages[EnumScreens.ViewUserProfile](userTileInfo.user.id, navConfig)
		else
			self.props.navigateToLuaAppPages[EnumScreens.ViewUser](viewUserData)
		end
	end

	self.goToFriendRequestsPage = function()
		local screen = self.props.enableFriendFinder and EnumScreens.FriendFinder or EnumScreens.AddFriends

		self.props.navigateToLuaAppPages[screen]()
	end

	self.goToFriendsPage = function()
		self.props.Logger:info("Going to FriendsPage")
		self.props.analytics:buttonClick("CarouselTitle")
		self.props.analytics:navigate("CarouselTitle")

		if self.props.goToFriendsLanding then
			self.props.analytics:buttonClick("friendsLanding")
			self.props.analytics:navigate("FriendsLandingPage")
		end

		if self.props.goToFriendsLanding then
			self.props.goToFriendsLanding()
		else
			self.props.navigateToLuaAppPages[EnumScreens.AddFriends]()
		end
	end

	self.activatedAddFriendsTile = function()
		self.props.Logger:info("Going to AddFriends")
		self.props.analytics:buttonClick("AddFriends")
		self.props.analytics:navigate("AddFriends")
		self.props.goToAddFriends()
	end

	self.activatedFriendRequestsButton = function()
		self.props.Logger:info("Going to FriendRequests")
		self.props.analytics:buttonClick("FriendRequests", {
			isBadgeShown = self.props.hasFriendRequests,
		})
		self.props.analytics:navigate("FriendRequests")
		self.props.goToAddFriends()
	end
end

function UserCarousel.getDerivedStateFromProps(props)
	if not props.peopleListFrozen then
		return {
			friends = props.friends,
		}
	end

	return nil
end

function UserCarousel:render()
	return withStyle(function(style)
		local labelFont = style.Font.CaptionHeader.Font
		local labelTextSize = style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize
		local textBounds = Text.GetTextBounds("SampleText", labelFont, labelTextSize, Vector2.new(10000, 10000))
		local tileHeight = self.props.friendThumbnailSize + textBounds.Y + TILE_INTERNAL_PADDING

		local function createAddFriendButton()
			return Roact.createElement(AddFriendsTile, {
				accountProviderName = self.props.getAccountProviderName,
				layoutOrder = 1,
				onActivated = self.activatedAddFriendsTile,
				shouldInviteFromAccountProvider = self.props.shouldInviteFromAccountProvider,
				thumbnailSize = self.props.friendThumbnailSize,
				totalHeight = tileHeight,
			})
		end

		local function createUserEntry(entry)
			if entry.user == nil then
				return createAddFriendButton()
			end

			return Roact.createElement(UserTile, {
				enableDisplayNamePolicy = self.props.enableDisplayNamePolicy,
				height = tileHeight,
				layoutOrder = entry.index,
				onActivated = self.onFriendSelected,
				thumbnailSize = self.props.friendThumbnailSize,
				user = entry.user,
				absolutePosition = entry.absolutePosition,
			})
		end

		local carousel = Roact.createElement(UIBloxCarouselAdaptor, {
			createUserEntry = createUserEntry,
			friends = self.state.friends,
			friendThumbnailSize = self.props.friendThumbnailSize,
			LayoutOrder = 2,
			wideMode = self.props.wideMode,
			tileHeight = tileHeight,
		})

		return Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = self.props.LayoutOrder,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, tileHeight),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 0),
			}),
			UserCarouselHeader = Roact.createElement(UserCarouselHeader, {
				layoutOrder = 1,
				friendCount = #self.state.friends,
				hasFriendRequests = self.props.hasFriendRequests,
				goToFriendRequestsPage = self.activatedFriendRequestsButton,
				goToFriendsPage = self.goToFriendsPage,
			}),
			UserCarousel = carousel,
		})
	end)
end

return UserCarousel
