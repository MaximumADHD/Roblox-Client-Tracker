local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local Components = Plugin.Src.Components
local RepopulatableHistoryItem = require(Components.RepopulatableHistoryItem)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration
local ScrollingFrame = UI.ScrollingFrame

local RepopulatableHistory = Roact.PureComponent:extend("RepopulatableHistory")

function RepopulatableHistory:init()
	self.createChildren = function()
		local props = self.props
		local items = props.HistoryItems
		local theme = self.props.Theme
		local layout = theme:get("Layout")

		local children = {
			Layout = Roact.createElement("UIListLayout", layout.Vertical),
		}
		
		for _, value in pairs(items) do
			table.insert(children, 0, Roact.createElement(RepopulatableHistoryItem, {
				View = value.View,
				Name = value.Name,
				Data = value.Data
			}))
		end
		return children
	end
end


function RepopulatableHistory:render()
	local theme = self.props.Theme
	local textStyle = theme:get("Text")
	local sizes = theme:get("Sizes")

	return Roact.createElement(Container, {
		Background = Decoration.Box,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Header = Roact.createElement("TextLabel", {
			Position = UDim2.new(0.5, 0, 0, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Font = Enum.Font.SourceSansBold,
			Text = "History",
			TextColor3 = textStyle.BrightText.Color,
			TextSize = textStyle.BrightText.Size,
		}),
		ScrollingContainer = Roact.createElement(ScrollingFrame, {
			Position = UDim2.new(0, 0, 0, textStyle.BrightText.Size), -- don't overlap!r
			AutoSizeCanvas = false,
			Size = UDim2.new(1, 0, 1, -textStyle.BrightText.Size),
		}, self.createChildren())
	})
end

ContextServices.mapToProps(RepopulatableHistory,{
	Theme = ContextServices.Theme,
})

return RoactRodux.connect(
	function(state, props)
		return {
			HistoryItems = state.History.HistoryItems,
		}
	end
)(RepopulatableHistory)