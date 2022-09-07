local CorePackages = game:GetService("CorePackages")
local RoactRodux = require(CorePackages.RoactRodux)
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Core.Style.withStyle
local t = InGameMenuDependencies.t

local BaseMenu = UIBlox.App.Menu.BaseMenu

local InGameMenu = script.Parent.Parent

local FocusHandler = require(script.Parent.Connection.FocusHandler)
local RootedConnection = require(script.Parent.Connection.RootedConnection)
local PlayerContextHeader = require(InGameMenu.Components.PlayerContextHeader)
local SetFriendBlockConfirmation = require(InGameMenu.Actions.SetFriendBlockConfirmation)
local Constants = require(InGameMenu.Resources.Constants)

local Flags = InGameMenu.Flags
local GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport = require(
	Flags.GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport
)

local FriendBlockConfirmation = require(script.Parent.FriendBlockConfirmation)

local PLAYER_CONTEXTUAL_MENU_CLOSE_ACTION = "player_contextual_menu_close_action"
local SELECTION_PARENT_NAME = "player_contextual_menu_selection_parent"

local PlayerContextualMenu = Roact.PureComponent:extend("PlayerContextualMenu")

PlayerContextualMenu.validateProps = t.strictInterface({
	moreActions = t.table,
	actionWidth = t.number,
	xOffset = t.number,
	yOffset = t.number,
	onClose = t.callback,
	closeFriendBlockConfirmation = t.callback,
	canCaptureFocus = t.boolean,
	player = t.table,
	maxHeight = t.optional(t.number),
	anchorFromBottom = t.optional(t.boolean),
	isFriend = t.optional(t.boolean),
	isFriendBlockOpen = t.optional(t.boolean),
})

function PlayerContextualMenu:init()
	self.closeContextualMenu = function()
		if self.props.isFriendBlockOpen then
			self.props.closeFriendBlockConfirmation()
		end
		self.props.onClose()
	end

	if GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() then
		self.firstOptionRef = Roact.createRef()
		self.containerRef = Roact.createRef()
	else
		self.firstOptionRef = nil
		self.containerRef = nil
		self.state = {
			isRooted = false,
			firstOptionRef = nil,
			containerRef = nil,
		}

		self.setFirstOptionRef = function(ref)
			self:setState({
				firstOptionRef = ref,
			})
		end

		self.setContainerRef = function(ref)
			self:setState({
				containerRef = ref,
			})
		end

		self.onAncestryChanged = function(instance)
			if instance:IsDescendantOf(game) then
				self:setState({
					isRooted = true,
				})
			end
		end
	end
end

function PlayerContextualMenu:renderContextualMenuFocusHandler(isRooted, children)
	local isFocused = nil
	if GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() then
		isFocused = self.props.canCaptureFocus and isRooted
	else
		isFocused = self.props.canCaptureFocus
			and self.state.isRooted
			and self.state.firstOptionRef
			and self.state.containerRef
	end

	return Roact.createElement(FocusHandler, {
		isFocused = isFocused,

		didFocus = function(previousSelection)
			ContextActionService:BindCoreAction(PLAYER_CONTEXTUAL_MENU_CLOSE_ACTION, function(actionName, inputState)
				if inputState == Enum.UserInputState.End and self.props.onClose then
					self.props.onClose()
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end, false, Enum.KeyCode.ButtonB)

			GuiService:RemoveSelectionGroup(SELECTION_PARENT_NAME)
			if GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() then
				GuiService:AddSelectionParent(SELECTION_PARENT_NAME, self.containerRef:getValue())

				GuiService.SelectedCoreObject = previousSelection or self.firstOptionRef:getValue()
			else
				GuiService:AddSelectionParent(SELECTION_PARENT_NAME, self.state.containerRef)
				GuiService.SelectedCoreObject = previousSelection or self.state.firstOptionRef
			end
		end,

		didBlur = function()
			ContextActionService:UnbindCoreAction(PLAYER_CONTEXTUAL_MENU_CLOSE_ACTION)
		end,
	}, GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() and children or nil)
end

function PlayerContextualMenu:render()
	return withStyle(function(style)
		return self:renderWithStyle(style)
	end)
end

