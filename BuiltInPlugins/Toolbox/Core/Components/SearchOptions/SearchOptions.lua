--[[
	A toggleable drawer which is used to set search options like creator and sort order.

	Props:
		table LiveSearchData = A table of live search data received from the live
			search request. Should contain a results table and searchTerm string.
		int SortIndex = The currently set sort type index in the current pageInfo.

		function updateSearch(string searchTerm) = A callback when the live search
			for Creator should be updated.
		function onClose(table options) = A callback for when the drawer is closed.
			If cancelled, options will be nil. Else, it will contain the new options
			that were set by the user.
]]
local FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton = game:GetFastFlag(
	"ToolboxUseDevFrameworkLoadingBarAndRadioButton"
)

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Packages.Framework)

local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local getModal = ContextGetter.getModal
local getNetwork = ContextGetter.getNetwork
local withLocalization = ContextHelper.withLocalization
local withModal = ContextHelper.withModal

local createFitToContent = require(Plugin.Core.Components.createFitToContent)

local Constants = require(Plugin.Core.Util.Constants)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)

local LiveSearchBar = require(Plugin.Core.Components.SearchOptions.LiveSearchBar)
local RadioButtons
local RadioButtonList
if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
	RadioButtonList = require(Packages.Framework).UI.RadioButtonList
else
	RadioButtons = require(Plugin.Core.Components.SearchOptions.RadioButtons)
end
local ShowOnTop = Framework.UI.ShowOnTop
local ScrollingFrame = Framework.UI.ScrollingFrame
local TextLabel = Framework.UI.Decoration.TextLabel
local Checkbox = Framework.UI.Checkbox

local AudioSearch = require(Plugin.Core.Components.SearchOptions.AudioSearch)
local SearchOptionsEntry = require(Plugin.Core.Components.SearchOptions.SearchOptionsEntry)
local SearchOptionsFooter = require(Plugin.Core.Components.SearchOptions.SearchOptionsFooter)

local getShouldHideNonRelevanceSorts = require(Plugin.Core.Util.ToolboxUtilities).getShouldHideNonRelevanceSorts

local Separator = Framework.UI.Separator

local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)
local UserSearchRequest = require(Plugin.Core.Networking.Requests.UserSearchRequest)
local showRobloxCreatedAssets = require(Plugin.Core.Util.ToolboxUtilities).showRobloxCreatedAssets

local Category = require(Plugin.Core.Types.Category)

local SearchOptions = Roact.PureComponent:extend("SearchOptions")

SearchOptions.defaultProps = {
	showCreatorSearch = true,
}

