--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local FFlagToolboxUseQueryForCategories2 = game:GetFastFlag("ToolboxUseQueryForCategories2")
local FFlagToolboxAudioAssetPreview = game:GetFastFlag("ToolboxAudioAssetPreview")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local ResultsFetcher = require(Plugin.Core.Components.ResultsFetcher)
local HomeTypes = require(Plugin.Core.Types.HomeTypes)
local AssetInfo = require(Plugin.Core.Models.AssetInfo)

local AssetLogicWrapper = require(Plugin.Core.Components.AssetLogicWrapper)
local AudioScroller = require(Plugin.Core.Components.AudioHomeView.AudioScroller)
local AudioTabs = require(Plugin.Core.Components.AudioTabs.AudioTabs)
local Category = require(Plugin.Core.Types.Category)
local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)
local AssetAnalyticsContextItem = require(Plugin.Core.Util.Analytics.AssetAnalyticsContextItem)
local GetPageInfoAnalyticsContextInfo = require(Plugin.Core.Thunks.GetPageInfoAnalyticsContextInfo)
local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)
local Settings = require(Plugin.Core.ContextServices.Settings)

local CategoryDropDown = require(Plugin.Core.Components.CategoryDropDown.CategoryDropDown)
local CallToActionBanner = require(Plugin.Core.Components.CallToActionBanner.CallToActionBanner)
local ContextServices = require(Packages.Framework).ContextServices
local GetAssetPreviewDataForStartup = require(Plugin.Core.Thunks.GetAssetPreviewDataForStartup)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local getStartupAssetId = require(Plugin.Core.Util.getStartupAssetId)
local withContext = ContextServices.withContext
local getNetwork = ContextGetter.getNetwork

local AudioWrapper = Roact.PureComponent:extend("AudioWrapper")

type _InteralAudioWrapperProps = {
	Localization: any,
	Stylizer: any,
	Settings: any,
	AssetAnalytics: any,
	getAssetPreviewDataForStartup: any,
	SearchWithOptions: (
		networkInterface: any,
		settings: any,
		options: { Creator: { Name: string, Id: number } }
	) -> nil,
}

type _ExternalAudioRowProps = {
	AssetSections: { HomeTypes.HomeConfigurationSection },
	CategoryName: string,
	LayoutOrder: number?,
	OnClickSubcategory: ((
		subcategoryName: string,
		subcategoryDict: HomeTypes.Subcategory,
		categoryName: string?,
		sortName: string?,
		navigation: any
	) -> ()),
	OnClickSeeAllAssets: ((
		sectionName: string?,
		categoryName: string,
		sortName: string?,
		searchTerm: string?,
		navigation: any,
		queryParams: HomeTypes.SubcategoryQueryParams?
	) -> ()),
	OnClickSeeAllSubcategories: ((
		subcategoryDict: { [string]: HomeTypes.Subcategory },
		categoryName: string,
		sortName: string?,
		navigation: any
	) -> ()),
	Position: number?,
	Size: UDim2?,
	SortName: string?,
	SubcategoryDict: { [string]: HomeTypes.Subcategory },
	TopKeywords: { string }?,
	CanInsertAsset: () -> boolean,
	TryInsert: ((assetData: any, assetWasDragged: boolean, insertionMethod: string?) -> any),
	LogPageView: ((searchCategory: string, pathName: string?) -> nil),
	-- Remove with removal of FFlagToolboxAudioAssetPreview
	tryOpenAssetConfig: AssetLogicWrapper.TryOpenAssetConfigFn?,
	-- Make required with removal of  FFlagToolboxAudioAssetPreview
	TryOpenAssetConfig: AssetLogicWrapper.TryOpenAssetConfigFn?,
	-- Make required with removal of  FFlagToolboxAudioAssetPreview
	OnAssetPreviewButtonClicked: AssetLogicWrapper.OnAssetPreviewButtonClickedFn?,
}

