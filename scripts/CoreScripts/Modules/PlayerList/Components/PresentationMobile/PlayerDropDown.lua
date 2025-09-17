--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")

local Cryo = require(CorePackages.Packages.Cryo)
local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Otter = require(CorePackages.Packages.Otter)
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local UIBlox = require(CorePackages.Packages.UIBlox)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)

local useLayoutValues = PlayerListPackage.Common.useLayoutValues

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local DropDownButton = require(script.Parent.DropDownButton)
local DropDownPlayerHeader = require(script.Parent.DropDownPlayerHeader)
local FriendDropDownButton = require(script.Parent.FriendDropDownButton)

local LocalPlayer = Players.LocalPlayer

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)


local onBlockButtonActivated = require(RobloxGui.Modules.Settings.onBlockButtonActivated)

local Images = UIBlox.App.ImageSet.Images

local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local PlayerList = Components.Parent

local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)

local GetFFlagFixDropDownVisibility = require(PlayerList.Flags.GetFFlagFixDropDownVisibility)
local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)
local FFlagNavigateToBlockingModal = require(RobloxGui.Modules.Common.Flags.FFlagNavigateToBlockingModal)
local FFlagAddNewPlayerListMobileFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListMobileFocusNav
local FFlagAddMobilePlayerListScaling = PlayerListPackage.Flags.FFlagAddMobilePlayerListScaling

local BlockPlayer = require(PlayerList.Thunks.BlockPlayer)
local UnblockPlayer = require(PlayerList.Thunks.UnblockPlayer)
local RequestFriendship = require(PlayerList.Thunks.RequestFriendship)
local SetPlayerIsBlocked = require(PlayerList.Actions.SetPlayerIsBlocked)

local PlayerDropDown = Roact.PureComponent:extend("PlayerDropDown")

PlayerDropDown.validateProps = t.strictInterface({
	contentsVisible = t.boolean,

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
	isUsingGamepad = t.optional(t.boolean),
	subjectToChinaPolicies = t.boolean,
	preferredTransparency = t.number,

	closeDropDown = t.callback,
	blockPlayer = if FFlagNavigateToBlockingModal then nil else t.callback,
	blockPlayerSuccess = if FFlagNavigateToBlockingModal then t.callback else nil,
	unblockPlayer = t.callback,
	requestFriendship = t.callback,
	setPlayerListVisibility = t.callback,

	focusGuiObject = t.optional(t.callback),
	focusedGuiObject = t.optional(t.instanceIsA("GuiObject")),

	layoutValues = t.optional(t.table),
})

local MOTOR_OPTIONS = {
	dampingRatio = 1,
	frequency = 4,
}

function PlayerDropDown:init()
	self.state = {
		allVisible = false,
		contentVisible = false,
	}

	self.buttonsContainerRef = React.createRef()

	self.containerScale, self.updateContainerScale = Roact.createBinding(1)
	self.containerScaleMotor = Otter.createSingleMotor(0)
	self.containerScaleMotor:onStep(function(scale)
		self.updateContainerScale(scale)
	end)

	self.transparency, self.updateTransparency = Roact.createBinding(1)
	self.transparencyMotor = Otter.createSingleMotor(0)
	self.transparencyMotor:onStep(function(transparency)
		self.updateTransparency(transparency)
		if transparency < 0.5 and self.props.isVisible and self.props.contentsVisible then
			self:setState({
				contentVisible = true,
			})
		else
			self:setState({
				contentVisible = false,
			})
		end
		self:setState({
			allVisible = transparency < 1,
		})
	end)

	self.buttonTransparency, self.updateButtonTransparency = Roact.createBinding(1)
	self.buttonTransparencyMotor = Otter.createSingleMotor(0)
	self.buttonTransparencyMotor:onStep(function(transparency)
		self.updateButtonTransparency(transparency)
	end)
end

function PlayerDropDown:createFriendButton(playerRelationship)
	local selectedPlayer = self.props.selectedPlayer
	return Roact.createElement(FriendDropDownButton, {
		layoutOrder = 1,
		playerRelationship = playerRelationship,
		selectedPlayer = selectedPlayer,
		dropDownOpen = self.props.isVisible,
		requestFriendship = self.props.requestFriendship,
		contentVisible = self.state.contentVisible,
	})
end

