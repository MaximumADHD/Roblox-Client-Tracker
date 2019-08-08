local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)


local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local withLocalization = ContextHelper.withLocalization


local RequestSearchRequest = require(Plugin.Core.Networking.Requests.RequestSearchRequest)

local MainViewHeader = Roact.PureComponent:extend("MainViewHeader")

local SearchTags = require(Plugin.Core.Components.SearchOptions.SearchTags)

function MainViewHeader:init()
	local networkInterface = getNetwork(self)
	local settings = getSettings(self)

	self.onSearchRequested = function(searchTerm)
		if type(searchTerm) ~= "string" and DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox onSearchRequested searchTerm = %s is not a string"):format(tostring(searchTerm)))
		end

		local creator = self.props.creatorFilter
		local creatorId = creator and creator.Id or nil

		Analytics.onTermSearched(
			PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex),
			searchTerm,
			creatorId
		)

		Analytics.onTermSearched(PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex), searchTerm)

		self.props.requestSearch(networkInterface, settings, searchTerm)
	end

	self.onSuggestionSelected = function(index)
		self.onSearchRequested(self.props.suggestions[index].search)
	end

	self.onTagsCleared = function()
		if self.props.onTagsCleared then
			self.props.onTagsCleared()
		end
	end
end

function MainViewHeader:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props

		local searchTerm = props.searchTerm or ""
		local creatorName = props.creator and props.creator.Name

		local containerWidth = props.containerWidth or 0

		local headerHeight = 0
		local headerChildren = {}

		local showTags = props.showTags

		if showTags then
			headerHeight = headerHeight + Constants.SEARCH_TAGS_HEIGHT

			headerChildren.SearchTags = Roact.createElement(SearchTags, {
				Tags = {creatorName},
				onClearTags = self.onTagsCleared,
				onDeleteTag = self.onTagsCleared,
				searchTerm = searchTerm,
			})
		end

		-- Fake some extra padding if there's no header
		headerHeight = math.max(headerHeight, Constants.MAIN_VIEW_NO_HEADER_HEIGHT)

		return Roact.createElement("Frame", {
			-- Shift the header up a little bit
			Position = UDim2.new(0, 0, 0, -2),
			Size = UDim2.new(0, containerWidth, 0, headerHeight),
			BackgroundTransparency = 1,
			ZIndex = 2,
		}, headerChildren)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		categories = pageInfo.categories or {},
		categoryIndex = pageInfo.categoryIndex or 1,

		searchTerm = pageInfo.searchTerm or "",
		creatorFilter = pageInfo.creator or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		requestSearch = function(networkInterface, settings, searchTerm)
			dispatch(RequestSearchRequest(networkInterface, settings, searchTerm))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainViewHeader)
