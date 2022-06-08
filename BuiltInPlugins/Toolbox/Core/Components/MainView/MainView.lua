--[[
	Central part of the toolbox

	Props:
		UDim2 position = UDim2.new(0, 0, 0, 0)
		UDim2 size = UDim2.new(1, 0, 1, 0)

		[number] idsToRender

		number maxWidth

		string categoryName

		Suggestions suggestions

		NetworkErrors networkErrors

		boolean isLoading

		boolean showSearchOptions

		callback selectSort()
		callback requestSearch()
		callback nextPage()
		callback tryOpenAssetConfig, invoke assetConfig page with an assetId.
]]

local GuiService = game:GetService("GuiService")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Cryo = require(Packages.Cryo)
local Framework = require(Packages.Framework)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Layouter = require(Plugin.Core.Util.Layouter)
local Category = require(Plugin.Core.Types.Category)
local showRobloxCreatedAssets = require(Plugin.Core.Util.ToolboxUtilities).showRobloxCreatedAssets

local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local getModal = ContextGetter.getModal
local withLocalization = ContextHelper.withLocalization

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)

local AssetGridContainer = require(Plugin.Core.Components.AssetGridContainer)

local InfoBanner = require(Plugin.Core.Components.InfoBanner)
local NoResultsDetail = require(Plugin.Core.Components.NoResultsDetail)
local LoadingIndicator = Framework.UI.LoadingIndicator

local MainViewHeader = require(Plugin.Core.Components.MainView.MainViewHeader)
local Toast = require(Plugin.Core.Components.Toast)
local SearchOptions = require(Plugin.Core.Components.SearchOptions.SearchOptions)

local NextPageRequest = require(Plugin.Core.Networking.Requests.NextPageRequest)
local UserSearchRequest = require(Plugin.Core.Networking.Requests.UserSearchRequest)
local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)

local disableNetworkErrorsToasts = true

local MainView = Roact.PureComponent:extend("MainView")

function MainView:init(props)
	local networkInterface = getNetwork(self)
	local settings = getSettings(self)

	self.headerHeight = 0
	self.containerWidth = 0
	self.scrollingFrameRef = Roact.createRef()

	self.requestNextPage = function()
		settings = self.props.Settings:get("Plugin")
		self.props.nextPage(networkInterface, settings)
	end
end

function MainView:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props
		local state = self.state

		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local size = props.Size or UDim2.new(1, 0, 1, 0)

		local categoryName = props.categoryName
		local suggestions = localization:getLocalizedSuggestions(props.suggestions) or {}

		local isCategoryAudio = Category.categoryIsAudio(categoryName)

		local isLoading = props.isLoading or false

		local maxWidth = props.maxWidth or 0

		local networkErrors = props.networkErrors or {}
		local networkError = networkErrors[#networkErrors]

		local allAssetCount = props.allAssetCount
		local assetCount = props.allAssetCount

		local lowerIndexToRender = state.lowerIndexToRender or 0

		local containerWidth = maxWidth - (2 * Constants.MAIN_VIEW_PADDING) - Constants.SCROLLBAR_PADDING

		local showPrices = Category.shouldShowPrices(props.categoryName)

		local suggestionIntro = localizedContent.Sort.ByText

		local creatorName = props.creator and props.creator.Name
		local searchTerm = props.searchTerm
		local showTags = (creatorName ~= nil) or (#searchTerm > 0) or (props.audioSearchInfo ~= nil)

		local headerHeight, headerToBodyPadding = Layouter.calculateMainViewHeaderHeight(
			showTags,
			suggestionIntro,
			suggestions,
			containerWidth
		)

		local hasResults = allAssetCount > 0

		local showInfoBanner = not hasResults and not isLoading

		local noResultsDetailProps = nil

		local isPlugin = Category.categoryIsPlugin(props.categoryName)
		if showInfoBanner and isPlugin then
			noResultsDetailProps = {
				onLinkClicked = function()
					GuiService:OpenBrowserWindow(Constants.PLUGIN_LIBRARY_URL)
				end,
				content = localizedContent.NoPluginsFound,
			}
		end

		local tryOpenAssetConfig = props.tryOpenAssetConfig

		self.containerWidth = containerWidth
		self.headerHeight = headerHeight

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			ScrollingFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, Constants.MAIN_VIEW_PADDING),
					PaddingLeft = UDim.new(0, Constants.MAIN_VIEW_PADDING),
					PaddingRight = UDim.new(0, Constants.MAIN_VIEW_PADDING),
					PaddingTop = UDim.new(0, Constants.MAIN_VIEW_PADDING),
				}),

				Header = Roact.createElement(MainViewHeader, {
					suggestions = suggestions,
					containerWidth = containerWidth,
					showTags = showTags,
				}),

				NoResultsDetail = noResultsDetailProps and Roact.createElement(
					NoResultsDetail,
					Cryo.Dictionary.join({
						Position = UDim2.new(0, 0, 0, 66 + headerHeight),
						ZIndex = 2,
					}, noResultsDetailProps)
				),
			}),

			AssetGridContainerNew = Roact.createElement(AssetGridContainer, {
				Position = UDim2.new(0, 0, 0, headerHeight + headerToBodyPadding),
				Size = UDim2.new(1, 0, 1, -headerHeight - headerToBodyPadding),
				TryOpenAssetConfig = tryOpenAssetConfig,
			}),

			InfoBanner = showInfoBanner and Roact.createElement(InfoBanner, {
				Position = UDim2.new(0, 0, 0, 16 + headerHeight),
				Text = localizedContent.InfoBannerText,
			}),

			LoadingIndicator = isLoading and Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(0.5, 1),
				Position = UDim2.new(0.5, 0, 1, -16),
				Size = UDim2.new(0, 92, 0, 24),
				ZIndex = 3,
			}),

			-- TODO CLIDEVSRVS-1591: Temporarily disable until finished
			NetworkError = not disableNetworkErrorsToasts and networkError and Roact.createElement(Toast, {
				Text = ("Network Error: %s"):format(networkError and networkError.responseBody or ""),
			}),
		})
	end)
end

MainView = withContext({
	Settings = Settings,
})(MainView)

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}
	local pageInfo = state.pageInfo or {}

	return {
		allAssetCount = #assets.idsToRender,
		isLoading = assets.isLoading or false,

		networkErrors = state.networkErrors or {},

		audioSearchInfo = pageInfo.audioSearchInfo,
		categoryName = pageInfo.categoryName or Category.DEFAULT.name,
		searchTerm = pageInfo.searchTerm or "",
		creator = pageInfo.creator,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		nextPage = function(networkInterface, settings)
			dispatch(NextPageRequest(networkInterface, settings))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainView)