function PlayerDropDown:createBlockButton(playerRelationship)
	local selectedPlayer = self.props.selectedPlayer
	local blockedText = RobloxTranslator:FormatByKey("InGame.PlayerDropDown.Block")
	local unblockText = RobloxTranslator:FormatByKey("InGame.PlayerDropDown.UnBlock")
	local blockIcon = Images["icons/actions/block"]

	return Roact.createElement(DropDownButton, {
		contentVisible = self.state.contentVisible,
		buttonTransparency = self.buttonTransparency,
		layoutOrder = 4,
		text = playerRelationship.isBlocked and unblockText or blockedText,
		icon = blockIcon,
		lastButton = false,
		forceShowOptions = false,
		onActivated = function()
			if playerRelationship.isBlocked then
				self.props.unblockPlayer(selectedPlayer)
			else
				if FFlagNavigateToBlockingModal then
					onBlockButtonActivated(selectedPlayer, nil, self.__componentName, {
						onBlockingSuccess = function()
							self.props.blockPlayerSuccess(selectedPlayer)
						end
					})
				else
					self.props.blockPlayer(selectedPlayer)
				end
			end
		end,
	})
end

function PlayerDropDown:createReportButton()
	local selectedPlayer = self.props.selectedPlayer
	local reportIcon = Images["icons/actions/feedback"]

	return Roact.createElement(DropDownButton, {
		contentVisible = self.state.contentVisible,
		buttonTransparency = self.buttonTransparency,
		layoutOrder = 5,
		text = RobloxTranslator:FormatByKey("InGame.PlayerDropDown.Report"),
		icon = reportIcon,
		lastButton = true,
		forceShowOptions = false,
		onActivated = function()
			if isNewInGameMenuEnabled() then
				-- todo: move InGameMenu to a script global when removing isNewInGameMenuEnabled
				local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
				InGameMenu.openReportDialog(selectedPlayer, self.__componentName)
			else
				local ReportAbuseMenu = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenuNewContainerPage)
				ReportAbuseMenu:ReportPlayer(selectedPlayer, self.__componentName)
				self.props.closeDropDown()
			end
		end,
	})
end

function PlayerDropDown:createInspectButton()
	local selectedPlayer = self.props.selectedPlayer
	local inspectIcon = Images["icons/actions/zoomIn"]

	return Roact.createElement(DropDownButton, {
		contentVisible = self.state.contentVisible,
		buttonTransparency = self.buttonTransparency,
		layoutOrder = 3,
		text = RobloxTranslator:FormatByKey("InGame.PlayerDropDown.Examine"),
		icon = inspectIcon,
		lastButton = selectedPlayer == LocalPlayer,
		forceShowOptions = false,
		onActivated = function()
			GuiService:InspectPlayerFromUserIdWithCtx(selectedPlayer.UserId, "leaderBoard")
			self.props.closeDropDown()
			self.props.setPlayerListVisibility(false)
		end,
	})
end

function PlayerDropDown:render()
	return WithLayoutValues(function(layoutValues)
		layoutValues = if FFlagAddMobilePlayerListScaling then self.props.layoutValues else layoutValues

		local selectedPlayer = self.props.selectedPlayer

		if not selectedPlayer or self.props.isTenFootInterface then
			return nil
		end

		local dropDownButtons = {}

		dropDownButtons["UIScale"] = Roact.createElement("UIScale", {
			Scale = self.containerScale,
		})

		dropDownButtons["UIListLayout"] = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, layoutValues.DropDownButtonPadding),
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		dropDownButtons["PlayerHeader"] = Roact.createElement(DropDownPlayerHeader, {
			player = self.props.selectedPlayer,
			contentVisible = self.state.contentVisible,
			transparency = self.transparency,
		})

		local maxDropDownHeight = 4 * layoutValues.DropDownButtonSizeY + layoutValues.DropDownHeaderSizeY
		local dropDownHeaderHeight = layoutValues.DropDownButtonPadding + layoutValues.DropDownHeaderSizeY
		local dropDownHeight = dropDownHeaderHeight

		local playerRelationship = self.props.playerRelationship
		if selectedPlayer ~= LocalPlayer then
			if not playerRelationship.isBlocked then
				dropDownButtons["FriendButton"] = self:createFriendButton(playerRelationship)
				dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY
			end

			dropDownButtons["BlockButton"] = self:createBlockButton(playerRelationship)
			dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY

			dropDownButtons["ReportButton"] = self:createReportButton()
			dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY
		end

		if self.props.inspectMenuEnabled then
			dropDownButtons["InspectButton"] = self:createInspectButton()
			dropDownHeight = dropDownHeight + layoutValues.DropDownButtonPadding + layoutValues.DropDownButtonSizeY
		end

		dropDownHeight = dropDownHeight - layoutValues.DropDownButtonPadding

		return Roact.createElement("ImageButton", {
			LayoutOrder = self.props.layoutOrder,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Selectable = false,
			Modal = false,
			Visible = self.state.allVisible,
			AutoButtonColor = false,
			Active = self.props.isVisible,
			Image = "",
			[Roact.Event.Activated] = self.props.closeDropDown,
			[Roact.Ref] = self.imageButtonRef,
		}, {
			Container = Roact.createElement("Frame", {
				LayoutOrder = self.props.layoutOrder,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0.5, -maxDropDownHeight / 2),
				Size = UDim2.new(0, layoutValues.PlayerDropDownSizeXMobile, 0, dropDownHeight),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				[Roact.Ref] = if FFlagAddNewPlayerListMobileFocusNav then self.buttonsContainerRef else nil,
			}, dropDownButtons),
		})
	end)
