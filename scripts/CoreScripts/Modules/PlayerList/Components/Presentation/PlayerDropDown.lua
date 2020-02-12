local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Otter = require(CorePackages.Packages.Otter)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local DropDownButton = require(script.Parent.DropDownButton)
local DropDownPlayerHeader = require(script.Parent.DropDownPlayerHeader)
local FriendDropDownButton = require(script.Parent.FriendDropDownButton)

local LocalPlayer = Players.LocalPlayer
local FFlagChinaLicensingApp = settings():GetFFlag("ChinaLicensingApp") --todo: remove with FFlagUsePolicyServiceForCoreScripts

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local PolicyService = require(RobloxGui.Modules.Common.PolicyService)

local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local FFlagPlayerListDesignUpdate = settings():GetFFlag("PlayerListDesignUpdate")
local FFlagPlayerListBetterDropDownPositioning = require(RobloxGui.Modules.Flags.FFlagPlayerListBetterDropDownPositioning)

local PlayerList = Components.Parent

local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)

local FollowPlayer = require(PlayerList.Thunks.FollowPlayer)
local UnfollowPlayer = require(PlayerList.Thunks.UnfollowPlayer)
local BlockPlayer = require(PlayerList.Thunks.BlockPlayer)
local UnblockPlayer = require(PlayerList.Thunks.UnblockPlayer)
local RequestFriendship = require(PlayerList.Thunks.RequestFriendship)

local PlayerDropDown = Roact.PureComponent:extend("PlayerDropDown")

if FFlagPlayerListDesignUpdate then
	PlayerDropDown.validateProps = t.strictInterface({
		positionY = t.number,
		minPositionBoundY = t.number,
		maxPositionBoundY = t.number,

		selectedPlayer = t.optional(t.instanceIsA("Player")),
		isVisible = t.boolean,
		playerRelationship = t.optional(t.strictInterface({
			isBlocked = t.boolean,
			friendStatus = t.enum(Enum.FriendStatus),
			isFollowing = t.boolean,
			isFollower = t.boolean,
		})),
		inspectMenuEnabled = t.boolean,
		isTenFootInterface = t.boolean,

		closeDropDown = t.callback,
		blockPlayer = t.callback,
		unblockPlayer = t.callback,
		unfollowPlayer = t.callback,
		followPlayer = t.callback,
		requestFriendship = t.callback,
	})
end

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

	if FFlagPlayerListBetterDropDownPositioning then
		self.dropDownPosition = 0
	end
end

-- Remove with FFlagPlayerListDesignUpdate
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
	if FFlagPlayerListDesignUpdate then
		return Roact.createElement(FriendDropDownButton, {
			layoutOrder = 1,
			playerRelationship = playerRelationship,
			selectedPlayer = selectedPlayer,
			dropDownOpen = self.props.isVisible,
			requestFriendship = self.props.requestFriendship,
		})
	else
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
end

-- Remove with FFlagPlayerListDesignUpdate
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
	if FFlagPlayerListDesignUpdate then
		local selectedPlayer = self.props.selectedPlayer
		local unfollowText = RobloxTranslator:FormatByKey("PlayerDropDown.UnFollow")
		local followText = RobloxTranslator:FormatByKey("PlayerDropDown.Follow")
		local followerIcon = playerRelationship.isFollowing and "rbxasset://textures/ui/PlayerList/NotificationOn.png"
			or "rbxasset://textures/ui/PlayerList/NotificationOff.png"
		return Roact.createElement(DropDownButton, {
			layoutOrder = 2,
			text = playerRelationship.isFollowing and unfollowText or followText,
			icon = followerIcon,
			lastButton = false,
			forceShowOptions = false,
			onActivated = function()
				if playerRelationship.isFollowing then
					self.props.unfollowPlayer(selectedPlayer)
				else
					self.props.followPlayer(selectedPlayer)
				end
			end,
		})
	else
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
end

function PlayerDropDown:createBlockButton(playerRelationship)
	if FFlagPlayerListDesignUpdate then
		local selectedPlayer = self.props.selectedPlayer
		local blockedText = RobloxTranslator:FormatByKey("PlayerDropDown.Block")
		local unblockText = RobloxTranslator:FormatByKey("PlayerDropDown.UnBlock")
		return Roact.createElement(DropDownButton, {
			layoutOrder = 4,
			text = playerRelationship.isBlocked and unblockText or blockedText,
			icon = "rbxasset://textures/ui/PlayerList/Block.png",
			lastButton = false,
			forceShowOptions = false,
			onActivated = function()
				if playerRelationship.isBlocked then
					self.props.unblockPlayer(selectedPlayer)
				else
					self.props.blockPlayer(selectedPlayer)
				end
			end,
		})
	else
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
end

