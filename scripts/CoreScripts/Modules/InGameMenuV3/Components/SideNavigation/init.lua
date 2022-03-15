local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo

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

local GetFFlagInGameMenuControllerDevelopmentOnly = require(InGameMenu.Flags.GetFFlagInGameMenuControllerDevelopmentOnly)
local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

local SELECTION_PARENT_NAME = "SideNavigation_IGMSelectionGroup"

local SideNavigation = Roact.PureComponent:extend("SideNavigation")

SideNavigation.validateProps = t.strictInterface({
	open = t.boolean,
	closeMenu = t.callback,
	navigateTo = t.callback,
	currentPage = t.string,
	canCaptureFocus = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.boolean) or nil,
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

	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		self.firstItemRef = Roact.createRef()

		self.onContainerRendered = function(rbx)
			if rbx then
				GuiService:RemoveSelectionGroup(SELECTION_PARENT_NAME)
				GuiService:AddSelectionParent(SELECTION_PARENT_NAME, rbx)
			end
		end
	end
end

function SideNavigation:render()

	local onActivated = function(page)
		self.props.navigateTo(page);
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
		return Roact.createElement("Frame",  {
			Size = UDim2.new(0, 64, 1, 0),
			Visible = self.props.open
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
			})
		})
	end)

end

SideNavigation = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		enableInGameHomeIcon = appPolicy.enableInGameHomeIcon(),
	}
end)(SideNavigation)

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local canCaptureFocus = nil -- Can inline when GetFFlagInGameMenuControllerDevelopmentOnly is removed
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		canCaptureFocus = state.isMenuOpen
			and not state.respawn.dialogOpen
			and state.displayOptions.inputType == Constants.InputType.Gamepad
			and state.currentZone == 0
	end

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
		navigateTo = function(page)
			dispatch(SetCurrentPage(page))
		end
	}
end)(SideNavigation)
