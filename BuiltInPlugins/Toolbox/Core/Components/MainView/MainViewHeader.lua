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

local Sort = require(Plugin.Core.Types.Sort)

local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local withLocalization = ContextHelper.withLocalization

local SortComponent = require(Plugin.Core.Components.SortComponent)

local RequestSearchRequest = require(Plugin.Core.Networking.Requests.RequestSearchRequest)
local SelectSortRequest = require(Plugin.Core.Networking.Requests.SelectSortRequest)

local MainViewHeader = Roact.PureComponent:extend("MainViewHeader")

function MainViewHeader:init()
	local networkInterface = getNetwork(self)
	local settings = getSettings(self)

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
		self.onSearchRequested(self.props.suggestions[index].search)
	end
end

function MainViewHeader:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props

		local categoryIndex = props.categoryIndex or 0

		local searchTerm = props.searchTerm or ""

		local sorts = localization:getLocalizedSorts(props.sorts) or {}
		local sortIndex = props.sortIndex or 0

		local onSortSelected = self.onSortSelected

		local containerWidth = props.containerWidth or 0

		local headerHeight = 0
		local headerChildren = {}

		local showSort = Sort.canSort(searchTerm, categoryIndex)

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
