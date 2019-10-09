local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Otter = require(CorePackages.Packages.Otter)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local DropDownButton = require(script.Parent.DropDownButton)

local LocalPlayer = Players.LocalPlayer
local FFlagChinaLicensingApp = settings():GetFFlag("ChinaLicensingApp") --todo: remove with FFlagUsePolicyServiceForCoreScripts

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local InspectMenuAnalytics = require(RobloxGui.Modules.InspectAndBuy.Services.Analytics).new()

local PolicyService = require(RobloxGui.Modules.Common.PolicyService)

local FFlagFixInspectMenuAnalytics = settings():GetFFlag("FixInspectMenuAnalytics")

local PlayerList = Components.Parent

local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)

local FollowPlayer = require(PlayerList.Thunks.FollowPlayer)
local UnfollowPlayer = require(PlayerList.Thunks.UnfollowPlayer)
local BlockPlayer = require(PlayerList.Thunks.BlockPlayer)
local UnblockPlayer = require(PlayerList.Thunks.UnblockPlayer)
local RequestFriendship = require(PlayerList.Thunks.RequestFriendship)

local PlayerDropDown = Roact.PureComponent:extend("PlayerDropDown")

function PlayerDropDown:init()
	self.innerFrameRef = Roact.createRef()

	self.motorOptions = {
		dampingRatio = 1,
		frequency = 4,
	}

	--TODO: Change this to use bindings when roact 1.0 drops
	self.motor = Otter.createSingleMotor(1)
	self.motor:onStep(function(value)
		local innerFrame = self.innerFrameRef.current

		if innerFrame then
			if value == 1 then
				innerFrame.Visible = false
			else
				innerFrame.Visible = true
			end
			innerFrame.Position = UDim2.new(value, 0, 0, 0)
		end
	end)
end

local function getFriendText(friendStatus)
	if friendStatus == Enum.FriendStatus.Friend then
		return "Unfriend Player"
	elseif friendStatus == Enum.FriendStatus.Unknown or friendStatus == Enum.FriendStatus.NotFriend then
		return "Send Friend Request"
	elseif friendStatus == Enum.FriendStatus.FriendRequestSent then
		return "Revoke Friend Request"
	elseif friendStatus == Enum.FriendStatus.FriendRequestReceived then
		return "Accept Friend Request"
	end
	return "Send Friend Request"
end

function PlayerDropDown:createFriendButton(playerRelationship)
	local selectedPlayer = self.props.selectedPlayer
	return Roact.createElement(DropDownButton, {
		layoutOrder = 1,
		text = getFriendText(playerRelationship.friendStatus),
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
			self.props.closeDropDown()
		end,
	})
end

function PlayerDropDown:createDeclineFriendButton()
	local selectedPlayer = self.props.selectedPlayer
	return Roact.createElement(DropDownButton, {
		layoutOrder = 2,
		text = "Decline Friend Request",
		onActivated = function()
			LocalPlayer:RevokeFriendship(selectedPlayer)
			self.props.closeDropDown()
		end,
	})
end

function PlayerDropDown:createFollowButton(playerRelationship)
	local selectedPlayer = self.props.selectedPlayer
	local followerText = playerRelationship.isFollowing and "Unfollow Player" or "Follow Player"
	return Roact.createElement(DropDownButton, {
		layoutOrder = 3,
		text = followerText,
		onActivated = function()
			if playerRelationship.isFollowing then
				self.props.unfollowPlayer(selectedPlayer)
			else
				self.props.followPlayer(selectedPlayer)
			end
			self.props.closeDropDown()
		end,
	})
end

function PlayerDropDown:createBlockButton(playerRelationship)
	local selectedPlayer = self.props.selectedPlayer
	local blockedText = playerRelationship.isBlocked and "Unblock Player" or "Block Player"
	return Roact.createElement(DropDownButton, {
		layoutOrder = 4,
		text = blockedText,
		onActivated = function()
			if playerRelationship.isBlocked then
				self.props.unblockPlayer(selectedPlayer)
			else
				self.props.blockPlayer(selectedPlayer)
			end
			self.props.closeDropDown()
		end,
	})
end

function PlayerDropDown:createReportButton()
	local selectedPlayer = self.props.selectedPlayer
	return Roact.createElement(DropDownButton, {
		layoutOrder = 5,
		text = "Report Abuse",
		onActivated = function()
			-- This module has to be required here or it yields on initalization which breaks the unit tests.
			-- TODO: Revist this with new in game menu.
			local ReportAbuseMenu = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenu)
			ReportAbuseMenu:ReportPlayer(selectedPlayer)
			self.props.closeDropDown()
		end,
	})
