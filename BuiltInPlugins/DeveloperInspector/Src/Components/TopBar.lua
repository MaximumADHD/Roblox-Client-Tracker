--[[
	The top bar of the DeveloperInspector that is always visible.

	Contains the tool buttons and the tabs for different views.
]]
local Main = script.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local RoactRodux = require(Main.Packages.RoactRodux)
local Framework = require(Main.Packages.Framework)
local TabsTypes = require(Main.Packages._Index.DeveloperFramework.DeveloperFramework.UI.Tabs.types)
local InspectorContext = require(Main.Src.Util.InspectorContext)

local Actions = Main.Src.Actions
local CloseTarget = require(Actions.CloseTarget)
local SetPicking = require(Actions.RoactInspector.SetPicking)
local SetProfiling = require(Actions.RoactInspector.SetProfiling)
local Reset = require(Actions.RoactInspector.Reset)
local SetTab = require(Actions.SetTab)

local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane
local Tabs = UI.Tabs
local Tooltip = UI.Tooltip
local Button = UI.Button
local Image = UI.Decoration.Image
local TextLabel = UI.Decoration.TextLabel

local DeveloperTools = Framework.DeveloperTools
local RoactInspectorApi = DeveloperTools.RoactInspectorApi

local TopBar = Roact.PureComponent:extend("TopBar")

function TopBar:init()
	self.closeTarget = function()
		local inspector = self.props.Inspector:get()
		inspector:closeTargetApi()
		self.props.closeTarget()
		if self.props.IsProfiling then
			self.toggleProfiling()
		end
	end
	self.togglePicking = function()
		local isPicking = not self.props.IsPicking
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:setPicking(isPicking)
		end
		self.props.setPicking(isPicking)
	end
	self.toggleProfiling = function()
		local active = not self.props.IsProfiling
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:setProfiling(active)
		end
		self.props.setProfiling(active)
		if active then
			self.props.selectTab(self.props.Tabs[2])
		end
	end
end

function TopBar:didUpdate()
	if not self.props.Active then
		self.closeTarget()
	end
end

function TopBar:didMount()
	local pluginActions = self.props.PluginActions
	local toggleProfile = pluginActions:get("ToggleProfileRoact")
	toggleProfile.Enabled = true
	self.toggleProfileConnection = toggleProfile.Triggered:Connect(self.toggleProfiling)
end

function TopBar:willUnmount()
	if self.props.Active then
		self.closeTarget()
	end
	local pluginActions = self.props.PluginActions
	local toggleProfile = pluginActions:get("ToggleProfileRoact")
	toggleProfile.Enabled = false
	self.toggleProfileConnection:Disconnect()
end

function TopBar:render()
	local props = self.props
	local style = props.Stylizer

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, style.HeaderHeight),
		Style = "SubtleBox",
		BorderColor3 = style.HeaderBorderColor,
		BorderSizePixel = 1,
	}, {
		Inspect = Roact.createElement(Button, {
			Style = props.IsPicking and "RoundPrimary" or "RoundSubtle",
			Position = UDim2.fromOffset(style.Padding, 0),
			Size = UDim2.fromOffset(style.ButtonSize, style.ButtonSize),
			LayoutOrder = 1,
			OnClick = self.togglePicking,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = "Inspect a UI element"
			}),
			Icon = Roact.createElement(Image, {
				Size = UDim2.fromOffset(style.IconSize, style.IconSize),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperInspector/Inspect.png"
			})
		}),
		Profile = Roact.createElement(Button, {
			Style = props.IsProfiling and "RoundPrimary" or "RoundSubtle",
			Position = UDim2.fromOffset(style.ButtonSize + style.Padding * 2, 0),
			Size = UDim2.fromOffset(style.ButtonSize, style.ButtonSize),
			LayoutOrder = 2,
			OnClick = self.toggleProfiling,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = "Profile a Roact tree (Ctrl+Shift+R)"
			}),
			Icon = Roact.createElement(Image, {
				Size = UDim2.fromOffset(style.IconSize, style.IconSize),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperInspector/Record.png"
			})
		}),
		Tabs = Roact.createElement(Pane, {
			Position = UDim2.fromOffset(style.ButtonSize * 2 + style.Padding * 3, style.Padding),
			LayoutOrder = 3,
		}, {
			Child = Roact.createElement(Tabs, {
				OnTabSelected = self.props.selectTab,
				SelectedTab = props.SelectedTab,
				Tabs = props.Tabs,
			}),
		}),

		Right = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			Spacing = style.Padding,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
		}, {
			TargetName = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = props.SelectedTarget.Name,
				LayoutOrder = 1,
				TextXAlignment = Enum.TextXAlignment.Right
			}),
			Close = Roact.createElement(Button, {
				Style = "RoundSubtle",
				Position = UDim2.fromScale(1, 0),
				Size = UDim2.fromOffset(style.ButtonSize, style.ButtonSize),
				AnchorPoint = Vector2.new(1, 0),
				LayoutOrder = 4,
				OnClick = self.closeTarget,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					Text = "Close this Roact tree"
				}),
				Icon = Roact.createElement(Image, {
					Size = UDim2.fromOffset(style.IconSize, style.IconSize),
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = "rbxasset://textures/DeveloperInspector/Close.png"
				})
			}),
		})
	})
end

ContextServices.mapToProps(TopBar, {
	PluginActions = ContextServices.PluginActions,
	Stylizer = ContextServices.Stylizer,
	Inspector = InspectorContext,
})

return RoactRodux.connect(
	function(state)
		return {
			Tabs = state.Targets.tabs,
			SelectedTab = state.Targets.selectedTab,
			SelectedTarget = state.Targets.selectedTarget,
			IsPicking = state.RoactInspector.isPicking,
			IsProfiling = state.RoactInspector.isProfiling,
		}
	end,
	function(dispatch)
		return {
			selectTab = function(tab: TabsTypes.Tab)
				dispatch(SetTab(tab))
			end,
			setPicking = function(isPicking: boolean)
				dispatch(SetPicking(isPicking))
			end,
			setProfiling = function(isProfiling: boolean)
				dispatch(SetProfiling(isProfiling))
			end,
			closeTarget = function()
				dispatch(CloseTarget())
				dispatch(Reset())
			end
		}
	end
)(TopBar)
