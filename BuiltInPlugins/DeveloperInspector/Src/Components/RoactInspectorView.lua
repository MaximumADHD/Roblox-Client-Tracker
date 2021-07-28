--[[
	The main view of the Roact inspector.
]]
local FFlagDeveloperInspectorWithContext = game:GetFastFlag("DeveloperInspectorWithContext")

local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)
local RoactElementTree = require(script.Parent.RoactElementTree)
local FieldsTable = require(script.Parent.FieldsTable)
local NodeList = require(script.Parent.NodeList)

local UI = Framework.UI
local Pane = UI.Pane

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local RoactInspectorView = Roact.PureComponent:extend("RoactInspectorView")

function RoactInspectorView:render()
	local props = self.props
	local style = props.Stylizer
	
	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
		Padding = style.Padding,
		Spacing = style.Padding,
	}, {
		Left = Roact.createElement(Pane, {
			LayoutOrder = 1,
			Layout = Enum.FillDirection.Vertical,
			Size = UDim2.new(0.5, -style.Padding, 1, 0),
			Spacing = style.Padding,
		}, {
			TreeContainer = Roact.createElement(Pane, {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 1, -style.NodeListHeight),
			}, {
				RoactElementTree = Roact.createElement(RoactElementTree, {})
			}),
			ListContainer = Roact.createElement(Pane, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, style.NodeListHeight - style.Padding),
			}, {
				NodeList = Roact.createElement(NodeList, {
					selectTarget = self.selectTarget
				})
			})
		}),
		Right =  Roact.createElement(Pane, {
			LayoutOrder = 2,
			Size = UDim2.fromScale(0.5, 1),
		}, {
			Child = Roact.createElement(FieldsTable, {}),
		}),
	})

end

if FFlagDeveloperInspectorWithContext then
	RoactInspectorView = withContext({
		Stylizer = ContextServices.Stylizer,
	})(RoactInspectorView)
else
	ContextServices.mapToProps(RoactInspectorView, {
		Stylizer = ContextServices.Stylizer,
	})
end


return RoactInspectorView