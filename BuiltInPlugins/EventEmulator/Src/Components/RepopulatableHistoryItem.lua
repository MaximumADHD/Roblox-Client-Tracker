local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration

local RepopulatableHistoryItem = Roact.PureComponent:extend("RepopulatableHistoryItem")

function RepopulatableHistoryItem:render()
	local props = self.props
	local sizes = props.Theme:get("Sizes")
	local layout = props.Theme:get("Layout")
	local name = props.Name

	return Roact.createElement(Container, {
		Background = Decoration.Box,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Layout = Roact.createElement("UIListLayout", layout.Horizontal),
		MoveUpButton = Roact.createElement("ImageButton", {
			Size = UDim2.fromOffset(sizes.HistoryButtonMinor, sizes.HistoryButtonMinor),
			LayoutOrder = 1,
		}),
		MoveDownButton = Roact.createElement("ImageButton", {
			Size = UDim2.new(0, sizes.HistoryButtonMinor, 0, sizes.HistoryButtonMinor),
			LayoutOrder = 2,
		}),
		Name = Roact.createElement("TextButton", {
			Size = UDim2.new(0, sizes.HistoryButtonMajor, 0, sizes.HistoryButtonMinor),
			Text = name,
			LayoutOrder = 3,
		}),
		DeleteButton = Roact.createElement("ImageButton", {
			Size = UDim2.new(0, sizes.HistoryButtonMinor, 0, sizes.HistoryButtonMinor),
			LayoutOrder = 4,
		})
	})
end

ContextServices.mapToProps(RepopulatableHistoryItem,{
	Theme = ContextServices.Theme,
})

return RepopulatableHistoryItem