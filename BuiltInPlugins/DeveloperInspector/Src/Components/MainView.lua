--[[
	The main view of the Developer inspector.

	Displays the targets to attach to or the inspector for a specific target if selected.
]]

local Main = script.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local RoactRodux = require(Main.Packages.RoactRodux)
local Framework = require(Main.Packages.Framework)
local TargetTree = require(script.Parent.TargetTree)

local Util = Main.Src.Util
local TabIds = require(Util.TabIds)

local RoactInspectorView = require(Main.Src.Components.RoactInspectorView)
local RoactProfilerView = require(Main.Src.Components.RoactProfilerView)
local TopBar = require(Main.Src.Components.TopBar)

local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local MainView = Roact.PureComponent:extend("MainView")

function MainView:render()
	local props = self.props
	return props.SelectedTarget
		and self:renderTarget(props)
		or self:renderSelectTarget(props)
end

function MainView:renderSelectTarget(props)
	local style = props.Stylizer

	return Roact.createElement(Pane, {
		Style = "SubtleBox",
		Layout = Enum.FillDirection.Vertical,
		Padding = style.Padding,
	}, {
		Label = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			-- TODO RIDE-2900
			Text = "Roact Trees",
			Size = UDim2.new(1, 0, 0, style.HeaderHeight),
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		TargetTree = Roact.createElement(Pane, {
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 1, -style.HeaderHeight),
		}, {
			Child = Roact.createElement(TargetTree, {
				selectTarget = self.selectTarget
			}),
		}),
	})

end

function MainView:renderTarget(props)
	local style = props.Stylizer
	local content
	if props.SelectedTab.Id == TabIds.ELEMENTS then
		content = Roact.createElement(RoactInspectorView, {})
	elseif props.SelectedTab.Id == TabIds.PROFILE then
		content = Roact.createElement(RoactProfilerView, {})
	else
		error({
			name = "Missing tab",
			tab = props.SelectedTab
		})
	end
	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		Style = "Box",
	}, {
		TopBar = Roact.createElement(TopBar, {
			Active = props.Active,
		}),
		Content = Roact.createElement(Pane, {
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 1, - style.HeaderHeight),
		}, {
			Child = content,
		}),
	})
end

ContextServices.mapToProps(MainView, {
	Stylizer = ContextServices.Stylizer,
})

return RoactRodux.connect(
	function(state, props)
		return {
			SelectedTab = state.Targets.selectedTab,
			SelectedTarget = state.Targets.selectedTarget,
		}
	end
)(MainView)
