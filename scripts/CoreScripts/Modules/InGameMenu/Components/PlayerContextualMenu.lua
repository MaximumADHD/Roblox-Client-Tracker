local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local BaseMenu = UIBlox.App.Menu.BaseMenu

local InGameMenu = script.Parent.Parent

local FocusHandler = require(script.Parent.Connection.FocusHandler)
local RootedConnection = require(script.Parent.Connection.RootedConnection)

local Flags = InGameMenu.Flags
local GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport = require(Flags.GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport)
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)

local PLAYER_CONTEXTUAL_MENU_CLOSE_ACTION = "player_contextual_menu_close_action"
local SELECTION_PARENT_NAME = "player_contextual_menu_selection_parent"

local PlayerContextualMenu = Roact.PureComponent:extend("PlayerContextualMenu")

PlayerContextualMenu.validateProps = t.strictInterface({
	moreActions = t.table,
	actionWidth = t.number,
	xOffset = t.number,
	yOffset = t.number,
	onClose = t.callback,
	canCaptureFocus = t.boolean,
})

function PlayerContextualMenu:init()
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

				if GetFFlagIGMGamepadSelectionHistory() then
					GuiService.SelectedCoreObject = previousSelection or self.firstOptionRef:getValue()
				else
					GuiService.SelectedCoreObject = self.firstOptionRef:getValue()
				end
			else
				GuiService:AddSelectionParent(SELECTION_PARENT_NAME, self.state.containerRef)

				if GetFFlagIGMGamepadSelectionHistory() then
					GuiService.SelectedCoreObject = previousSelection or self.state.firstOptionRef
				else
					GuiService.SelectedCoreObject = self.state.firstOptionRef
				end
			end
		end,

		didBlur = function()
			ContextActionService:UnbindCoreAction(PLAYER_CONTEXTUAL_MENU_CLOSE_ACTION)
		end,
	}, GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() and children or nil)
end

function PlayerContextualMenu:render()
	return Roact.createElement(Roact.Portal, {
		-- LUAU FIXME: Need read-write syntax for props to obviate the need for this cast
		target = CoreGui :: Instance,
	}, {
		InGameMenuContextGui = Roact.createElement("ScreenGui", {
			DisplayOrder = 2,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			FocusHandler = not GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() and self:renderContextualMenuFocusHandler() or nil,
			MoreActionsMenu = not GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() and Roact.createElement("Frame", {
				[Roact.Event.AncestryChanged] = self.onAncestryChanged,
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				[Roact.Ref] = self.setContainerRef,
			}, {
				BaseMenu = Roact.createElement(BaseMenu, {
					buttonProps = self.props.moreActions,
					setFirstItemRef = self.setFirstOptionRef,
					width = UDim.new(0, self.props.actionWidth),
					position = UDim2.fromOffset(self.props.xOffset, self.props.yOffset),
				}),
			}) or nil,

			RootedConnection = GetFFlagIGMRefactorPlayerContextualMenuGamepadSupport() and Roact.createElement(RootedConnection, {
				render = function(isRooted)
					return self:renderContextualMenuFocusHandler(isRooted, {
						MoreActionsMenu = Roact.createElement("Frame", {
							Size = UDim2.fromScale(1, 1),
							BackgroundTransparency = 1,
							[Roact.Ref] = self.containerRef,
						}, {
							BaseMenu = Roact.createElement(BaseMenu, {
								buttonProps = self.props.moreActions,
								setFirstItemRef = self.firstOptionRef,
								width = UDim.new(0, self.props.actionWidth),
								position = UDim2.fromOffset(self.props.xOffset, self.props.yOffset),
							}),
						}),
					})
				end,
			}) or nil,
		}),
	})
end

return PlayerContextualMenu
