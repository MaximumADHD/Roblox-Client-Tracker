local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local DisplayTable = require(script.Parent.DisplayTable)
local ControlledTabs = require(script.Parent.ControlledTabs)
local ScopeDropdownField = require(script.Parent.ScopeDropdownField)
local SearchBarField = require(script.Parent.SearchBarField)
local TableTab = require(Plugin.Src.Models.Watch.TableTab)

local Constants = require(Plugin.Src.Util.Constants)

local WatchComponent = Roact.PureComponent:extend("WatchComponent")

-- Type Declarations
export type WatchTab = { string: string }

-- Constants
local MINIMUM_WIDTH_FOR_TEXT_DROPDOWN = 527
local MINIMUM_WIDTH_FOR_SEARCHBAR_AND_ICON = 420

function WatchComponent:didMount()
	self.calculateVisibleComponents()
end

function WatchComponent:didUpdate()
	self.calculateVisibleComponents()
end

-- WatchComponent
function WatchComponent:init()
	self.componentRef = Roact.createRef()
	self.state = {
		shouldShowDropdown = true,
		shouldShowDropdownIcon = false,
		shouldShowSearchBar = true,
	}

	self.calculateVisibleComponents = function()
		local currentWindow = self.componentRef.current
		local windowLength = currentWindow.AbsoluteSize.x
		if currentWindow == nil then
			return
		end
		local shouldShowDropdown = self.state.shouldShowDropdown
		local shouldShowDropdownIcon = self.state.shouldShowDropdownIcon
		local shouldShowSearchBar = self.state.shouldShowSearchBar

		if windowLength < MINIMUM_WIDTH_FOR_SEARCHBAR_AND_ICON then
			if not shouldShowDropdownIcon or shouldShowDropdown or shouldShowSearchBar then
				self:setState(function(state)
					return {
						shouldShowDropdown = false,
						shouldShowDropdownIcon = true,
						shouldShowSearchBar = false,
					}
				end)
			end
		elseif windowLength < MINIMUM_WIDTH_FOR_TEXT_DROPDOWN then
			if shouldShowDropdown or not shouldShowDropdownIcon or not shouldShowSearchBar then
				self:setState(function(state)
					return {
						shouldShowDropdown = false,
						shouldShowDropdownIcon = true,
						shouldShowSearchBar = true,
					}
				end)
			end
		else
			if not shouldShowDropdown or shouldShowDropdownIcon or not shouldShowSearchBar then
				self:setState(function(state)
					return {
						shouldShowDropdown = true,
						shouldShowDropdownIcon = false,
						shouldShowSearchBar = true,
					}
				end)
			end
		end
	end

	self.getTreeChildren = function(item)
		return item.children or {}
	end
end

function WatchComponent:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	local WatchTab = {
		Variables = localization:getText("Watch", "VariablesTab"),
		Watches = localization:getText("Watch", "WatchesTab"),
	}
	local tableTabs = {
		{
			Label = WatchTab.Variables,
			Key = "Variables",
		},
		{
			Label = WatchTab.Watches,
			Key = "Watches",
		},
	}

	local topBarHeight = Constants.HEADER_HEIGHT + Constants.BUTTON_PADDING * 2

	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		[Roact.Ref] = self.componentRef,
		[Roact.Change.AbsoluteSize] = self.calculateVisibleComponents,
	}, {
		HeaderView = Roact.createElement(Pane, {
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, topBarHeight),
			Style = "Box",
			Spacing = Constants.BUTTON_PADDING,
			Padding = Constants.BUTTON_PADDING,
		}, {
			TabView = Roact.createElement(ControlledTabs, {
				LayoutOrder = 1,
				Tabs = tableTabs,
				Size = UDim2.new(0.4, 0, 1, 0),
			}),
			RightView = Roact.createElement(Pane, {
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
				Size = UDim2.new(0.6, 0, 1, 0),
				LayoutOrder = 2,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				Layout = Enum.FillDirection.Horizontal,
				Spacing = 10,
			}, {
				DropdownView = props.IsVariablesTab and (self.state.shouldShowDropdown or self.state.shouldShowDropdownIcon)
					and Roact.createElement(ScopeDropdownField, {
						LayoutOrder = 1,
						Size = UDim2.new(0.4, 0, 1, 0),
						ShouldShowDropdownIcon = self.state.shouldShowDropdownIcon,
					}),
				SearchBarView = self.state.shouldShowSearchBar and Roact.createElement(SearchBarField, {
					LayoutOrder = 2,
					Size = UDim2.new(0.6, 0, 1, 0),
				}),
			}),
		}),

		BodyView = Roact.createElement(Pane, {
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 1, -topBarHeight),
			Style = "Box",
		}, {
			DisplayTableView = Roact.createElement(DisplayTable, {
				Stylizer = style,
			}),
		}),
	})
end

-- RoactRodux Connection
WatchComponent = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(WatchComponent)

WatchComponent = RoactRodux.connect(function(state, props)
	return {
		IsVariablesTab = state.Watch.currentTab == TableTab.Variables,
	}
end)(WatchComponent)

return WatchComponent