function PlayerDropDown:createReportButton()
	if FFlagPlayerListDesignUpdate then
		local selectedPlayer = self.props.selectedPlayer
		return Roact.createElement(DropDownButton, {
			layoutOrder = 5,
			text = RobloxTranslator:FormatByKey("PlayerDropDown.Report"),
			icon = "rbxasset://textures/ui/PlayerList/Report.png",
			lastButton = true,
			forceShowOptions = false,
			onActivated = function()
				if isNewInGameMenuEnabled() then
					-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
					local InGameMenu = require(RobloxGui.Modules.InGameMenu)
					InGameMenu.openReportDialog(selectedPlayer)
				else
					-- This module has to be required here or it yields on initalization which breaks the unit tests.
					-- TODO: Revist this with new in game menu.
					local ReportAbuseMenu = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenu)
					ReportAbuseMenu:ReportPlayer(selectedPlayer)
					self.props.closeDropDown()
				end
			end,
		})
	else
		local selectedPlayer = self.props.selectedPlayer
		return Roact.createElement(DropDownButton, {
			layoutOrder = 5,
			text = "Report Abuse",
			onActivated = function()
				if isNewInGameMenuEnabled() then
					-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
					local InGameMenu = require(RobloxGui.Modules.InGameMenu)
					InGameMenu.openReportDialog(selectedPlayer)
				else
					-- This module has to be required here or it yields on initalization which breaks the unit tests.
					-- TODO: Revist this with new in game menu.
					local ReportAbuseMenu = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenu)
					ReportAbuseMenu:ReportPlayer(selectedPlayer)
					self.props.closeDropDown()
				end
			end,
		})
	end
end

function PlayerDropDown:createInspectButton()
	if FFlagPlayerListDesignUpdate then
		local selectedPlayer = self.props.selectedPlayer
		return Roact.createElement(DropDownButton, {
			layoutOrder = 3,
			text = RobloxTranslator:FormatByKey("PlayerDropDown.Examine"),
			icon = "rbxasset://textures/ui/PlayerList/ViewAvatar.png",
			lastButton = selectedPlayer == LocalPlayer,
			forceShowOptions = false,
			onActivated = function()
				GuiService:InspectPlayerFromUserIdWithCtx(selectedPlayer.UserId, "leaderBoard")
				self.props.closeDropDown()
			end,
		})
	else
		local selectedPlayer = self.props.selectedPlayer
		return Roact.createElement(DropDownButton, {
			layoutOrder = 6,
			text = "View",
			onActivated = function()
				GuiService:InspectPlayerFromUserIdWithCtx(selectedPlayer.UserId, "leaderBoard")
				self.props.closeDropDown()
			end,
		})
	end
end

function PlayerDropDown:render()
	return WithLayoutValues(function(layoutValues)
		local selectedPlayer = self.props.selectedPlayer

		if not selectedPlayer or self.props.isTenFootInterface then
			return nil
		end

		local dropDownButtons = {}
		local dropDownHeight = 0
		local dropDownHeaderHeight = 0

		dropDownButtons["UIListLayout"] = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, layoutValues.DropDownButtonPadding),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		if FFlagPlayerListDesignUpdate then
			dropDownButtons["PlayerHeader"] = Roact.createElement(DropDownPlayerHeader, {
				player = self.props.selectedPlayer,
			})
			dropDownHeaderHeight = layoutValues.DropDownButtonPadding + layoutValues.DropDownHeaderSizeY
			dropDownHeight = dropDownHeight + dropDownHeaderHeight
		end

		local playerRelationship = self.props.playerRelationship
		if selectedPlayer ~= LocalPlayer then
			if not playerRelationship.isBlocked then
				dropDownButtons["FriendButton"] = self:createFriendButton(playerRelationship)
				dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY

				if not FFlagPlayerListDesignUpdate then
					if playerRelationship.friendStatus == Enum.FriendStatus.FriendRequestReceived then
						dropDownButtons["DeclineFriendButton"] = self:createDeclineFriendButton()
						dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY
					end
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

		if FFlagPlayerListDesignUpdate then
			if dropDownHeight <= dropDownHeaderHeight then
				self.props.closeDropDown()
			end
		else
			if dropDownHeight == 0 then
				self.props.closeDropDown()
			end
		end

		dropDownHeight = dropDownHeight - layoutValues.DropDownButtonPadding

		local dropDownPosition
		if FFlagPlayerListBetterDropDownPositioning then
			dropDownPosition = self.dropDownPosition
		else
			dropDownPosition = self.props.positionY
		end
		if FFlagPlayerListDesignUpdate then
			dropDownPosition = dropDownPosition + (layoutValues.DropDownHeaderBackgroundSize - layoutValues.DropDownHeaderSizeY)
			if dropDownPosition + dropDownHeight > self.props.maxPositionBoundY then
				dropDownPosition = dropDownPosition - (dropDownPosition + dropDownHeight - self.props.maxPositionBoundY)
			elseif dropDownPosition < self.props.minPositionBoundY then
				dropDownPosition = dropDownPosition + (self.props.minPositionBoundY - dropDownPosition)
			end
		end

		if FFlagPlayerListDesignUpdate then
			return Roact.createElement("Frame", {
				LayoutOrder = self.props.layoutOrder,
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(0, 0, 0, dropDownPosition),
				Size = UDim2.new(0, layoutValues.PlayerDropDownSizeX + layoutValues.PlayerDropDownOffset, 0, dropDownHeight),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
			}, {
				InnerFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, -layoutValues.PlayerDropDownOffset, 1, 0),
					BackgroundTransparency = 1,
					ClipsDescendants = true,

					[Roact.Ref] = self.innerFrameRef,
				}, dropDownButtons)
			})
		else
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
		end
	end)
end

function PlayerDropDown:didMount()
	local targetPosition = self.props.isVisible and 0 or 1
	self.motor:start()
	self.motor:setGoal(Otter.spring(targetPosition, self.motorOptions))
end

if FFlagPlayerListBetterDropDownPositioning then
	function PlayerDropDown:willUpdate(nextProps, nextState)
		if nextProps.selectedPlayer ~= self.props.selectedPlayer then
			self.dropDownPosition = nextProps.positionY
		end
	end
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
		selectedPlayer = (not FFlagPlayerListBetterDropDownPositioning) and selectedPlayer or nil,
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