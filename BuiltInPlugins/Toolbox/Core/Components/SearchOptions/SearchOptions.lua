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
local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Packages.Framework)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)
local Images = require(Util.Images)

local getModal = ContextGetter.getModal
local getNetwork = ContextGetter.getNetwork
local withLocalization = ContextHelper.withLocalization
local withModal = ContextHelper.withModal

local createFitToContent = require(Plugin.Core.Components.createFitToContent)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)

local LiveSearchBar = require(Plugin.Core.Components.SearchOptions.LiveSearchBar)
local RadioButtonList = require(Packages.Framework).UI.RadioButtonList

local Checkbox = Framework.UI.Checkbox
local Pane = Framework.UI.Pane
local Image = Framework.UI.Decoration.Image
local ShowOnTop = Framework.UI.ShowOnTop
local ScrollingFrame = Framework.UI.ScrollingFrame
local TextLabel = Framework.UI.Decoration.TextLabel
local Tooltip = Framework.UI.Tooltip

local AudioSearch = require(Plugin.Core.Components.SearchOptions.AudioSearch)
local SearchOptionsEntry = require(Plugin.Core.Components.SearchOptions.SearchOptionsEntry)
local SearchOptionsFooter = require(Plugin.Core.Components.SearchOptions.SearchOptionsFooter)

local getShouldHideNonRelevanceSorts = require(Plugin.Core.Util.ToolboxUtilities).getShouldHideNonRelevanceSorts

local Separator = Framework.UI.Separator

local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)
local UserSearchRequest = require(Plugin.Core.Networking.Requests.UserSearchRequest)
local showRobloxCreatedAssets = require(Plugin.Core.Util.ToolboxUtilities).showRobloxCreatedAssets

local Category = require(Plugin.Core.Types.Category)

local ICON_PADDING = 6
local SEARCH_OPTION_ZINDEX = 10
local VERIFIED_DESCRIPTION_INDENT = 24

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
	local includeOnlyVerifiedCreators
	local includeUnverifiedCreators = self.props.includeUnverifiedCreators

	self.state = {
		minDuration = audioSearchInfo and audioSearchInfo.minDuration or Constants.MIN_AUDIO_SEARCH_DURATION,
		maxDuration = audioSearchInfo and audioSearchInfo.maxDuration or Constants.MAX_AUDIO_SEARCH_DURATION,
		SortIndex = nil,
		includeUnverifiedCreators = includeUnverifiedCreators,
	}

	self.sortsList = {}

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

		options.includeUnverifiedCreators = self.state.includeUnverifiedCreators

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
				includeUnverifiedCreators = not prevState.includeUnverifiedCreators,
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

	local localization = self.props.Localization
	local audioSearchTitle = localization:getText("General", "SearchOptionAudioLength")

	local unverifiedDescription = localization:getText("General", "SearchOptionsIncludeUnverifiedDescription")
	local unverifiedTitle = localization:getText("General", "SearchOptionsIncludeUnverifiedHeader")
	local unverifiedTooltip = localization:getText("General", "SearchOptionsIncludeUnverifiedTooltip")

	local categoryName = self.props.categoryName
	local showAudioSearch = Category.categoryIsAudio(categoryName)

	local showCreatorSearch = true
	if showRobloxCreatedAssets() then
		showCreatorSearch = false
	end

	self.sortsList = {
		{ Key = "Relevance", Text = localizedContent.Sort.Relevance },
		{ Key = "MostTaken", Text = localizedContent.Sort.MostTaken },
		{ Key = "Favorites", Text = localizedContent.Sort.Favorites },
		{ Key = "Updated", Text = localizedContent.Sort.Updated },
		{ Key = "Ratings", Text = localizedContent.Sort.Ratings },
	}
	local sortIndex = self.state.SortIndex or self.props.SortIndex
	local selectedSort = self.sortsList[sortIndex].Key

	local tabHeight = Constants.TAB_WIDGET_HEIGHT

	self:resetLayout()

	local showSortOptions = not getShouldHideNonRelevanceSorts()
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

					AllViews = Roact.createElement(SearchOptionsEntry, {
						Header = localizedContent.SearchOptions.AllViews,
						LayoutOrder = self:nextLayout(),
					}, {
						CheckboxAndDescriptionContainer = Roact.createElement(Pane, {
							AutomaticSize = Enum.AutomaticSize.XY,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							Layout = Enum.FillDirection.Vertical,
							LayoutOrder = self:nextLayout(),
							Spacing = 3,
						}, {
							IncludeUnverifiedToggle = Roact.createElement(Checkbox, {
								Checked = state.includeUnverifiedCreators,
								LayoutOrder = self:nextLayout(),
								OnClick = self.onToggleIdVerified,
								Size = UDim2.new(1, 0, 0, 20),
								Text = unverifiedTitle,
								TextWrapped = true,
							}),

							VerifiedDescriptionContainer = Roact.createElement(Pane, {
								AutomaticSize = Enum.AutomaticSize.XY,
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
								Layout = Enum.FillDirection.Horizontal,
								LayoutOrder = self:nextLayout(),
								Padding = {
									Left = VERIFIED_DESCRIPTION_INDENT,
								},
								Spacing = ICON_PADDING,
								VerticalAlignment = Enum.VerticalAlignment.Top,
							}, {
								Image = Roact.createElement(Image, {
									AnchorPoint = Vector2.new(0, 0.5),
									Image = Images.WARNING_ICON_SMALL,
									ImageColor3 = optionsTheme.warningIconColor,
									LayoutOrder = self:nextLayout(),
									Size = UDim2.fromOffset(16, 16),
								}, {
									Tooltip = Roact.createElement(Tooltip, {
										Text = unverifiedTooltip,
										Priority = SEARCH_OPTION_ZINDEX + 1,
									}),
								}),

								VerifiedDescription = Roact.createElement(TextLabel, {
									AutomaticSize = Enum.AutomaticSize.XY,
									LayoutOrder = self:nextLayout(),
									Style = "SubText",
									Text = unverifiedDescription,
									TextSize = 14,
									TextWrapped = true,
									TextXAlignment = Enum.TextXAlignment.Left,
								}),
							}),
						}),
					}),

					Separator = self:createSeparator(optionsTheme.separator),

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
						RadioButtons = Roact.createElement(RadioButtonList, {
							Buttons = self.sortsList,
							SelectedKey = selectedSort,
							OnClick = self.selectSort,
						}),
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
				ZIndex = SEARCH_OPTION_ZINDEX,
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
		includeUnverifiedCreators = pageInfo.includeUnverifiedCreators,
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
