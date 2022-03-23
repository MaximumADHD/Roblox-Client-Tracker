--[[
	A view wrapper dispalying a back button and a grid of assets based on prop filters.
]]
local FFlagDevFrameworkAddUnobtrusiveLinkTextStyle = game:GetFastFlag("DevFrameworkAddUnobtrusiveLinkTextStyle")

local Plugin = script:FindFirstAncestor("Toolbox")
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Sort = require(Plugin.Core.Types.Sort)

local Dash = Framework.Dash
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local LoadingIndicator = Framework.UI.LoadingIndicator
local LinkText = Framework.UI.LinkText
local Pane = Framework.UI.Pane
local TextLabel = Framework.UI.Decoration.TextLabel

local AssetLogicWrapper = require(Plugin.Core.Components.AssetLogicWrapper)
local AssetGrid = require(Plugin.Core.Components.AssetGrid)
local ResultsFetcher = require(Plugin.Core.Components.ResultsFetcher)

local Util = Plugin.Core.Util
local ContextGetter = require(Util.ContextGetter)
local getNetwork = ContextGetter.getNetwork

local Category = require(Plugin.Core.Types.Category)

local INITIAL_PAGE_SIZE = 15

export type _ExternalProps = {
	CategoryName: string,
	LayoutOrder: number?,
	OnClickBack: (() -> ()),
	Position: UDim2?,
	SearchTerm: string?,
	SectionName: string?,
	SortName: string?,
	Size: UDim2?,
}

export type _InternalProps = {
	Localization: any,
}

type ResultsViewProps = _ExternalProps & _InternalProps & AssetLogicWrapper.AssetLogicWrapperProps

local ResultsView = Roact.PureComponent:extend("ResultsView")

ResultsView.defaultProps = {
	Size = UDim2.new(1, 0, 0, 0),
	Category = Category.FREE_MODELS.name,
	SearchTerm = nil,
	SectionName = nil,
	SortName = Sort.getDefaultSortNameForCategory(Category.FREE_MODELS.name),
}

function ResultsView:init()
	self.onClickBack = function(key)
		local props: ResultsViewProps = self.props
		local onClickBack = props.OnClickBack
		if onClickBack then
			onClickBack()
		end
	end

	self.createTopContent = function()
		local props: ResultsViewProps = self.props
		local localization = props.Localization

		local backText = "< " .. localization:getText("General", "AllModels")

		return Roact.createElement(LinkText, {
			LayoutOrder = 1,
			OnClick = self.onClickBack,
			Style = if FFlagDevFrameworkAddUnobtrusiveLinkTextStyle then "Unobtrusive" else nil,
			Text = backText,
		})
	end
end

function ResultsView:render()
	local props: ResultsViewProps = self.props

	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size

	local categoryName = props.CategoryName
	local searchTerm = props.SearchTerm
	local sectionName = props.SectionName
	local sortName = props.SortName
	-- Props from AssetLogicWrapper
	local canInsertAsset = props.CanInsertAsset
	local tryInsert = props.TryInsert
	local tryOpenAssetConfig = props.TryOpenAssetConfig

	-- NOTE: We must call createTopContent here to prevent ResultsFetcher from
	-- being called multiple times on AssetGrid re-render.
	local topContentElems = self.createTopContent()
	local renderTopContent = function()
		return topContentElems
	end

	return ResultsFetcher.Generator({
		networkInterface = getNetwork(self),
		categoryName = categoryName,
		sectionName = sectionName,
		sortName = sortName,
		searchTerm = searchTerm,
		initialPageSize = INITIAL_PAGE_SIZE,
		render = function(resultsState)
			return AssetGrid({
				AssetIds = resultsState.assetIds,
				AssetMap = resultsState.assetMap,
				LayoutOrder = layoutOrder,
				Position = position,
				RenderTopContent = renderTopContent,
				RequestNextPage = resultsState.fetchNextPage,
				Size = size,

				-- Props from AssetLogicWrapper
				CanInsertAsset = canInsertAsset,
				TryInsert = tryInsert,
				TryOpenAssetConfig = tryOpenAssetConfig,
			})
		end,
	})
end

ResultsView = withContext({
	Localization = ContextServices.Localization,
})(ResultsView)

return AssetLogicWrapper(ResultsView)
