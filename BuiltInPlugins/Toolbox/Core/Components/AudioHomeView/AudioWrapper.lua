--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local FFlagToolboxHomeViewAnalyticsUpdate = game:GetFastFlag("ToolboxHomeViewAnalyticsUpdate")
local FFlagToolboxRemoveSFXMonstercatBanner = game:GetFastFlag("ToolboxRemoveSFXMonstercatBanner")
local FFlagToolboxAudioDiscoveryRound2 =
	require(Plugin.Core.Util.Flags.AudioDiscovery).FFlagToolboxAudioDiscoveryRound2()

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
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local withContext = ContextServices.withContext
local getNetwork = ContextGetter.getNetwork

local AudioWrapper = Roact.PureComponent:extend("AudioWrapper")

type _InteralAudioWrapperProps = {
	Localization: any,
	Stylizer: any,
	Settings: any,
	AssetAnalytics: any,
	SearchWithOptions: (
		networkInterface: any,
		settings: any,
		options: { Creator: { Name: string, Id: number } }
	) -> nil,
}

type _ExternalAudioRowProps = {
	AssetSections: { HomeTypes.Subcategory },
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
		navigation: any
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
	tryOpenAssetConfig: AssetLogicWrapper.TryOpenAssetConfigFn,
}

type AudioWrapperProps = _InteralAudioWrapperProps & _ExternalAudioRowProps

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

		local topContentHeight
		if not FFlagToolboxAudioDiscoveryRound2 then
			topContentHeight = Constants.AUDIO_TABS_HEIGHT
				+ Constants.AUDIO_CATEGORY_HEIGHT
				+ (Constants.AUDIO_PADDING * 2)
		end

		local onBannerClick
		local localization
		local settings
		local searchWithOptions
		if FFlagToolboxAudioDiscoveryRound2 then
			localization = props.Localization
			settings = props.Settings:get("Plugin")
			searchWithOptions = props.SearchWithOptions
			local analytics = props.AssetAnalytics:get()
			onBannerClick = function()
				searchWithOptions(getNetwork(self), settings, MONSTER_CAT_CREATOR)
				analytics:onCallToActionBannerClicked(MONSTER_CAT_CREATOR.Creator.Id)
			end
		end

		local isMusic
		if FFlagToolboxRemoveSFXMonstercatBanner then
			isMusic = selectedTab == Category.MUSIC.name
		end

		return Roact.createElement("Frame", {
			LayoutOrder = 1,
			AutomaticSize = if FFlagToolboxAudioDiscoveryRound2 then Enum.AutomaticSize.Y else nil,
			Size = if FFlagToolboxAudioDiscoveryRound2
				then UDim2.new(1, 0, 0, 0)
				else UDim2.new(1, 0, 0, topContentHeight),
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
			CallToActionBanner = if FFlagToolboxAudioDiscoveryRound2
					and (not FFlagToolboxRemoveSFXMonstercatBanner or isMusic)
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
				LayoutOrder = if FFlagToolboxAudioDiscoveryRound2 then 3 else 2,
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

	if FFlagToolboxHomeViewAnalyticsUpdate then
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
end

function AudioWrapper:didMount()
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
					LogImpression = if FFlagToolboxHomeViewAnalyticsUpdate then self.logImpression else nil,
					tryOpenAssetConfig = if FFlagToolboxAudioDiscoveryRound2 then props.tryOpenAssetConfig else nil,
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
		getPageInfoAnalyticsContextInfo = if FFlagToolboxHomeViewAnalyticsUpdate
			then function()
				return dispatch(GetPageInfoAnalyticsContextInfo())
			end
			else nil,
	}
end

AudioWrapper = withContext({
	AssetAnalytics = if FFlagToolboxAudioDiscoveryRound2 then AssetAnalyticsContextItem else nil,
	Localization = ContextServices.Localization,
	Settings = if FFlagToolboxAudioDiscoveryRound2 then Settings else nil,
	Stylizer = ContextServices.Stylizer,
})(AudioWrapper)

if FFlagToolboxAudioDiscoveryRound2 then
	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AudioWrapper)
else
	return AudioWrapper
end