type AudioWrapperProps = _InteralAudioWrapperProps & _ExternalAudioRowProps & AssetLogicWrapper.AssetLogicWrapperProps

type AudioWrapperState = {
	selectedTab: string,
	selectedCategory: HomeTypes.Subcategory | nil,
	audioTabSize: UDim2,
}

local MONSTER_CAT_CREATOR = table.freeze({
	Creator = {
		Id = 1750384777,
		Name = "Monstercat",
	},
})

function AudioWrapper:init(props: AudioWrapperProps)
	self.sizerRef = Roact.createRef()
	self.state = {
		selectedTab = Category.SOUND_EFFECTS.name,
		audioTabSize = UDim2.new(0, 330, 0, Constants.AUDIO_TABS_HEIGHT),
	}

	self.onTabSelect = function(tab: string)
		local props: AudioWrapperProps = self.props
		local state: AudioWrapperState = self.state
		local selectedDropDown = if state.selectedCategory then state.selectedCategory.name else nil
		local logPageView = props.LogPageView

		self:setState({ selectedTab = tab, selectedCategory = Roact.None })
		logPageView(tab, selectedDropDown)
	end

	self.onCategorySelect = function(category: HomeTypes.Subcategory?)
		local props: AudioWrapperProps = self.props
		local state: AudioWrapperState = self.state
		local selectedCategory = category or Roact.None
		local selectedDropDown = if category then category.name else nil
		local tab = state.selectedTab
		local logPageView = props.LogPageView
		self:setState({ selectedCategory = selectedCategory })

		logPageView(tab, selectedDropDown)
	end

	self.renderTopContent = function()
		local props: AudioWrapperProps = self.props
		local state: AudioWrapperState = self.state

		local selectedTab = state.selectedTab
		local audioTabSize = state.audioTabSize

		local localization = props.Localization
		local settings = props.Settings:get("Plugin")
		local searchWithOptions = props.SearchWithOptions
		local analytics = props.AssetAnalytics:get()
		local onBannerClick = function()
			searchWithOptions(getNetwork(self), settings, MONSTER_CAT_CREATOR)
			analytics:onCallToActionBannerClicked(MONSTER_CAT_CREATOR.Creator.Id)
		end

		local isMusic = selectedTab == Category.MUSIC.name

		return Roact.createElement("Frame", {
			LayoutOrder = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 1,
		}, {
			Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 11),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, 10),
			}),
			Roact.createElement("Frame", {
				LayoutOrder = 1,
				Size = audioTabSize,
				BackgroundColor3 = props.Stylizer.audioTabs.backgroundButtonColor,
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 5),
				}),
				Roact.createElement(AudioTabs, {
					Size = UDim2.new(1, 0, 0, 30),
					SelectedTab = self.state.selectedTab,
					OnTabSelect = self.onTabSelect,
				}),
			}),
			CallToActionBanner = if isMusic
				then CallToActionBanner.Generator({
					LayoutOrder = 2,
					Image = Images.MONSTER_CAT_BANNER,
					Text = localization:getText(
						"Audio",
						"FindTracks",
						{ creatorName = MONSTER_CAT_CREATOR.Creator.Name }
					),
					OnClick = onBannerClick,
				})
				else nil,
			Roact.createElement(CategoryDropDown, {
				LayoutOrder = 3,
				Subcategories = props.SubcategoryDict,
				AudioType = selectedTab,
				OnCategorySelect = self.onCategorySelect,
			}),
		})
	end

	self.onAbsoluteSizeChanged = function(rbx)
		if rbx.AbsoluteSize.X < 375 then
			self:setState({ audioTabSize = UDim2.new(1, 0, 0, Constants.AUDIO_TABS_HEIGHT) })
		else
			self:setState({ audioTabSize = UDim2.new(0, 330, 0, Constants.AUDIO_TABS_HEIGHT) })
		end
	end

	self.logImpression = function(asset: AssetInfo.AssetInfo)
		local props = self.props
		local state: AudioWrapperState = self.state

		local getPageInfoAnalyticsContextInfo = props.getPageInfoAnalyticsContextInfo
		local assetAnalytics = self.props.AssetAnalytics
		local audioType = state.selectedTab
		local category = if state.selectedCategory then state.selectedCategory.name else nil
		if getPageInfoAnalyticsContextInfo and assetAnalytics then
			local assetAnalyticsContext = getPageInfoAnalyticsContextInfo()
			assetAnalytics
				:get()
				:logImpression(asset, assetAnalyticsContext, { audioType = audioType, categoryName = category })
		end
	end
