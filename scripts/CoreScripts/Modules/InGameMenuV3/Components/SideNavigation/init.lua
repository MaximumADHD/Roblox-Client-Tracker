--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo

local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle
local SystemBar = UIBlox.App.Navigation.SystemBar
local Placement = UIBlox.App.Navigation.Enum.Placement

local InGameMenu = script.Parent.Parent
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local Constants = require(InGameMenu.Resources.Constants)
local Pages = require(InGameMenu.Components.Pages)
local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)

local HIDE_POSITION = -65

local SideNavigation = Roact.PureComponent:extend("SideNavigation")

local TWEEN_TIME = Constants.MenuOpenTweenTime
local TWEEN_EASE_RAMP = Enum.EasingDirection.InOut
local TWEEN_EASE_CURVE = Enum.EasingStyle.Sine

SideNavigation.validateProps = t.strictInterface({
	closeMenu = t.callback,
	navigateTo = t.callback,
})

function SideNavigation:init()
	self.containerRef = Roact.createRef()

	self.onActivated = {}
	for _, navigationBarItem in ipairs(Pages.navigationBarByIndex) do
		self.onActivated[navigationBarItem.page] = function()
			if IsMenuCsatEnabled() then
				ExperienceMenuABTestManager.default:setCSATQualification()
			end
			self.props.navigateTo(navigationBarItem.page)
		end
	end

	self.menuUpdate = function(menuOpen, wasOpen, currentPage, lastPage)
		if menuOpen ~= wasOpen then
			local containerFrame = self.containerRef:getValue()
			if containerFrame then
				containerFrame.Visible = true
				containerFrame:TweenPosition(
					UDim2.new(0, menuOpen and 0 or HIDE_POSITION, 0, 0),
					TWEEN_EASE_RAMP,
					TWEEN_EASE_CURVE,
					TWEEN_TIME,
					true,
					function(status)
						if not menuOpen and status == Enum.TweenStatus.Completed then
							containerFrame.Visible = false
						end
					end
				)
			end
		end

		if menuOpen and self.state.currentPage ~= currentPage then
			self:setState({
				currentPage = currentPage
			})
		end
	end

	self:setState({
		currentPage = Constants.PlayersPageKey
	})
end

function SideNavigation:didMount()
	local containerFrame = self.containerRef:getValue()
	if containerFrame then
		containerFrame.Visible = self.props.open or false
		containerFrame.Position = UDim2.new(0, self.props.open and 0 or HIDE_POSITION, 0, 0)
	end
end


function SideNavigation:render()
	local navItems = Cryo.List.map(Pages.navigationBarByIndex, function(navigationBarItem)
		return {
			iconComponent = navigationBarItem.iconComponent or nil,
			iconOn = navigationBarItem.iconOn or nil,
			iconOff = navigationBarItem.iconOff or nil,
			onActivated = self.onActivated[navigationBarItem.page],
		}
	end)

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, Constants.SideNavigationWidth, 1, 0),
			BorderSizePixel = 0,
			[Roact.Ref] = self.containerRef,
		}, {
			SystemBar = Roact.createElement(SystemBar, {
				itemList = navItems,
				selection = Pages.navigationBarSelectedIndexForPage(self.state.currentPage),
				placement = Placement.Left,
				hidden = false,
				size = UDim2.new(1, 0, 1, 0),
				position = UDim2.new(),
				layoutOrder = 1,
				layoutPaddingOffset = UDim.new(0, -8),
				firstItemPaddingOffset = UDim.new(0, -7),
			}),
			Watcher = Roact.createElement(PageNavigationWatcher, {
				desiredPage = "",
				onNavigate = self.menuUpdate,
			}),
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		navigateTo = function(page)
			dispatch(SetCurrentPage(page))
		end,
	}
end)(SideNavigation)
