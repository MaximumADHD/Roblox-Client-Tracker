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
local getTimeString = require(Plugin.Core.Util.getTimeString)
local Settings = require(Plugin.Core.ContextServices.Settings)

local ContextServices = require(Libs.Framework.ContextServices)
local Cryo = require(Libs.Cryo)

local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local withLocalization = ContextHelper.withLocalization

local FFlagStudioToolboxEnabledDevFramework = game:GetFastFlag("StudioToolboxEnabledDevFramework")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

local RequestSearchRequest = require(Plugin.Core.Networking.Requests.RequestSearchRequest)
local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)

local MainViewHeader = Roact.PureComponent:extend("MainViewHeader")

local SearchTags = require(Plugin.Core.Components.SearchOptions.SearchTags)

function MainViewHeader:init()
	local networkInterface = getNetwork(self)

	if not FFlagStudioToolboxEnabledDevFramework then -- Everything in this block of code isn't being used...
		local settings = getSettings(self)

		self.onSearchRequested = function(searchTerm)
			if type(searchTerm) ~= "string" and DebugFlags.shouldDebugWarnings() then
				warn(("Toolbox onSearchRequested searchTerm = %s is not a string"):format(tostring(searchTerm)))
			end

			local creator = self.props.creatorFilter
			local creatorId = creator and creator.Id or nil

			local category
			if FFlagUseCategoryNameInToolbox then
				category = PageInfoHelper.getCategory(self.props.categoryName)
			else
				category = PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex)
			end

			Analytics.onTermSearched(
				category,
				searchTerm,
				creatorId
			)

			Analytics.onTermSearched(category, searchTerm)

			self.props.requestSearch(networkInterface, settings, searchTerm)
		end

		self.onSuggestionSelected = function(index)
			self.onSearchRequested(self.props.suggestions[index].search)
		end
	end

	self.onTagsCleared = function()
		local settings
		if FFlagStudioToolboxEnabledDevFramework then
			settings = self.props.Settings:get("Plugin")
		else
			settings = getSettings(self)
		end

		self.props.searchWithOptions(networkInterface, settings, {
			Creator = "",
			AudioSearch = Cryo.None,
		})
	end

	self.onCreatorCleared = function()
		local settings
		if FFlagStudioToolboxEnabledDevFramework then
			settings = self.props.Settings:get("Plugin")
		else
			settings = getSettings(self)
		end

		self.props.searchWithOptions(networkInterface, settings, {
			Creator = "",
			AudioSearch = self.props.audioSearchInfo,
		})
	end

	self.onAudioSearchCleared = function()
		local settings
		if FFlagStudioToolboxEnabledDevFramework then
			settings = self.props.Settings:get("Plugin")
		else
			settings = getSettings(self)
		end

		local creator = self.props.creator
		local options = {
			Creator = creator and creator.Name or "",
			AudioSearch = Cryo.None,
		}
		self.props.searchWithOptions(networkInterface, settings, options)
	end
end

function MainViewHeader:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props

		local searchTerm = props.searchTerm or ""
		local creatorName = props.creatorFilter.Name

		local audioTime
		local audioSearchInfo = props.audioSearchInfo
		if audioSearchInfo and audioSearchInfo.maxDuration and audioSearchInfo.minDuration then
			audioTime = (getTimeString(audioSearchInfo.minDuration, nil) .. " - " .. getTimeString(audioSearchInfo.maxDuration, nil))
		end

		local containerWidth = props.containerWidth or 0

		local headerHeight = 0
		local headerChildren = {}

		local showTags = props.showTags

		if showTags then
			headerHeight = headerHeight + Constants.SEARCH_TAGS_HEIGHT

			local byPrefix
			local lengthPrefix
			if FFlagStudioToolboxEnabledDevFramework then
				byPrefix = self.props.Localization:getText("General", "SearchTagCreator")
				lengthPrefix = self.props.Localization:getText("General", "SearchTagLength")
			else
				byPrefix = localizedContent.SearchTags.Creator
				lengthPrefix = localizedContent.SearchTags.Length
			end

			local tagsList = {}
			if creatorName then
				table.insert(tagsList, {
					prefix = byPrefix,
					text = creatorName,
					onDelete = self.onCreatorCleared,
				})
			end
			if audioTime then
				table.insert(tagsList, {
					prefix = lengthPrefix,
					text = audioTime,
					onDelete = self.onAudioSearchCleared,
				})
			end
			headerChildren.SearchTags = Roact.createElement(SearchTags, {
				Tags = tagsList,
				onClearTags = self.onTagsCleared,
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

if FFlagStudioToolboxEnabledDevFramework then
	ContextServices.mapToProps(MainViewHeader, {
		Localization = ContextServices.Localization,
		Settings = Settings,
	})
end

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		audioSearchInfo = pageInfo.audioSearchInfo,
		creator = pageInfo.creator,
		categories = pageInfo.categories or {},
		categoryIndex = (not FFlagUseCategoryNameInToolbox) and (pageInfo.categoryIndex or 1),
		categoryName = pageInfo.categoryName,

		searchTerm = pageInfo.searchTerm or "",
		creatorFilter = pageInfo.creator or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		requestSearch = function(networkInterface, settings, searchTerm)
			dispatch(RequestSearchRequest(networkInterface, settings, searchTerm))
		end,

		searchWithOptions = function(networkInterface, settings, options)
			dispatch(SearchWithOptions(networkInterface, settings, options))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainViewHeader)