end

function PlayerDropDown:createInspectButton()
	local selectedPlayer = self.props.selectedPlayer
	return Roact.createElement(DropDownButton, {
		layoutOrder = 6,
		text = "View",
		onActivated = function()
			if FFlagFixInspectMenuAnalytics then
				GuiService:InspectPlayerFromUserIdWithCtx(selectedPlayer.UserId, "leaderBoard")
			else
				InspectMenuAnalytics.reportOpenInspectMenu("leaderBoard")
				GuiService:InspectPlayerFromUserId(selectedPlayer.UserId)
			end
			self.props.closeDropDown()
		end,
	})
end

function PlayerDropDown:render()
	return WithLayoutValues(function(layoutValues)
		local selectedPlayer = self.props.selectedPlayer

		if not selectedPlayer or self.props.isTenFootInterface then
			return nil
		end

		local dropDownButtons = {}
		local dropDownHeight = 0

		dropDownButtons["UIListLayout"] = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, layoutValues.DropDownButtonPadding),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		local playerRelationship = self.props.playerRelationship
		if selectedPlayer ~= LocalPlayer then
			if not playerRelationship.isBlocked then
				dropDownButtons["FriendButton"] = self:createFriendButton(playerRelationship)
				dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY

				if playerRelationship.friendStatus == Enum.FriendStatus.FriendRequestReceived then
					dropDownButtons["DeclineFriendButton"] = self:createDeclineFriendButton()
					dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY
				end

				dropDownButtons["FollowerButton"] = self:createFollowButton(playerRelationship)
				dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY
			end

			local showPlayerBlocking = not FFlagChinaLicensingApp
			if PolicyService:IsEnabled() then
				showPlayerBlocking = not PolicyService:IsSubjectToChinaPolicies()
			end

			if showPlayerBlocking then
				dropDownButtons["BlockButton"] = self:createBlockButton(playerRelationship)
				dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY

				dropDownButtons["ReportButton"] = self:createReportButton()
				dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY
			end
		end

		if self.props.inspectMenuEnabled then
			dropDownButtons["InspectButton"] = self:createInspectButton()
			dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY
		end

		if dropDownHeight == 0 then
			self.props.closeDropDown()
		end

		dropDownHeight = dropDownHeight - layoutValues.DropDownButtonPadding

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(0, 0, 0, self.props.positionY),
			Size = UDim2.new(0, layoutValues.PlayerDropDownSizeX, 0, dropDownHeight),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		}, {
			InnerFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, -4, 1, 0),
				BackgroundTransparency = 1,

				[Roact.Ref] = self.innerFrameRef,
			}, dropDownButtons)
		})
	end)
end

function PlayerDropDown:didMount()
	local targetPosition = self.props.isVisible and 0 or 1
	self.motor:start()
	self.motor:setGoal(Otter.spring(targetPosition, self.motorOptions))
end

function PlayerDropDown:didUpdate(previousProps, previousState)
	if previousProps.selectedPlayer ~= self.props.selectedPlayer then
		self.motor:setGoal(Otter.instant(1))
		self.motor:step(0)
	end

	local targetPosition = self.props.isVisible and 0 or 1
	self.motor:setGoal(Otter.spring(targetPosition, self.motorOptions))
end

function PlayerDropDown:willUnmount()
	self.motor:destroy()
end

local function mapStateToProps(state)
	local selectedPlayer = state.playerDropDown.selectedPlayer
	return {
		selectedPlayer = selectedPlayer,
		isVisible = state.playerDropDown.isVisible,
		playerRelationship = selectedPlayer and state.playerRelationship[selectedPlayer.UserId],
		inspectMenuEnabled = state.displayOptions.inspectMenuEnabled,
		isTenFootInterface = state.displayOptions.isTenFootInterface,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeDropDown = function()
			return dispatch(ClosePlayerDropDown())
		end,

		blockPlayer = function(player)
			return dispatch(BlockPlayer(player))
		end,

		unblockPlayer = function(player)
			return dispatch(UnblockPlayer(player))
		end,

		unfollowPlayer = function(player)
			return dispatch(UnfollowPlayer(player))
		end,

		followPlayer = function(player)
			return dispatch(FollowPlayer(player))
		end,

		requestFriendship = function(player, isAccept)
			return dispatch(RequestFriendship(player))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(PlayerDropDown)