end

function AudioWrapper:didMount()
	local props: AudioWrapperProps = self.props
	local assetIdStr = getStartupAssetId()
	local assetId = tonumber(assetIdStr)

	if assetId then
		local onAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked
		props.getAssetPreviewDataForStartup(
			assetId,
			props.TryInsert,
			props.Localization,
			getNetwork(self),
			onAssetPreviewButtonClicked
		)
	end

	if self.sizerRef.current then
		self.onAbsoluteSizeChanged(self.sizerRef.current)
	end
end

function AudioWrapper:render()
	local props: AudioWrapperProps = self.props
	local state: AudioWrapperState = self.state

	local assetSections = props.AssetSections
	local canInsertAsset = props.CanInsertAsset
	local sortName = props.SortName
	local tryInsert = props.TryInsert
	local sectionName = assetSections[#assetSections] and assetSections[#assetSections].name or nil
	local selectedTab = state.selectedTab
	local selectedCategory = state.selectedCategory

	local theme = props.Stylizer

	local tags
	if selectedCategory then
		tags = { selectedCategory.name }
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 0,
		BackgroundColor3 = theme.backgroundColor,
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Ref] = self.sizerRef,
		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChanged,
	}, {
		Results = ResultsFetcher.Generator({
			networkInterface = getNetwork(self),
			categoryName = selectedTab,
			sortName = sortName,
			searchTerm = nil,
			queryParams = if FFlagToolboxUseQueryForCategories2 then {} else nil,
			sectionName = sectionName,
			initialPageSize = 20,
			tags = tags,
			render = function(resultsState)
				return AudioScroller.Generator({
					Assets = resultsState.assets,
					Loading = resultsState.loading,
					Total = resultsState.total,
					FetchNextPage = resultsState.fetchNextPage,
					TryInsert = tryInsert,
					CanInsertAsset = canInsertAsset,
					RenderTopContent = self.renderTopContent,
					AudioType = selectedTab,
					LogImpression = self.logImpression,
					tryOpenAssetConfig = if FFlagToolboxAudioAssetPreview then nil else props.tryOpenAssetConfig,
					TryOpenAssetConfig = if FFlagToolboxAudioAssetPreview then props.TryOpenAssetConfig else nil,
					OnAssetPreviewButtonClicked = if FFlagToolboxAudioAssetPreview
						then props.OnAssetPreviewButtonClicked
						else nil,
				})
			end,
		}),
	})
end

local mapStateToProps = function()
	return {}
end

local mapDispatchToProps = function(dispatch)
	return {
		SearchWithOptions = function(networkInterface, settings, options)
			dispatch(SearchWithOptions(networkInterface, settings, options))
		end,

		getPageInfoAnalyticsContextInfo = function()
			return dispatch(GetPageInfoAnalyticsContextInfo())
		end,

		getAssetPreviewDataForStartup = function(assetId, tryInsert, localization, networkInterface, setAssetPreview)
			dispatch(GetAssetPreviewDataForStartup(assetId, tryInsert, localization, networkInterface, setAssetPreview))
		end,
	}
end

AudioWrapper = withContext({
	AssetAnalytics = AssetAnalyticsContextItem,
	Localization = ContextServices.Localization,
	Settings = Settings,
	Stylizer = ContextServices.Stylizer,
})(AudioWrapper)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AudioWrapper)
