--[[
	The main view of the Developer inspector.

	Displays the targets to attach to or the inspector for a specific target if selected.
]]

local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)
local Framework = require(main.Packages.Framework)
local TargetTree = require(script.Parent.TargetTree)
local RoactInspectorView = require(script.Parent.RoactInspectorView)

local ContextServices = Framework.ContextServices
local Util = Framework.Util

local UI = Framework.UI
local Container = UI.Container
local TextLabel = UI.Decoration.TextLabel

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local MainView = Roact.PureComponent:extend("MainView")

function MainView:render()
	if self.props.SelectedTarget then 
		return Roact.createElement(RoactInspectorView)
	else
		return self:renderSelectTarget()
	end
end

function MainView:renderSelectTarget()
	local props = self.props

	local style
	if THEME_REFACTOR then
		style = props.Stylizer
	else
		style = props.Theme:getStyle("Plugin", self)
	end

	return Roact.createElement("Frame", {
		BackgroundColor3 = style.BackgroundColor,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0)
	}, {
		Label = Roact.createElement(TextLabel, {
			-- TODO RIDE-2900
			Text = "Select a target to inspect:",
			Size = UDim2.new(1, 0, 0, style.HeaderHeight),
			TextXAlignment = Enum.TextXAlignment.Left,
			Position = UDim2.new(0, style.Padding, 0, style.Padding)
		}),
		TreeContainer = Roact.createElement(Container, {
			Position = UDim2.new(0, 0, 0, style.HeaderHeight),
			Size = UDim2.new(1, 0, 1, -style.HeaderHeight),
			Padding = style.Padding,
		}, {
			TargetTree = Roact.createElement(TargetTree, {
				selectTarget = self.selectTarget
			})
		}),
	})

end

ContextServices.mapToProps(MainView, {
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})

return RoactRodux.connect(
	function(state, props)
		return {
			SelectedTarget = state.Targets.selectedTarget
		}
	end
)(MainView)