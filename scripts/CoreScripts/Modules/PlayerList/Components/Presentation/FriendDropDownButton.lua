local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local DropDownButtonAnimator = require(script.Parent.DropDownButtonAnimator)

local Images = UIBlox.App.ImageSet.Images

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local LocalPlayer = Players.LocalPlayer

local FriendDropDownButton = Roact.PureComponent:extend("FriendDropDownButton")

FriendDropDownButton.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	playerRelationship = t.strictInterface({
		isBlocked = t.boolean,
		friendStatus = t.enum(Enum.FriendStatus),
		isFollowing = t.boolean,
		isFollower = t.boolean,
	}),
	selectedPlayer = t.optional(t.instanceIsA("Player")),
	dropDownOpen = t.boolean,
	requestFriendship = t.callback,
})

local function getFriendTextAndIcon(friendStatus)
	local addFriendIcon = Images["icons/actions/friends/friendAdd"]
	local unfriendIcon = Images["icons/actions/friends/friendRemove"]

	if friendStatus == Enum.FriendStatus.Friend then
		return RobloxTranslator:FormatByKey("PlayerDropDown.Unfriend"), unfriendIcon
	elseif friendStatus == Enum.FriendStatus.Unknown or friendStatus == Enum.FriendStatus.NotFriend then
		return RobloxTranslator:FormatByKey("PlayerDropDown.FriendRequest"), addFriendIcon
	elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
		return RobloxTranslator:FormatByKey("PlayerDropDown.CancelRequest"), addFriendIcon
	elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
		return RobloxTranslator:FormatByKey("PlayerDropDown.Accept"), addFriendIcon
	end
	return RobloxTranslator:FormatByKey("PlayerDropDown.Friend Request"), addFriendIcon
end

function FriendDropDownButton:init()
	self.state = {
		unfriendConfirm = false,
	}
end

function FriendDropDownButton:render()
	local playerRelationship = self.props.playerRelationship
	local selectedPlayer = self.props.selectedPlayer
	local onActivated

	if playerRelationship.friendStatus == Enum.FriendStatus.Friend and not self.state.unfriendConfirm then
		onActivated = function()
			self:setState({
				unfriendConfirm = true,
			})
		end
	else
		onActivated = function()
			if playerRelationship.friendStatus == Enum.FriendStatus.Friend then
				LocalPlayer:RevokeFriendship(selectedPlayer)
			elseif playerRelationship.friendStatus == Enum.FriendStatus.Unknown
				or playerRelationship.friendStatus == Enum.FriendStatus.NotFriend then
				self.props.requestFriendship(selectedPlayer, false)
			elseif playerRelationship.friendStatus == Enum.FriendStatus.FriendRequestSent then
				RbxAnalyticsService:ReportCounter("PlayerDropDown-RevokeFriendship")
				RbxAnalyticsService:TrackEvent("Game", "RevokeFriendship", "PlayerDropDown")
				LocalPlayer:RevokeFriendship(selectedPlayer)
			elseif playerRelationship.friendStatus == Enum.FriendStatus.FriendRequestReceived then
				RbxAnalyticsService:ReportCounter("PlayerDropDown-RequestFriendship")
				RbxAnalyticsService:TrackEvent("Game", "RequestFriendship", "PlayerDropDown")
				self.props.requestFriendship(selectedPlayer, true)
			end
		end
	end

	local onDecline
	if playerRelationship.friendStatus == Enum.FriendStatus.FriendRequestReceived then
		onDecline = function()
			LocalPlayer:RevokeFriendship(selectedPlayer)
		end
	end
	local onDismiss
	if self.state.unfriendConfirm then
		onDismiss = function()
			self:setState({
				unfriendConfirm = false,
			})
		end
	end

	local text, icon = getFriendTextAndIcon(playerRelationship.friendStatus)
	return Roact.createElement(DropDownButtonAnimator, {
		layoutOrder = self.props.layoutOrder,
		text = text,
		icon = icon,
		lastButton = false,
		onActivated = onActivated,
		forceShowOptions = self.state.unfriendConfirm,
		selectedPlayer = selectedPlayer,
		onDecline = onDecline,
		onDismiss = onDismiss,
	})
end

function FriendDropDownButton:didUpdate(prevProps, prevState)
	if prevProps.playerRelationship.friendStatus ~= self.props.playerRelationship.friendStatus then
		self:setState({
			unfriendConfirm = false,
		})
	end
	if prevProps.selectedPlayer ~= self.props.selectedPlayer or prevProps.dropDownOpen ~= self.props.dropDownOpen  then
		self:setState({
			unfriendConfirm = false,
		})
	end
end

return FriendDropDownButton