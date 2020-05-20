--[[
	An list view for an arbitrary set of ordered, selectable items. Responsible for controlling the layout/size
	of items.

	Props:
	ItemHeight
		Height of each item in the ListItemView
	Items
		An ordered list of IDs. The IDs can be anything (guid, instance, etc), as this component does not
		use them directly. These IDs are surfaced to consumers whenever actions are performed on items

	MakeMenuActions(selectedIds)
		Callback to return a data structure of context menus to be used by ContextMenus in the UILibrary
		selectedIds is an ordered list of the current selection

	OnDoubleClicked(clickedId)
		Callback that is invoked whenever an item is double clicked

	RenderItem(id, buttonTheme, hovered)
		Callback to create an element for a single item. Not directly used by ListItemView. See AbstractItemView

	TODO (awarwick) 7/28/2019 This should live in MyFeaturesListItem
	ButtonStyle
		UILibrary style the item buttons should be rendered in.

	[GetCurrentSelection]
		Passthrough BindableFunction to AbstractItemView
--]]

local Plugin = script.Parent.Parent.Parent
local UILibrary = require(Plugin.Packages.UILibrary)
local Roact = require(Plugin.Packages.Roact)
local createFitToContent = UILibrary.Component.createFitToContent

local StyledScrollingFrame = UILibrary.Component.StyledScrollingFrame

local AbstractItemView = require(Plugin.Src.Components.AbstractItemView)

local FitToContent = createFitToContent("Frame", "UIListLayout", {
    SortOrder = Enum.SortOrder.LayoutOrder,
    FillDirection = Enum.FillDirection.Vertical,
})

local ListItemView = Roact.Component:extend("ListItemView")

function ListItemView:init()
	self:setState({})

	self.canvasRef = Roact.createRef()
	self.contentSizeChanged = function(contentSize)
		local canvas = self.canvasRef.current
		if canvas then
			canvas.CanvasSize = UDim2.new(1, 0, 0, contentSize.Y)
		end
	end
end

function ListItemView:render()
	local itemHeight = self.props.ItemHeight
	local items = self.props.Items
	local renderItem = self.props.RenderItem
	local makeMenuActions = self.props.MakeMenuActions
	local onDoubleClicked = self.props.OnDoubleClicked
	local buttonStyle = self.props.ButtonStyle
	local getCurrentSelection = self.props.GetCurrentSelection

	local verticalAlignment = self.props.VerticalAlignment
	local padding = self.props.Padding

    return Roact.createElement(AbstractItemView, {
		Size = UDim2.new(1,0,1,0),

		GetCurrentSelection = getCurrentSelection,
		OnDoubleClicked = onDoubleClicked,
		MakeMenuActions = makeMenuActions,
		ButtonStyle = buttonStyle,
		Items = items,
		RenderItem = renderItem,
		RenderContents = function(buttonInfo)
			local children = {}
			for id,info in pairs(buttonInfo) do
				children[id] = Roact.createElement("Frame", {
					LayoutOrder = info.Index,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, itemHeight),
				}, { Button = info.Button })
			end

			return Roact.createElement(StyledScrollingFrame, {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,

				[Roact.Ref] = self.canvasRef,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					VerticalAlignment = verticalAlignment,
					Padding = padding,

					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,

					[Roact.Change.AbsoluteContentSize] = function(rbx)
						self.contentSizeChanged(rbx.AbsoluteContentSize)
					end,
				}),

				FitContent = Roact.createElement(FitToContent, {

				}, children),
			})
		end,
	})
end

return ListItemView