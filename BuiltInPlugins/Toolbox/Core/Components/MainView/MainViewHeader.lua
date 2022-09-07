local FFlagToolboxUseVerifiedIdAsDefault = game:GetFastFlag("ToolboxUseVerifiedIdAsDefault2")
local FFlagToolboxFixUnverifiedSearchTagBugs = game:GetFastFlag("ToolboxFixUnverifiedSearchTagBugs")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local getTimeString = require(Plugin.Core.Util.getTimeString)
local Settings = require(Plugin.Core.ContextServices.Settings)
local Category = require(Plugin.Core.Types.Category)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local Cryo = require(Packages.Cryo)

local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local withLocalization = ContextHelper.withLocalization

local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)

local MainViewHeader = Roact.PureComponent:extend("MainViewHeader")

local SearchTags = require(Plugin.Core.Components.SearchOptions.SearchTags)

function MainViewHeader:init()
	local networkInterface = getNetwork(self)

	self.onTagsCleared = function()
		local settings = self.props.Settings:get("Plugin")

		self.props.searchWithOptions(networkInterface, settings, {
			Creator = "",
			AudioSearch = Cryo.None,
			includeOnlyVerifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then nil else false,
			includeUnverifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then false else nil,
		})
	end

	self.onCreatorCleared = function()
		local settings = self.props.Settings:get("Plugin")

		local includeOnlyVerifiedCreators
		local includeUnverifiedCreators
		if FFlagToolboxUseVerifiedIdAsDefault then
			includeUnverifiedCreators = self.props.includeUnverifiedCreators
		else
			includeOnlyVerifiedCreators = self.props.includeOnlyVerifiedCreators
		end
		self.props.searchWithOptions(networkInterface, settings, {
			Creator = "",
			AudioSearch = self.props.audioSearchInfo,
			includeOnlyVerifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then nil else includeOnlyVerifiedCreators,
			includeUnverifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then includeUnverifiedCreators else nil,
		})
	end

	self.onAudioSearchCleared = function()
		local settings = self.props.Settings:get("Plugin")

		local creator = self.props.creator
		local includeOnlyVerifiedCreators
		local includeUnverifiedCreators
		if FFlagToolboxUseVerifiedIdAsDefault then
			includeUnverifiedCreators = self.props.includeUnverifiedCreators
		else
			includeOnlyVerifiedCreators = self.props.includeOnlyVerifiedCreators
		end
		local options = {
			Creator = creator and creator.Name or "",
			AudioSearch = Cryo.None,
			includeOnlyVerifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then nil else includeOnlyVerifiedCreators,
			includeUnverifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then includeUnverifiedCreators else nil,
		}
		self.props.searchWithOptions(networkInterface, settings, options)
	end

	self.onIsVerifiedCleared = function()
		local settings = self.props.Settings:get("Plugin")

		local creator = self.props.creator
		local options = {
			Creator = creator and creator.Name or "",
			AudioSearch = self.props.audioSearchInfo,
			includeOnlyVerifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then nil else false,
			includeUnverifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then false else nil,
		}
		self.props.searchWithOptions(networkInterface, settings, options)
	end
end

function MainViewHeader:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props

		local searchTerm = props.searchTerm or ""
		local creatorName = props.creatorFilter.Name
		local includeOnlyVerifiedCreators
		local includeUnverifiedCreators
		if FFlagToolboxUseVerifiedIdAsDefault then
			includeUnverifiedCreators = props.includeUnverifiedCreators
		else
			includeOnlyVerifiedCreators = props.includeOnlyVerifiedCreators
		end

		local audioTime
		local audioSearchInfo = props.audioSearchInfo
		if audioSearchInfo and audioSearchInfo.maxDuration and audioSearchInfo.minDuration then
			audioTime = (
					getTimeString(audioSearchInfo.minDuration, nil)
					.. " - "
					.. getTimeString(audioSearchInfo.maxDuration, nil)
				)
		end

		local containerWidth = props.containerWidth or 0

		local headerHeight = 0
		local headerChildren = {}

		local showTags = props.showTags

		if showTags then
			headerHeight = headerHeight + Constants.SEARCH_TAGS_HEIGHT

			local byPrefix = self.props.Localization:getText("General", "SearchTagCreator")
			local lengthPrefix = self.props.Localization:getText("General", "SearchTagLength")

			-- TODO: Remove SearchTagIdVerified from SourceStrings with FFlagToolboxUseVerifiedIdAsDefault
			local idVerifiedPrefix = if FFlagToolboxUseVerifiedIdAsDefault
				then self.props.Localization:getText("General", "SearchTagIdUnverified")
				else self.props.Localization:getText("General", "SearchTagIdVerified")

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

			if FFlagToolboxUseVerifiedIdAsDefault then
				local canInsertUnverifiedTag = if FFlagToolboxFixUnverifiedSearchTagBugs
					then includeUnverifiedCreators or creatorName or audioTime
					else includeUnverifiedCreators and (creatorName or audioTime)
	
				if canInsertUnverifiedTag then
					table.insert(tagsList, {
						prefix = idVerifiedPrefix,
						text = "",
						onDelete = self.onIsVerifiedCleared,
					})
				end
			else
				local canInsertUnverifiedTag = if FFlagToolboxFixUnverifiedSearchTagBugs
					then includeOnlyVerifiedCreators or creatorName or audioTime
					else includeOnlyVerifiedCreators and (creatorName or audioTime)
	
				if canInsertUnverifiedTag then
					table.insert(tagsList, {
						prefix = idVerifiedPrefix,
						text = "",
						onDelete = self.onIsVerifiedCleared,
					})
				end
			end
			headerChildren.SearchTags = Roact.createElement(SearchTags, {
				Tags = tagsList,
				onClearTags = self.onTagsCleared,
				searchTerm = searchTerm,
				categoryName = props.categoryName,
				onBackToHome = props.onBackToHome,
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

MainViewHeader = withContext({
	Localization = ContextServices.Localization,
	Settings = Settings,
})(MainViewHeader)

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		audioSearchInfo = pageInfo.audioSearchInfo,
		creator = pageInfo.creator,
		categoryName = pageInfo.categoryName or Category.DEFAULT.name,

		searchTerm = pageInfo.searchTerm or "",		
		includeOnlyVerifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then nil else pageInfo.includeOnlyVerifiedCreators,
		includeUnverifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault then pageInfo.includeUnverifiedCreators else nil,
	
		creatorFilter = pageInfo.creator or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		searchWithOptions = function(networkInterface, settings, options)
			dispatch(SearchWithOptions(networkInterface, settings, options))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainViewHeader)
