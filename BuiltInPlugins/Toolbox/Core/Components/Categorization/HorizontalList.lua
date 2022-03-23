--!strict
local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local ScrollingFrame = Framework.UI.ScrollingFrame

export type HorizontalListData = any
export type HorizontalListProps = {
	Data: { HorizontalListData },
	DefaultHeight: number?,
	OnClickSeeAll: (() -> ()),
	OnRenderItem: ((index: number, data: HorizontalListData) -> any),
	Position: UDim2?,
}

local HorizontalList = Roact.PureComponent:extend("HorizontalList")

function HorizontalList:init()
	self.layoutRef = Roact.createRef()
	self.state = {
		canvasHeight = self.props.DefaultHeight or 0,
	}

	self.resizeCanvas = function(rbx)
		self:setState({
			canvasHeight = rbx.AbsoluteContentSize.Y,
		})
	end
end

function HorizontalList:render()
	local data = self.props.Data or {}
	local height = self.state.canvasHeight
	local onRenderItem = self.props.OnRenderItem
	local position = self.props.Position

	local displayCount = self.props.DisplayCount

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 8),
			[Roact.Ref] = self.layoutRef,
			[Roact.Change.AbsoluteContentSize] = self.resizeCanvas,
		}),
	}

	local index = 0
	for i, item in pairs(data) do
		if index >= displayCount then
			break
		end

		index = index + 1
		children[tostring(i)] = onRenderItem(i, item)
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, height),
		Position = position,
		BackgroundTransparency = 1,
	}, {
		ScrollingFrame = Roact.createElement(ScrollingFrame, {
			ScrollingDirection = Enum.ScrollingDirection.X,
			AutomaticCanvasSize = Enum.AutomaticSize.XY,
			ClipsDescendants = false,
			ScrollBarImageTransparency = 1.0,
			ScrollingEnabled = false,
			Size = UDim2.new(1, 0, 1, 0),
		}, children),
	})
end

return HorizontalList