end

function PlayerDropDown:getScale()
	if self.props.isVisible and self.props.contentsVisible then
		return 1
	end
	return 1.25
end

function PlayerDropDown:getTransparency()
	if self.props.isVisible and self.props.contentsVisible then
		return 0
	end
	return 1
end

function PlayerDropDown:getButtonTransparency()
	if self.props.isVisible and self.props.contentsVisible then
		return self.props.preferredTransparency * 0.3
	end
	return 1
end

function PlayerDropDown:didUpdate(previousProps, previousState)
	self.containerScaleMotor:setGoal(Otter.spring(self:getScale(), MOTOR_OPTIONS))
	self.transparencyMotor:setGoal(Otter.spring(self:getTransparency(), MOTOR_OPTIONS))
	self.buttonTransparencyMotor:setGoal(Otter.spring(self:getButtonTransparency(), MOTOR_OPTIONS))

	if FFlagAddNewPlayerListMobileFocusNav then
		if self.props.isUsingGamepad and (previousState.contentVisible ~= self.state.contentVisible or not self.props.focusedGuiObject) then
			if self.state.contentVisible and self.buttonsContainerRef.current then
				self.props.focusGuiObject(self.buttonsContainerRef.current)
				self.buttonsContainerRef.current.SelectionGroup = true
				self.buttonsContainerRef.current.SelectionBehaviorUp = Enum.SelectionBehavior.Stop
				self.buttonsContainerRef.current.SelectionBehaviorDown = Enum.SelectionBehavior.Stop
				self.buttonsContainerRef.current.SelectionBehaviorLeft = Enum.SelectionBehavior.Stop
				self.buttonsContainerRef.current.SelectionBehaviorRight = Enum.SelectionBehavior.Stop
			end
		end
	end
end

function PlayerDropDown:didMount() end

function PlayerDropDown:willUnmount()
	self.transparencyMotor:destroy()
	self.containerScaleMotor:destroy()
	self.buttonTransparencyMotor:destroy()

	self.transparencyMotor = nil
	self.containerScaleMotor = nil
	self.buttonTransparencyMotor = nil
end

local function mapStateToProps(state)
	local selectedPlayer = state.playerDropDown.selectedPlayer

	local isVisible = if GetFFlagFixDropDownVisibility()
		then state.playerDropDown.isVisible and state.displayOptions.isVisible
		else state.playerDropDown.isVisible

	return {
		selectedPlayer = selectedPlayer,
		isVisible = isVisible,
		playerRelationship = selectedPlayer and state.playerRelationship[selectedPlayer.UserId],
		inspectMenuEnabled = state.displayOptions.inspectMenuEnabled,
		isTenFootInterface = state.displayOptions.isTenFootInterface,
		isUsingGamepad = if FFlagAddNewPlayerListMobileFocusNav then state.displayOptions.isUsingGamepad else nil,
		subjectToChinaPolicies = state.displayOptions.subjectToChinaPolicies,
		preferredTransparency = state.settings.preferredTransparency,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeDropDown = function()
			return dispatch(ClosePlayerDropDown())
		end,

		setPlayerListVisibility = function(visible)
			return dispatch(SetPlayerListVisibility(visible))
		end,

		blockPlayer = if FFlagNavigateToBlockingModal then nil else function(player)
			return dispatch(BlockPlayer(player))
		end,

		blockPlayerSuccess = if FFlagNavigateToBlockingModal then function(player)
			dispatch(SetPlayerIsBlocked(player, true))
		end else nil,

		unblockPlayer = function(player)
			return dispatch(UnblockPlayer(player))
		end,

		requestFriendship = function(player, isAccept)
			return dispatch(RequestFriendship(player))
		end,
	}
end

local function PlayerDropDownWrapper(props)
	local layoutValues = if FFlagAddMobilePlayerListScaling then useLayoutValues() else nil

	local focusGuiObject = ReactFocusNavigation.useFocusGuiObject()
	local focusedGuiObject = ReactFocusNavigation.useFocusedGuiObject()
	
	return Roact.createElement(PlayerDropDown, Cryo.Dictionary.join(props, {
		focusGuiObject = focusGuiObject,
		focusedGuiObject = focusedGuiObject,
		layoutValues = layoutValues,
	}))
end

if FFlagAddNewPlayerListMobileFocusNav or FFlagAddMobilePlayerListScaling then
	if FFlagPlayerListReduceRerenders then
		return React.memo(RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerDropDownWrapper))
	end

	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerDropDownWrapper)
else
	if FFlagPlayerListReduceRerenders then
		return React.memo(RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerDropDown))
	end

	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerDropDown)
end
