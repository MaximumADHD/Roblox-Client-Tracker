--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local ResultsFetcher = require(Plugin.Core.Components.ResultsFetcher)
local HomeTypes = require(Plugin.Core.Types.HomeTypes)

local AudioScroller = require(Plugin.Core.Components.AudioHomeView.AudioScroller)
local AudioTabs = require(Plugin.Core.Components.AudioTabs.AudioTabs)
local Category = require(Plugin.Core.Types.Category)
local Constants = require(Plugin.Core.Util.Constants)

local CategoryDropDown = require(Plugin.Core.Components.CategoryDropDown.CategoryDropDown)
local ContextServices = require(Packages.Framework).ContextServices
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local withContext = ContextServices.withContext
local getNetwork = ContextGetter.getNetwork

local AudioWrapper = Roact.PureComponent:extend("AudioWrapper")

type _InteralAudioWrapperProps = {
	Stylizer: any,
}

type AudioWrapperProps = _InteralAudioWrapperProps & {
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
	TryInsert: ((assetData: any, assetWasDragged: boolean, insertionMethod: string) -> any),
	LogPageView: ((searchCategory: string, pathName: string?) -> nil),
}

type AudioWrapperState = {
	selectedTab: string,
	selectedCategory: HomeTypes.Subcategory | nil,
	audioTabSize: UDim2,
}

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

		local topContentHeight = Constants.AUDIO_TABS_HEIGHT
			+ Constants.AUDIO_CATEGORY_HEIGHT
			+ (Constants.AUDIO_PADDING * 2)

		return Roact.createElement("Frame", {
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, topContentHeight),
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
			Roact.createElement(CategoryDropDown, {
				LayoutOrder = 2,
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
				})
			end,
		}),
	})
end

AudioWrapper = withContext({
	Stylizer = ContextServices.Stylizer,
})(AudioWrapper)

return AudioWrapper