function SearchOptions:init(initialProps)
	self.layoutRef = Roact.createRef()
	self.containerRef = Roact.createRef()
	self.buttonsContainerRef = Roact.createRef()
	self.currentLayout = 0
	self.searchTerm = initialProps.LiveSearchData.searchTerm
	self.extraSearchDetails = {}

	local audioSearchInfo = self.props.audioSearchInfo
	local includeOnlyVerifiedCreators = self.props.includeOnlyVerifiedCreators
	self.state = {
		minDuration = audioSearchInfo and audioSearchInfo.minDuration or Constants.MIN_AUDIO_SEARCH_DURATION,
		maxDuration = audioSearchInfo and audioSearchInfo.maxDuration or Constants.MAX_AUDIO_SEARCH_DURATION,
		SortIndex = nil,
		includeOnlyVerifiedCreators = includeOnlyVerifiedCreators,
	}

	if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
		self.sortsList = {}
	end

	local modal = getModal(self)
	self.mouseEnter = function()
		modal.onSearchOptionsMouse(true)
	end

	self.mouseLeave = function()
		modal.onSearchOptionsMouse(false)
	end

	self.updateSearch = function(searchTerm, extraDetails)
		self.searchTerm = searchTerm
		self.extraSearchDetails = extraDetails

		
		if not self.props.isSearching then
			local networkInterface = getNetwork(self)
			self.props.userSearch(networkInterface, searchTerm, extraDetails)
		end
	end

	if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
		self.selectSort = function(key)
			local sortIndex
			for i, value in pairs(self.sortsList) do
				if value.Key == key then
					sortIndex = i
				end
			end
			self:setState({
				SortIndex = sortIndex,
			})
		end
	else
		self.selectSort = function(_, index)
			self:setState({
				SortIndex = index,
			})
		end
	end

	self.apply = function(options)
		self.onSearchOptionsClosed(options)
	end

	self.cancel = function()
		self.onSearchOptionsClosed(nil)
	end

	self.footerButtonClicked = function(button)
		local options = {
			SortIndex = self.state.SortIndex,
			Creator = self.searchTerm,
		}

		if
			self.state.minDuration ~= Constants.MIN_AUDIO_SEARCH_DURATION
			or self.state.maxDuration ~= Constants.MAX_AUDIO_SEARCH_DURATION
		then
			options.AudioSearch = {
				minDuration = self.state.minDuration,
				maxDuration = self.state.maxDuration,
			}
		end

		if self.extraSearchDetails and next(self.extraSearchDetails) ~= nil then
			options.Creator = {
				Name = self.extraSearchDetails.Name,
				Id = self.extraSearchDetails.Id,
			}
		end

		options.includeOnlyVerifiedCreators = self.state.includeOnlyVerifiedCreators

		self:setState({
			SortIndex = Roact.None,
			Creator = Roact.None,
		})

		if button == "Cancel" then
			self.cancel()
		elseif button == "Apply" then
			self.apply(options)
		end
	end

	self.onDurationChange = function(min, max)
		if min ~= self.state.minDuration or max ~= self.state.maxDuration then
			self:setState({
				minDuration = min,
				maxDuration = max,
			})
		end
	end

	self.onToggleIdVerified = function()
		self:setState(function(prevState)
			return {
				includeOnlyVerifiedCreators = not prevState.includeOnlyVerifiedCreators,
			}
		end)
	end

	self.updateContainerSize = function(rbx)
		self:setState({
			windowSize = rbx.AbsoluteSize,
		})
	end
	self.updateContentsSize = function(absSize)
		spawn(function()
			self:setState({
				contentSize = absSize,
			})
		end)
	end

	self.onSearchOptionsClosed = function(options)
		if options then
			local networkInterface = getNetwork(self)
			local settings = self.props.Settings:get("Plugin")
			self.props.searchWithOptions(networkInterface, settings, options)
		end
		if self.props.onSearchOptionsToggled then
			self.props.onSearchOptionsToggled()
		end
	end
end

function SearchOptions:createSeparator(color)
	return Roact.createElement(Separator, {
		LayoutOrder = self:nextLayout(),
	})
end

function SearchOptions:resetLayout()
	self.currentLayout = 0
end

function SearchOptions:nextLayout()
	self.currentLayout = self.currentLayout + 1
	return self.currentLayout
end

function SearchOptions:render()
	return withLocalization(function(_, localizedContent)
		return self:renderContent(nil, localizedContent)
	end)
end

