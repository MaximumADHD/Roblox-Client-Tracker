--!strict
--[[
	A container with rows of content and that resizes each text item each row to fill the entire width.
]]
local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization2")
if not FFlagToolboxAssetCategorization then
	-- needed for withAbsoluteSizeAndPosition
	return {}
end

local Plugin = script:FindFirstAncestor("Toolbox")

local TextService = game:GetService("TextService")

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)

local ContextServices = Framework.ContextServices
local Dash = Framework.Dash
local HoverArea = Framework.UI.HoverArea
local Pane = Framework.UI.Pane
local withAbsoluteSizeAndPosition = Framework.Wrappers.withAbsoluteSizeAndPosition

local SearchPill = require(Plugin.Core.Components.Categorization.SearchPill)

local withContext = ContextServices.withContext

local BUTTON_SPACING = 3

type _ExternalProps = {
	Items: { any },
	ItemMinWidth: number?,
	LayoutOrder: number?,
	MaxRowCount: number,
	OnClick: ((searchText: string) -> ())?,
	Position: UDim2?,
	Size: UDim2?,
}

type _InternalProps = {
	AbsoluteSize: Vector2, -- From withAbsoluteSizeAndPosition
	Stylizer: any,
	WrapperProps: any?, -- From withAbsoluteSizeAndPosition
}

type SearchListRenderItem = {
	Item: string,
	Width: number,
}

export type SearchListProps = _ExternalProps & _InternalProps

local SearchList = Roact.PureComponent:extend("SearchList")

SearchList.defaultProps = {
	ItemMinWidth = 0,
	MaxRowCount = math.huge,
	Size = UDim2.new(1, 0, 0, 0),
}

function SearchList:init()
	self.onRenderItem = function(index: number, text: string, width: number)
		local props: SearchListProps = self.props
		local theme = props.Stylizer
		local onClick = props.OnClick

		local searchPillTheme = theme.searchPill
	
		return Roact.createElement(SearchPill, {
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = index,
			OnClick = onClick,
			Size = UDim2.new(0, width, 0, searchPillTheme.textSize),
			Text = text,
		})
	end

	self.resizeRowItemsToAvailableSpace =
		function(rowItemList: { SearchListRenderItem }, currentRowWidth: number, maxRowWidth: number)
			if #rowItemList == 0 then
				return
			end
			local unsusedPixels = maxRowWidth - currentRowWidth
			local pixelsToAddPerItem = math.floor(unsusedPixels / #rowItemList)
			for _, item: SearchListRenderItem in ipairs(rowItemList) do
				item.Width += pixelsToAddPerItem
			end

			local pixelsAfterDivide = unsusedPixels - pixelsToAddPerItem * #rowItemList
			local lastItem = rowItemList[#rowItemList]
			lastItem.Width += pixelsAfterDivide
		end

	self.getRowMatrix = function()
		local props: SearchListProps = self.props
		local theme = props.Stylizer

		local items = props.Items
		local itemMinWidth = props.ItemMinWidth
		local maxRowCount = props.MaxRowCount
		local maxRowWidth = props.AbsoluteSize.X

		local rowMatrix: { { SearchListRenderItem } } = {}
		local currentRowItemList: { SearchListRenderItem } = {}
		local currentRowWidth = 0

		local searchPillTheme = theme.searchPill

		for i, text in ipairs(items) do
			local textDimensionsExtents = TextService:GetTextSize(
				text,
				searchPillTheme.textSize,
				searchPillTheme.font,
				Vector2.new(maxRowWidth, math.huge)
			)

			local textWidth = textDimensionsExtents.X
			local itemWidth = textWidth + itemMinWidth

			local elem: SearchListRenderItem = {
				Item = text,
				Width = itemWidth,
			}

			local oldPixelWidth = currentRowWidth
			currentRowWidth += itemWidth
			if i ~= 1 then
				currentRowWidth += BUTTON_SPACING
			end

			if currentRowWidth > maxRowWidth then
				self.resizeRowItemsToAvailableSpace(currentRowItemList, oldPixelWidth, maxRowWidth)
				-- Reset
				table.insert(rowMatrix, currentRowItemList)
				currentRowWidth = itemWidth
				currentRowItemList = {}
			end

			if #rowMatrix < maxRowCount then
				table.insert(currentRowItemList, elem)
			else
				break
			end
		end

		if #currentRowItemList > 0 then
			table.insert(rowMatrix, currentRowItemList)
			self.resizeRowItemsToAvailableSpace(currentRowItemList, currentRowWidth, maxRowWidth)
		end

		return rowMatrix
	end
end

function SearchList:render()
	local props: SearchListProps = self.props

	local layoutOrder = props.LayoutOrder
	local items = props.Items
	local position = props.Position
	local size = props.Size
	local theme = props.Stylizer

	local searchListTheme = theme.searchList

	local rowMatrix = self.getRowMatrix()

	local children = {}
	for i, rowList in pairs(rowMatrix) do
		local rowChildren = {}
		for j, rowItem: SearchListRenderItem in pairs(rowList) do
			local elem = self.onRenderItem(j, rowItem.Item, rowItem.Width)
			table.insert(rowChildren, elem)
		end

		local rowElem = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = i,
			Size = UDim2.new(1, 0, 0, 0),
			Spacing = BUTTON_SPACING,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, rowChildren)

		table.insert(children, rowElem)
	end

	return Roact.createElement(
		Pane,
		Dash.join({
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = layoutOrder,
			Position = position,
			Size = size,
			Spacing = BUTTON_SPACING,
		}, props.WrapperProps),
		children
	)
end

SearchList = withContext({
	Stylizer = ContextServices.Stylizer,
})(SearchList)

return withAbsoluteSizeAndPosition(SearchList)
