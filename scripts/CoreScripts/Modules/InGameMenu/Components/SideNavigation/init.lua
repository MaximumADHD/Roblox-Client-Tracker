local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState

local InGameMenu = script.Parent.Parent

local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)
local ZonePortal = require(InGameMenu.Components.ZonePortal)

local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Constants = require(InGameMenu.Resources.Constants)
local Direction = require(InGameMenu.Enums.Direction)

local CloseMenuButton = require(script.CloseMenuButton)
local HomeButton = require(script.HomeButton)
local SystemMenuButton = require(script.SystemMenuButton)

local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

local SELECTION_PARENT_NAME = "SideNavigation_IGMSelectionGroup"
local PADDING_FROM_TOP = 1

local SideNavigation = Roact.PureComponent:extend("SideNavigation")

SideNavigation.validateProps = t.strictInterface({
	open = t.boolean,
	closeMenu = t.callback,
	goToHomePage = t.callback,
	goToSystemMenu = t.callback,
	currentPage = t.string,
	canCaptureFocus = t.optional(t.boolean),
	currentZone = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.number) or nil,

	--policy
	enableInGameHomeIcon = t.optional(t.boolean),
})

function SideNavigation:init()
	self.controlStateUpdated = function(oldControlState, newControlState)
		if oldControlState == ControlState.Hover and newControlState ~= ControlState.Hover then
			if self.props.currentPage == Constants.InitalPageKey then
				self.props.closeMenu()
			end
		end
	end

	self.firstItemRef = Roact.createRef()

	self.onContainerRendered = function(rbx)
		if rbx then
			GuiService:RemoveSelectionGroup(SELECTION_PARENT_NAME)
			GuiService:AddSelectionParent(SELECTION_PARENT_NAME, rbx)
		end
	end
end

function SideNavigation:oldRender()
	local shouldForgetPreviousSelection = nil -- Can inline when flag is removed
	if GetFFlagIGMGamepadSelectionHistory() then
		shouldForgetPreviousSelection = self.props.currentZone ~= 0 or not self.props.open
	end

	return withStyle(function(style)
		return Roact.createElement("TextButton", {
			AutoButtonColor = false,
			Text = "",
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 64, 1, 0),
			Visible = self.props.open,
			Selectable = false,
			[Roact.Ref] = self.onContainerRendered,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, PADDING_FROM_TOP),
			}),
			CloseMenuButton = Roact.createElement(CloseMenuButton, {
				onActivated = self.props.closeMenu,

				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 4),
				[Roact.Ref] = self.firstItemRef,
			}),
			FocusHandler = Roact.createElement(FocusHandler, {
				isFocused = self.props.canCaptureFocus,
				shouldForgetPreviousSelection = shouldForgetPreviousSelection,
				didFocus = GetFFlagIGMGamepadSelectionHistory() and function(previousSelection)
					GuiService.SelectedCoreObject = previousSelection or self.firstItemRef:getValue()
				end or function()
					GuiService.SelectedCoreObject = self.firstItemRef:getValue()
				end,
			}),
			ZonePortal = self.props.currentPage ~= Constants.InitalPageKey and Roact.createElement(ZonePortal, {
				targetZone = 1,
				direction = Direction.Right,
			}) or nil,
		})
	end)
end

function SideNavigation:newRender()
	local currentPage = self.props.currentPage

	local oldContent = {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 4),
		}),
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, 4),
		}),
		SystemMenuButton = Roact.createElement(SystemMenuButton, {
			on = currentPage == Constants.MainPagePageKey,
			onClose = self.props.closeMenu,
			onActivated = self.props.goToSystemMenu,
			layoutOrder = 1,
			anchorPoint = Vector2.new(0.5, 0),
			position = UDim2.new(0.5, 0, 0, 4),
			canCaptureFocus = self.props.canCaptureFocus,
		}),
		HomeButton = Roact.createElement(HomeButton, {
			on = currentPage == Constants.LeaveToAppPromptPageKey,
			onActivated = self.props.goToHomePage,
			layoutOrder = 2,
			anchorPoint = Vector2.new(0.5, 0),
			position = UDim2.new(0.5, 0, 0, 8),
		}),
	}

	local newContent = {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, PADDING_FROM_TOP),
		}),
		Content = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Selectable = false,
		}, oldContent),
		ZonePortal = self.props.currentPage ~= Constants.InitalPageKey and Roact.createElement(ZonePortal, {
			targetZone = 1,
			direction = Direction.Right,
		}) or nil,
	}

	return withStyle(function(style)
		return Roact.createElement(Interactable, {
			onStateChanged = self.controlStateUpdated,

			AutoButtonColor = false,
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 64, 1, 0),
			Visible = self.props.open,
			Selectable = false,
			[Roact.Ref] = self.onContainerRendered,
		}, newContent)
	end)
end

function SideNavigation:render()
	if self.props.enableInGameHomeIcon then
		return self:newRender()
	end
	return self:oldRender()
end

SideNavigation = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		enableInGameHomeIcon = appPolicy.enableInGameHomeIcon(),
	}
end)(SideNavigation)

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local canCaptureFocus = state.isMenuOpen
		and not state.respawn.dialogOpen
		and state.displayOptions.inputType == Constants.InputType.Gamepad
		and state.currentZone == 0

	local currentZone = nil -- can inline when flag is removed
	if GetFFlagIGMGamepadSelectionHistory() then
		currentZone = state.currentZone
	end

	return {
		canCaptureFocus = canCaptureFocus,
		currentPage = state.menuPage,
		open = state.isMenuOpen,
		currentZone = currentZone,
	}
end,
function(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		goToSystemMenu = function()
			dispatch(SetCurrentPage(Constants.MainPagePageKey))
		end,
		goToHomePage = function()
			dispatch(SetCurrentPage(Constants.LeaveToAppPromptPageKey))
		end
	}
end)(SideNavigation)
