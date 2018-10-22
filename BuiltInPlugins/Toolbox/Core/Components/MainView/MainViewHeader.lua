local Plugin = script.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local Constants = require(Plugin.Core.Util.Constants)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Layouter = require(Plugin.Core.Util.Layouter)
local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)

local Category = require(Plugin.Core.Types.Category)

local getNetwork = require(Plugin.Core.Consumers.getNetwork)
local getSettings = require(Plugin.Core.Consumers.getSettings)

local SortComponent = require(Plugin.Core.Components.SortComponent)
local Suggestions = require(Plugin.Core.Components.Suggestions.Suggestions)

local RequestSearchRequest = require(Plugin.Core.Networking.Requests.RequestSearchRequest)
local SelectSortRequest = require(Plugin.Core.Networking.Requests.SelectSortRequest)

local MainViewHeader = Roact.PureComponent:extend("MainViewHeader")

function MainViewHeader:init()
	local networkInterface = getNetwork(self)
	local settings = getSettings(self)

	-- TODO CLIDEVSRVS-1688: This was copied from Header.lua. Move this to a separate file?
	self.onSearchRequested = function(searchTerm)
		if type(searchTerm) ~= "string" and DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox onSearchRequested searchTerm = %s is not a string"):format(tostring(searchTerm)))
		end

		Analytics.onTermSearched(PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex), searchTerm)

		self.props.requestSearch(networkInterface, settings, searchTerm)
	end

	self.onSortSelected = function(index)
		if self.props.sortIndex ~= index then
			self.props.selectSort(networkInterface, settings, index)
		end
	end

	self.onSuggestionSelected = function(index)
		self.onSearchRequested(self.props.suggestions[index])
	end
end

function MainViewHeader:render()
	local props = self.props

	local categoryIndex = props.categoryIndex or 0

	local searchTerm = props.searchTerm or ""

	local sorts = props.sorts or {}
	local sortIndex = props.sortIndex or 0

	local suggestions = props.suggestions or {}

	local onSortSelected = self.onSortSelected
	local onSuggestionSelected = self.onSuggestionSelected

	local containerWidth = props.containerWidth or 0

	local headerHeight = 0
	local headerChildren = {}

	local showSort = #searchTerm > 0
	local showSuggestions = searchTerm == ""

	-- Only the free assets have sort and suggestions
	if not Category.categoryIsFreeAsset(categoryIndex) then
		showSort = false
		showSuggestions = false
	end

	if showSort then
		local top = headerHeight
		local height = Constants.SORT_COMPONENT_HEIGHT
		headerHeight = headerHeight + height

		headerChildren.SortComponent = Roact.createElement(SortComponent, {
			Position = UDim2.new(0, 0, 0, top),
			Size = UDim2.new(1, 0, 0, height),
			ZIndex = 2,

			sorts = sorts,
			sortIndex = sortIndex,
			onSortSelected = onSortSelected,
		})
	end

	if showSuggestions then
		local padding = showSort and Constants.MAIN_VIEW_VERTICAL_PADDING or 0
		local top = headerHeight + padding
		local height = Layouter.calculateSuggestionsHeight(Constants.SUGGESTIONS_INTRO_TEXT, suggestions, containerWidth)
		headerHeight = headerHeight + padding + height

		headerChildren.Suggestions = Roact.createElement(Suggestions, {
			Position = UDim2.new(0, 0, 0, top),
			Size = UDim2.new(1, 0, 0, height),
			maxWidth = containerWidth,
			ZIndex = 1,

			initialText = Constants.SUGGESTIONS_INTRO_TEXT,
			suggestions = suggestions,
			onSuggestionSelected = onSuggestionSelected,
		})
	end

	-- Fake some extra padding if there's no header
	headerHeight = math.max(headerHeight, Constants.MIN_WIDTH_EXTRA_PADDING)

	return Roact.createElement("Frame", {
		-- Shift the header up a little bit
		Position = UDim2.new(0, 0, 0, -2),
		Size = UDim2.new(0, containerWidth, 0, headerHeight),
		BackgroundTransparency = 1,
		ZIndex = 2,
	}, headerChildren)
end

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		categories = pageInfo.categories or {},
		categoryIndex = pageInfo.categoryIndex or 1,

		searchTerm = pageInfo.searchTerm or "",

		sorts = pageInfo.sorts or {},
		sortIndex = pageInfo.sortIndex or 1,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		selectSort = function(networkInterface, settings, sortIndex)
			dispatch(SelectSortRequest(networkInterface, settings, sortIndex))
		end,

		requestSearch = function(networkInterface, settings, searchTerm)
			dispatch(RequestSearchRequest(networkInterface, settings, searchTerm))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewHeader)
