local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState

local InGameMenu = script.Parent.Parent

local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Constants = require(InGameMenu.Resources.Constants)

local CloseMenuButton = require(script.CloseMenuButton)
local HomeButton = require(script.HomeButton)
local SystemMenuButton = require(script.SystemMenuButton)

local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local GetFFlagUseRoactPolicyProvider = require(RobloxGui.Modules.Flags.GetFFlagUseRoactPolicyProvider)

local SideNavigation = Roact.PureComponent:extend("SideNavigation")

SideNavigation.validateProps = t.strictInterface({
	open = t.boolean,
	closeMenu = t.callback,
	goToHomePage = t.callback,
	goToSystemMenu = t.callback,
	currentPage = t.string,

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
end

function SideNavigation:oldRender()
	return withStyle(function(style)
		return Roact.createElement("TextButton", {
			AutoButtonColor = false,
			Text = "",
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 64, 1, 0),
			Visible = self.props.open,
		}, {
			CloseMenuButton = Roact.createElement(CloseMenuButton, {
				onActivated = self.props.closeMenu,

				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 4),
			})
		})
	end)
end

function SideNavigation:newRender()
	local currentPage = self.props.currentPage
	return withStyle(function(style)
		return Roact.createElement(Interactable, {
			onStateChanged = self.controlStateUpdated,

			AutoButtonColor = false,
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 64, 1, 0),
			Visible = self.props.open,
		}, {
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
			}),
			HomeButton = Roact.createElement(HomeButton, {
				on = currentPage == Constants.LeaveToAppPromptPageKey,
				onActivated = self.props.goToHomePage,
				layoutOrder = 2,
				anchorPoint = Vector2.new(0.5, 0),
				position = UDim2.new(0.5, 0, 0, 8),
			}),
		})
	end)
end

function SideNavigation:render()
	if self.props.enableInGameHomeIcon then
		return self:newRender()
	end
	return self:oldRender()
end

if GetFFlagUseRoactPolicyProvider() then
	SideNavigation = InGameMenuPolicy.connect(function(appPolicy, props)
		return {
			enableInGameHomeIcon = appPolicy.enableInGameHomeIcon(),
		}
	end)(SideNavigation)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		currentPage = state.menuPage,
		open = state.isMenuOpen,
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
