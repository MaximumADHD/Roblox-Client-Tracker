--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagRenameFriendsToConnectionsCoreUI = SharedFlags.FFlagRenameFriendsToConnectionsCoreUI

local DropDownButtonAnimator = require(script.Parent.DropDownButtonAnimator)

local Images = UIBlox.App.ImageSet.Images

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local GetFFlagCoreScriptsMigrateFromLegacyCSVLoc = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagCoreScriptsMigrateFromLegacyCSVLoc

local LocalPlayer = Players.LocalPlayer

local LOCALIZATION_TEXT = {
	removeConnection = "CommonUI.Features.Label.RemoveConnection",
	connectionRequest = "InGame.PlayerDropDown.Action.ConnectionRequest",
}

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
	contentVisible = t.boolean,
})

local function getFriendTextAndIcon(friendStatus)
	local addFriendIcon = Images["icons/actions/friends/friendAdd"]
	local unfriendIcon = Images["icons/actions/friends/friendRemove"]

	local shouldRenameFriends = FFlagRenameFriendsToConnectionsCoreUI and UniversalAppPolicy.getAppFeaturePolicies().getRenameFriendsToConnections()

	local locales 
	if shouldRenameFriends then
		locales = Localization.new(LocalizationService.RobloxLocaleId)
	end

	if friendStatus == Enum.FriendStatus.Friend then
		if shouldRenameFriends then
			return locales:Format(LOCALIZATION_TEXT.removeConnection), unfriendIcon
		else
			return RobloxTranslator:FormatByKey(if GetFFlagCoreScriptsMigrateFromLegacyCSVLoc() then "InGame.PlayerDropDown.Unfriend" else "PlayerDropDown.Unfriend"), unfriendIcon
		end
	elseif friendStatus == Enum.FriendStatus.Unknown or friendStatus == Enum.FriendStatus.NotFriend then
		if shouldRenameFriends then
			return locales:Format(LOCALIZATION_TEXT.connectionRequest), addFriendIcon
		else
			return RobloxTranslator:FormatByKey(if GetFFlagCoreScriptsMigrateFromLegacyCSVLoc() then "InGame.PlayerDropDown.FriendRequest" else "PlayerDropDown.FriendRequest"), addFriendIcon
		end
	elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
		return RobloxTranslator:FormatByKey(if GetFFlagCoreScriptsMigrateFromLegacyCSVLoc() then "InGame.PlayerDropDown.CancelRequest" else "PlayerDropDown.CancelRequest"), addFriendIcon
	elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
		return RobloxTranslator:FormatByKey(if GetFFlagCoreScriptsMigrateFromLegacyCSVLoc() then "InGame.PlayerDropDown.Accept" else "PlayerDropDown.Accept"), addFriendIcon
	end
	if shouldRenameFriends then
		return locales:Format(LOCALIZATION_TEXT.connectionRequest), addFriendIcon
	else
		return RobloxTranslator:FormatByKey(if GetFFlagCoreScriptsMigrateFromLegacyCSVLoc() then "InGame.PlayerDropDown.Friend Request" else "PlayerDropDown.Friend Request"), addFriendIcon
	end
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
			elseif
				playerRelationship.friendStatus == Enum.FriendStatus.Unknown
				or playerRelationship.friendStatus == Enum.FriendStatus.NotFriend
			then
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
		contentVisible = self.props.contentVisible,
	})
end

function FriendDropDownButton:didUpdate(prevProps, prevState)
	if prevProps.playerRelationship.friendStatus ~= self.props.playerRelationship.friendStatus then
		self:setState({
			unfriendConfirm = false,
		})
	end
	if prevProps.selectedPlayer ~= self.props.selectedPlayer or prevProps.dropDownOpen ~= self.props.dropDownOpen then
		self:setState({
			unfriendConfirm = false,
		})
	end
end

return FriendDropDownButton