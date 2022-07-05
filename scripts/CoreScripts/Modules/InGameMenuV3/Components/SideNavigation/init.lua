local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local Otter = InGameMenuDependencies.Otter

local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle
local ControlState = UIBlox.Core.Control.Enum.ControlState
local SystemBar = UIBlox.App.Navigation.SystemBar
local Placement = UIBlox.App.Navigation.Enum.Placement

local InGameMenu = script.Parent.Parent
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local Constants = require(InGameMenu.Resources.Constants)
local Pages = require(InGameMenu.Components.Pages)
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local SELECTION_PARENT_NAME = "SideNavigation_IGMSelectionGroup"
local HIDE_POSITION = -65

local SideNavigation = Roact.PureComponent:extend("SideNavigation")

local POSITION_MOTOR_OPTIONS = {
	dampingRatio = 1,
	frequency = 4,
}

SideNavigation.validateProps = t.strictInterface({
	open = t.boolean,
	closeMenu = t.callback,
	navigateTo = t.callback,
	currentPage = t.string,
	canCaptureFocus = t.optional(t.boolean),
	currentZone = t.optional(t.number),

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

	self.positionMotor = Otter.createSingleMotor(HIDE_POSITION)
	self.containerPosition, self.setContainerPosition = Roact.createBinding(UDim2.new(0, HIDE_POSITION, 0, 0))
	self.positionMotor:onStep(function(position)
		self.setContainerPosition(UDim2.new(0, position, 0, 0))
	end)

	self:setState({
		-- delay set Frame.Visible false until motor animation finished
		frameVisible = false
	})
	self.positionMotor:onComplete(function(position)
		if position == HIDE_POSITION then
			self:setState({
				frameVisible = false
			})
		end
	end)
end

function SideNavigation:didUpdate(_, _)
	if self.props.open == true then
		self:setState({
			frameVisible = true
		})
	end
	self.positionMotor:setGoal(Otter.spring(self.props.open and 0 or HIDE_POSITION, POSITION_MOTOR_OPTIONS))
end

function SideNavigation:render()
	local onActivated = function(page)
		self.props.navigateTo(page)
	end

	local navItems = Cryo.List.map(Pages.navigationBarByIndex, function(navigationBarItem)
		return {
			iconComponent = navigationBarItem.iconComponent or nil,
			iconOn = navigationBarItem.iconOn or nil,
			iconOff = navigationBarItem.iconOff or nil,
			onActivated = function()
				return onActivated(navigationBarItem.page)
			end,
		}
	end)

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, Constants.SideNavigationWidth, 1, 0),
			Position = self.containerPosition,
			Visible = self.state.frameVisible,
			BorderSizePixel = 0,
		}, {
			SystemBar = Roact.createElement(SystemBar, {
				itemList = navItems,
				selection = Pages.navigationBarSelectedIndexForPage(self.props.currentPage),
				placement = Placement.Left,
				hidden = false,
				onSafeAreaChanged = function() end,
				size = UDim2.new(1, 0, 1, 0),
				position = UDim2.new(),
				layoutOrder = 1,
				layoutPaddingOffset = UDim.new(0, -8),
				firstItemPaddingOffset = UDim.new(0, -7),
			}),
		})
	end)
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

	return {
		canCaptureFocus = canCaptureFocus,
		currentPage = state.menuPage,
		open = state.isMenuOpen,
		currentZone = state.currentZone,
	}
end, function(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		navigateTo = function(page)
			dispatch(SetCurrentPage(page))
		end,
	}
end)(SideNavigation)
