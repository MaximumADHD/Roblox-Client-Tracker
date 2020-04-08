local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Otter = require(CorePackages.Packages.Otter)
local UIBlox = require(CorePackages.UIBlox)

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

local Images = UIBlox.App.ImageSet.Images

local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local FFlagPlayerListBetterDropDownPositioning = require(RobloxGui.Modules.Flags.FFlagPlayerListBetterDropDownPositioning)
local FFlagPlayerListUseUIBloxIcons = require(CoreGui.RobloxGui.Modules.Flags.FFlagPlayerListUseUIBloxIcons)

local PlayerList = Components.Parent

local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)

local FollowPlayer = require(PlayerList.Thunks.FollowPlayer)
local UnfollowPlayer = require(PlayerList.Thunks.UnfollowPlayer)
local BlockPlayer = require(PlayerList.Thunks.BlockPlayer)
local UnblockPlayer = require(PlayerList.Thunks.UnblockPlayer)
local RequestFriendship = require(PlayerList.Thunks.RequestFriendship)

local PlayerDropDown = Roact.PureComponent:extend("PlayerDropDown")

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

function PlayerDropDown:createFriendButton(playerRelationship)
	local selectedPlayer = self.props.selectedPlayer
	return Roact.createElement(FriendDropDownButton, {
		layoutOrder = 1,
		playerRelationship = playerRelationship,
		selectedPlayer = selectedPlayer,
		dropDownOpen = self.props.isVisible,
		requestFriendship = self.props.requestFriendship,
	})
end

function PlayerDropDown:createFollowButton(playerRelationship)
	local selectedPlayer = self.props.selectedPlayer
	local unfollowText = RobloxTranslator:FormatByKey("PlayerDropDown.UnFollow")
	local followText = RobloxTranslator:FormatByKey("PlayerDropDown.Follow")
	local followerIcon
	if FFlagPlayerListUseUIBloxIcons then
		followerIcon = playerRelationship.isFollowing and Images["icons/common/notificationOn"]
			or Images["icons/common/notificationOff"]
	else
		followerIcon = playerRelationship.isFollowing and "rbxasset://textures/ui/PlayerList/NotificationOn.png"
			or "rbxasset://textures/ui/PlayerList/NotificationOff.png"
	end
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
end

function PlayerDropDown:createBlockButton(playerRelationship)
	local selectedPlayer = self.props.selectedPlayer
	local blockedText = RobloxTranslator:FormatByKey("PlayerDropDown.Block")
	local unblockText = RobloxTranslator:FormatByKey("PlayerDropDown.UnBlock")
	local blockIcon
	if FFlagPlayerListUseUIBloxIcons then
		blockIcon = Images["icons/actions/block"]
	else
		blockIcon = "rbxasset://textures/ui/PlayerList/Block.png"
	end
	return Roact.createElement(DropDownButton, {
		layoutOrder = 4,
		text = playerRelationship.isBlocked and unblockText or blockedText,
		icon = blockIcon,
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
end

function PlayerDropDown:createReportButton()
	local selectedPlayer = self.props.selectedPlayer
	local reportIcon
	if FFlagPlayerListUseUIBloxIcons then
		reportIcon = Images["icons/actions/feedback"]
	else
		reportIcon = "rbxasset://textures/ui/PlayerList/Report.png"
	end
	return Roact.createElement(DropDownButton, {
		layoutOrder = 5,
		text = RobloxTranslator:FormatByKey("PlayerDropDown.Report"),
		icon = reportIcon,
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
end

function PlayerDropDown:createInspectButton()
	local selectedPlayer = self.props.selectedPlayer
	local inspectIcon
	if FFlagPlayerListUseUIBloxIcons then
		inspectIcon = Images["icons/actions/zoomIn"]
	else
		inspectIcon = "rbxasset://textures/ui/PlayerList/ViewAvatar.png"
	end
	return Roact.createElement(DropDownButton, {
		layoutOrder = 3,
		text = RobloxTranslator:FormatByKey("PlayerDropDown.Examine"),
		icon = inspectIcon,
		lastButton = selectedPlayer == LocalPlayer,
		forceShowOptions = false,
		onActivated = function()
			GuiService:InspectPlayerFromUserIdWithCtx(selectedPlayer.UserId, "leaderBoard")
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

		dropDownButtons["UIListLayout"] = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, layoutValues.DropDownButtonPadding),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		dropDownButtons["PlayerHeader"] = Roact.createElement(DropDownPlayerHeader, {
			player = self.props.selectedPlayer,
		})
		local dropDownHeaderHeight = layoutValues.DropDownButtonPadding + layoutValues.DropDownHeaderSizeY
		local dropDownHeight = dropDownHeaderHeight

		local playerRelationship = self.props.playerRelationship
		if selectedPlayer ~= LocalPlayer then
			if not playerRelationship.isBlocked then
				dropDownButtons["FriendButton"] = self:createFriendButton(playerRelationship)
				dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY

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

		if dropDownHeight <= dropDownHeaderHeight then
			self.props.closeDropDown()
		end

		dropDownHeight = dropDownHeight - layoutValues.DropDownButtonPadding

		local dropDownPosition
		if FFlagPlayerListBetterDropDownPositioning then
			dropDownPosition = self.dropDownPosition
		else
			dropDownPosition = self.props.positionY
		end
		dropDownPosition = dropDownPosition + (layoutValues.DropDownHeaderBackgroundSize - layoutValues.DropDownHeaderSizeY)
		if dropDownPosition + dropDownHeight > self.props.maxPositionBoundY then
			dropDownPosition = dropDownPosition - (dropDownPosition + dropDownHeight - self.props.maxPositionBoundY)
		elseif dropDownPosition < self.props.minPositionBoundY then
			dropDownPosition = dropDownPosition + (self.props.minPositionBoundY - dropDownPosition)
		end

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