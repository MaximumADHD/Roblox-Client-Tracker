--!strict
--[[
	A grid of Subcategory IconTiles with flexible widths.

	Required Props:
		table SubcategoryDict: a table of Subcategories to render.

	Optional Props:
		integer LayoutOrder: The order this component will display in a UILayout.
		UDim2 Position: The position of the scrolling frame.
		UDim2 Size: The size of the scrolling frame.
]]
local Plugin = script.Parent.Parent.Parent.Parent
local FFlagDevFrameworkResponsiveGrid2 = game:GetFastFlag("DevFrameworkResponsiveGrid2")
if not FFlagDevFrameworkResponsiveGrid2 then
	return {}
end
local FFlagDevFrameworkAddUnobtrusiveLinkTextStyle = game:GetFastFlag("DevFrameworkAddUnobtrusiveLinkTextStyle")
local FFlagDevFrameworkScrollingFrameAddPadding = game:GetFastFlag("DevFrameworkScrollingFrameAddPadding")

local Libs = Plugin.Packages
local Framework = require(Libs.Framework)
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local Urls = require(Util.Urls)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local IconTile = require(Plugin.Core.Components.Categorization.IconTile)
local LinkText = Framework.UI.LinkText
local ResponsiveGrid = Framework.UI.ResponsiveGrid
local ScrollingFrame = Framework.UI.ScrollingFrame

local HomeTypes = require(Plugin.Core.Types.HomeTypes)

local GRID_SPACING = 8
local ICON_TILE_HEIGHT = 90
local ICON_TILE_LARGE_WIDTH = 120
local SPACING = Constants.MAIN_VIEW_PADDING
local THUMBNAIL_SIZE = Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE

type _ExternalProps = {
	CategoryName: string,
	LayoutOrder: number?,
	OnClickSubcategory: ((
		subcategoryPath: { string },
		subcategoryDict: { [string]: HomeTypes.Subcategory },
		categoryName: string?,
		sortName: string?
	) -> ()),
	Position: UDim2?,
	Size: UDim2?,
	SortName: string?,
	SubcategoryDict: { [string]: HomeTypes.Subcategory },
}

type _InternalProps = {
	Localization: any,
	Stylizer: any,
}

export type SubcategoriesViewProps = _ExternalProps & _InternalProps

local SubcategoriesView = Roact.PureComponent:extend("SubcategoriesView")

SubcategoriesView.defaultProps = {
	Size = UDim2.new(1, 0, 0, 0),
}

function SubcategoriesView:init(props: SubcategoriesViewProps)
	self.onClickBack = function(key)
		local onClickBack = self.props.OnClickBack
		if onClickBack then
			onClickBack()
		end
	end

	self.onClickSubcategory = function(subcategoryName: string)
		local props: SubcategoriesViewProps = self.props
		local categoryName = props.CategoryName
		local onClickSubcategory = props.OnClickSubcategory
		local sortName = props.SortName
		local subcategoryDict = props.SubcategoryDict

		local subcategoryDictSubset = subcategoryDict[subcategoryName].children

		if onClickSubcategory then
			onClickSubcategory({ subcategoryName }, subcategoryDictSubset, categoryName, sortName)
		end
	end

	self.getSubcategoryElements = function()
		local props: SubcategoriesViewProps = self.props
		local subcategoryDict = props.SubcategoryDict
		local elements = {}

		for _, subcategory: HomeTypes.Subcategory in pairs(subcategoryDict) do
			local color
			local image
			if subcategory.thumbnail then
				color = Color3.fromHex(subcategory.thumbnail.backgroundColor)
				local assetId = subcategory.thumbnail.assetId
				image = Urls.constructAssetThumbnailUrl(assetId, THUMBNAIL_SIZE, THUMBNAIL_SIZE)
			end

			elements[subcategory.name] = Roact.createElement(IconTile, {
				BackgroundColor = color,
				Image = image,
				Key = subcategory.name,
				LayoutOrder = subcategory.index,
				OnClick = self.onClickSubcategory,
				Title = subcategory.displayName,
			})
		end
		return elements
	end
end

function SubcategoriesView:render()
	local props: SubcategoriesViewProps = self.props

	local localization = props.Localization
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size
	local theme = props.Stylizer

	local subcategoryElements = self.getSubcategoryElements()
	local backText = "< " .. localization:getText("General", "AllModels")

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.backgroundColor,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}, {
		ScrollingFrame = Roact.createElement(ScrollingFrame, {
			AutoSizeCanvas = true,
			AutoSizeLayoutOptions = {
				Padding = UDim.new(0, SPACING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			},
			CanvasSize = UDim2.new(1, 0, 0, 0),
			EnableScrollBarBackground = true,
			Padding = if FFlagDevFrameworkScrollingFrameAddPadding then Constants.MAIN_VIEW_PADDING else nil,
			Size = size,
		}, {
			BackButton = Roact.createElement(LinkText, {
				OnClick = self.onClickBack,
				Style = if FFlagDevFrameworkAddUnobtrusiveLinkTextStyle then "Unobtrusive" else nil,
				Text = backText,
			}),

			InnerGrid = Roact.createElement(ResponsiveGrid, {
				AutomaticSize = Enum.AutomaticSize.Y,
				CutOffs = {
					{
						ColumnCount = 2,
						MinWidth = 0,
					},
					{
						ColumnCount = 3,
						MinWidth = ICON_TILE_LARGE_WIDTH * 3 + GRID_SPACING * 2,
					},
				},
				ItemHeight = UDim.new(0, ICON_TILE_HEIGHT),
				Size = UDim2.new(1, 0, 0, 0),
			}, subcategoryElements),
		}),
	})
end

SubcategoriesView = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(SubcategoriesView)

return SubcategoriesView