function SearchOptions:renderContent(theme, localizedContent, modalTarget)
	local state = self.state
	theme = self.props.Stylizer

	local optionsTheme = theme.searchOptions
	local liveSearchData = self.props.LiveSearchData
	local minDuration = state.minDuration
	local maxDuration = state.maxDuration

	local audioSearchTitle = self.props.Localization:getText("General", "SearchOptionAudioLength")

	local categoryName = self.props.categoryName
	local showAudioSearch = Category.categoryIsAudio(categoryName)

	local showCreatorSearch = true
	if showRobloxCreatedAssets() then
		showCreatorSearch = false
	end

	local sorts
	if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
		self.sortsList = {
			{ Key = "Relevance", Text = localizedContent.Sort.Relevance },
			{ Key = "MostTaken", Text = localizedContent.Sort.MostTaken },
			{ Key = "Favorites", Text = localizedContent.Sort.Favorites },
			{ Key = "Updated", Text = localizedContent.Sort.Updated },
			{ Key = "Ratings", Text = localizedContent.Sort.Ratings },
		}
	else
		sorts = {
			{ Key = "Relevance", Text = localizedContent.Sort.Relevance },
			{ Key = "MostTaken", Text = localizedContent.Sort.MostTaken },
			{ Key = "Favorites", Text = localizedContent.Sort.Favorites },
			{ Key = "Updated", Text = localizedContent.Sort.Updated },
			{ Key = "Ratings", Text = localizedContent.Sort.Ratings },
		}
	end
	local sortIndex = self.state.SortIndex or self.props.SortIndex
	local selectedSort = FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton and self.sortsList[sortIndex].Key
		or sorts[sortIndex].Key

	local tabHeight = Constants.TAB_WIDGET_HEIGHT

	self:resetLayout()

	local showSortOptions = not getShouldHideNonRelevanceSorts()
	local showIdVerified = true
	local showSeparator1 = showCreatorSearch and not showAudioSearch

	local scrollbarThickness = 8
	local bottomButtonHeight = 42
	local backgroundButtonHeight = 40
	local headerHeight = tabHeight + Constants.HEADER_HEIGHT
	local edgeMargin = 4

	local layoutSize
	if self.state.contentSize then
		layoutSize = UDim2.new(0, self.state.contentSize.X, 0, self.state.contentSize.Y)
	else
		layoutSize = UDim2.new(0, 0, 0, 0)
	end

	local showFade = true
	local containerSize = UDim2.new(1, 0, 1, 0)
	if self.containerRef.current then
		local windowHeight = self.containerRef.current.AbsoluteSize.Y - (headerHeight + backgroundButtonHeight)
		local cutoffHeight = layoutSize.Y.Offset + bottomButtonHeight
		if windowHeight > cutoffHeight then
			containerSize = UDim2.new(1, 0, 0, cutoffHeight)
			showFade = false
		end
	end

	local searchOptions = {
		Main = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, -edgeMargin, 0, headerHeight + edgeMargin),
			Size = UDim2.new(
				0,
				Constants.TOOLBOX_MIN_WIDTH,
				1,
				-(headerHeight + (2 * edgeMargin) + bottomButtonHeight)
			),
			[Roact.Ref] = self.containerRef,
			[Roact.Change.AbsoluteSize] = self.updateContainerSize,
		}, {
			Contents = Roact.createElement("Frame", {
				BackgroundColor3 = optionsTheme.background,
				BorderColor3 = optionsTheme.border,
				BackgroundTransparency = 0,
				Size = containerSize,
				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
			}, {
				Container = Roact.createElement(ScrollingFrame, {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, -bottomButtonHeight),
					OnCanvasResize = self.updateContentsSize,
					Layout = Enum.FillDirection.Vertical,
					AutoSizeCanvas = true,
					AutoSizeLayoutOptions = {
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 10),
					},
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 10),
						PaddingRight = UDim.new(0, 10),
						PaddingTop = UDim.new(0, 10),
						PaddingBottom = UDim.new(0, 10),
					}),

					AllViewsLabel = showIdVerified and Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						LayoutOrder = self:nextLayout(),
						Text = localizedContent.SearchOptions.AllViews,
					}),

					IdVerifiedToggle = showIdVerified and Roact.createElement(Checkbox, {
						LayoutOrder = self:nextLayout(),
						Text = localizedContent.SearchBarIdVerified,
						OnClick = self.onToggleIdVerified,
						Size = UDim2.new(1, 0, 0, 20),
						Checked = state.includeOnlyVerifiedCreators,
					}),

					Separator = showIdVerified and self:createSeparator(optionsTheme.separator),

					Creator = showCreatorSearch and Roact.createElement(SearchOptionsEntry, {
						LayoutOrder = self:nextLayout(),
						Header = localizedContent.SearchOptions.Creator,
					}, {
						SearchBar = Roact.createElement(LiveSearchBar, {
							defaultTextKey = "SearchBarCreatorText",
							searchTerm = liveSearchData.searchTerm,
							results = liveSearchData.results,
							updateSearch = self.updateSearch,
							width = Constants.SEARCH_BAR_WIDTH,
						}),
					}),

					Separator1 = showSeparator1 and self:createSeparator(optionsTheme.separator),

					AudioSearchHeader = showAudioSearch and Roact.createElement(SearchOptionsEntry, {
						LayoutOrder = self:nextLayout(),
						Header = audioSearchTitle,
					}, {
						AudioSearch = Roact.createElement(AudioSearch, {
							minDuration = minDuration,
							maxDuration = maxDuration,
							onDurationChange = self.onDurationChange,
						}),
					}),

					Separator2 = showAudioSearch and self:createSeparator(optionsTheme.separator),

					SortBy = showSortOptions and Roact.createElement(SearchOptionsEntry, {
						LayoutOrder = self:nextLayout(),
						Header = localizedContent.SearchOptions.Sort,
					}, {
						RadioButtons = Roact.createElement(
							FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton and RadioButtonList or RadioButtons,
							FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton
									and {
										Buttons = self.sortsList,
										SelectedKey = selectedSort,
										OnClick = self.selectSort,
									}
								or {
									Buttons = sorts,
									Selected = selectedSort,
									onButtonClicked = self.selectSort,
								}
						),
					}),

					ViewPadding = showSortOptions and Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 10),
						LayoutOrder = self:nextLayout(),
					}),
				}),

				BottomButtonsContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, bottomButtonHeight),
					Position = UDim2.new(0, 0, 1, -bottomButtonHeight),
					ZIndex = 3,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 10),
						PaddingRight = UDim.new(0, 10),
					}),
					GradientOverlay = showFade and Roact.createElement("Frame", {
						LayoutOrder = self:nextLayout(),
						Size = UDim2.new(1, -scrollbarThickness, 0, 20),
						Position = UDim2.new(0, 0, 0, -20),
						BackgroundColor3 = Color3.new(1, 1, 1),
						BorderColor3 = Color3.new(1, 1, 1),
					}, {
						Gradient = Roact.createElement("UIGradient", {
							Color = ColorSequence.new(optionsTheme.background),
							Rotation = 90,
							Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0.0, 1.0),
								NumberSequenceKeypoint.new(1.0, 0.25),
							}),
						}),
					}),
					Separator = Roact.createElement(Separator, {
						Position = UDim2.new(0.5, 0, 0, 0),
						ZIndex = 2,
					}),
					Footer = Roact.createElement(SearchOptionsFooter, {
						AnchorPoint = Vector2.new(0, 1),
						Position = UDim2.new(0, 0, 1, -8),
						onButtonClicked = self.footerButtonClicked,
					}),
				}),
			}),
		}),
	}

	local elem = ShowOnTop
	local elemProps = {
		Priority = 2,
	}

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
	}, {
		Portal = Roact.createElement(elem, elemProps, {
			ClickEventDetectFrame = Roact.createElement("ImageButton", {
				ZIndex = 10,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				AutoButtonColor = false,
				[Roact.Ref] = self.containerRef,
				[Roact.Event.Activated] = self.cancel,
			}, searchOptions),
		}),
	})
end

SearchOptions = withContext({
	Localization = ContextServices.Localization,
	Settings = Settings,
	Stylizer = ContextServices.Stylizer,
})(SearchOptions)

local function mapStateToProps(state, props)
	state = state or {}
	local pageInfo = state.pageInfo or {}

	local liveSearchData
	if state.liveSearch then
		liveSearchData = {
			searchTerm = state.liveSearch.searchTerm,
			isSearching = state.liveSearch.isSearching,
			results = state.liveSearch.results,
		}
	end

	return {
		audioSearchInfo = pageInfo.audioSearchInfo,
		includeOnlyVerifiedCreators = pageInfo.includeOnlyVerifiedCreators,
		categoryName = pageInfo.categoryName or Category.DEFAULT.name,
		LiveSearchData = liveSearchData,
		SortIndex = pageInfo.sortIndex or 1,
	}
end

local mapDispatchToProps = function(dispatch)
	return {
		-- User search (searching as the user types in the search bar)
		userSearch = function(networkInterface, searchTerm)
			dispatch(UserSearchRequest(networkInterface, searchTerm))
		end,
	
		searchWithOptions = function(networkInterface, settings, options)
			dispatch(SearchWithOptions(networkInterface, settings, options))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SearchOptions)