function PlayerContextualMenu:renderWithStyle(style)
	local menuFramePosition = self.props.anchorFromBottom and UDim2.new(0, self.props.xOffset, 1, -24)
		or UDim2.fromOffset(self.props.xOffset, self.props.yOffset)

	return Roact.createElement(Roact.Portal, {
		-- LUAU FIXME: Need read-write syntax for props to obviate the need for this cast
		target = CoreGui :: Instance,
	}, {
		InGameMenuContextGui = Roact.createElement("ScreenGui", {
			DisplayOrder = 7,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			TouchBackground = Roact.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundColor3 = style.Theme.Overlay.Color,
				BackgroundTransparency = style.Theme.Overlay.Transparency,
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(Constants.PageWidth + Constants.SideNavigationWidth, 0),
				Size = UDim2.new(1, 0, 1, 0),
				Text = "",
				ZIndex = -10,
				[Roact.Event.Activated] = self.props.onClose,
			}),
			FocusHandler = not GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport()
					and self:renderContextualMenuFocusHandler()
				or nil,
			MoreActionsMenu = not GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() and Roact.createElement(
				"Frame",
				{
					[Roact.Event.AncestryChanged] = self.onAncestryChanged,
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.setContainerRef,
				},
				{
					MenuFrame = Roact.createElement("Frame", {
						AutomaticSize = Enum.AutomaticSize.Y,
						Size = UDim2.new(0, self.props.actionWidth, 0, 0),
						BackgroundTransparency = 1,
						Position = menuFramePosition,
						AnchorPoint = Vector2.new(0, self.props.anchorFromBottom and 1 or 0),
					}, {
						PlayerContextHeader = Roact.createElement(PlayerContextHeader, { player = self.props.player }),
						BaseMenu = Roact.createElement(BaseMenu, {
							maxHeight = self.props.maxHeight,
							topElementRounded = false,
							buttonProps = self.props.moreActions,
							setFirstItemRef = self.setFirstOptionRef,
							width = UDim.new(0, self.props.actionWidth),
							position = UDim2.fromOffset(0, 0),
						}),
					}),
				}
			) or nil,

			RootedConnection = GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() and Roact.createElement(
				RootedConnection,
				{
					render = function(isRooted)
						return self:renderContextualMenuFocusHandler(isRooted, {
							MoreActionsMenu = Roact.createElement("Frame", {
								Size = UDim2.fromScale(1, 1),
								BackgroundTransparency = 1,
								[Roact.Ref] = self.containerRef,
								ZIndex = 1,
							}, {
								MenuFrame = Roact.createElement("Frame", {
									AutomaticSize = Enum.AutomaticSize.Y,
									Size = UDim2.new(0, self.props.actionWidth, 0, 0),
									BackgroundTransparency = 1,
									Position = menuFramePosition,
									AnchorPoint = Vector2.new(0, self.props.anchorFromBottom and 1 or 0),
									Visible = not self.props.isFriendBlockOpen,
								}, {
									PlayerContextHeader = Roact.createElement(
										PlayerContextHeader,
										{ player = self.props.player }
									),
									BaseMenu = Roact.createElement(BaseMenu, {
										maxHeight = self.props.maxHeight,
										topElementRounded = false,
										buttonProps = self.props.moreActions,
										setFirstItemRef = self.firstOptionRef,
										width = UDim.new(0, self.props.actionWidth),
										position = UDim2.fromOffset(0, 92),
									})
								}),
							}),
							FriendBlockConfirmation = self.props.isFriend and Roact.createElement("Frame", {
								Size = UDim2.fromScale(1, 1),
								BackgroundTransparency = 1,
								[Roact.Ref] = self.containerRef,
								ZIndex = 2,
							}, {
								Overlay = Roact.createElement("TextButton", {
									AutoButtonColor = false,
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
									Size = UDim2.new(1, 0, 1, 0),
									Text = "",
									ZIndex = 1,
									Visible = self.props.isFriendBlockOpen,
									[Roact.Event.Activated] = self.closeContextualMenu,
								}),
								BlockFrame = Roact.createElement("Frame", {
									AutomaticSize = Enum.AutomaticSize.Y,
									Size = UDim2.new(0, self.props.actionWidth, 0, 0),
									BackgroundTransparency = 1,
									Position = menuFramePosition,
									AnchorPoint = Vector2.new(0, self.props.anchorFromBottom and 1 or 0),
									ZIndex = 2,
									Visible = self.props.isFriendBlockOpen,
								}, {
									PlayerContextHeader = Roact.createElement(PlayerContextHeader, {
										player = self.props.player,
										zIndex = 4,
									}),
									BlockDialog = Roact.createElement(FriendBlockConfirmation, {
										width = self.props.actionWidth,
										zIndex = 3,
										onClosePlayerContextualMenu = self.props.onClose,
										player = self.props.player,
									}),
								}),
							}) or nil,
						})
					end,
				}
			) or nil,
		}),
	})
end

local function mapStateToProps(state)
	return {
		isFriendBlockOpen = state.friends.isFriendBlockOpen or false,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeFriendBlockConfirmation = function()
			dispatch(SetFriendBlockConfirmation(false))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PlayerContextualMenu)
