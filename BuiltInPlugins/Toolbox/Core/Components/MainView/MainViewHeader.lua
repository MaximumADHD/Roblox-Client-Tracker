local FFlagToolboxFixUnverifiedSearchTagBugs = game:GetFastFlag("ToolboxFixUnverifiedSearchTagBugs")
local FFlagToolboxAudioSearchOptions2 = game:GetFastFlag("ToolboxAudioSearchOptions2")

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
			includeUnverifiedCreators = false,
		})
	end

	self.onCreatorCleared = function()
		local settings = self.props.Settings:get("Plugin")

		local includeUnverifiedCreators = self.props.includeUnverifiedCreators

		self.props.searchWithOptions(networkInterface, settings, {
			Creator = "",
			AudioSearch = self.props.audioSearchInfo,
			AdditionalAudioSearch = self.props.additionalAudioSearchInfo,
			includeUnverifiedCreators = includeUnverifiedCreators,
		})
	end

	if FFlagToolboxAudioSearchOptions2 then
		self.createOptions = function()
			local creator = self.props.creator
			local includeUnverifiedCreators = self.props.includeUnverifiedCreators

			return {
				Creator = creator and creator.Name or "",
				AudioSearch = self.props.audioSearchInfo,
				AdditionalAudioSearch = self.props.additionalAudioSearchInfo,
				includeUnverifiedCreators = includeUnverifiedCreators,
			}
		end

		self.clearAdditionalAudioSearhByKeys = function(keys)
			local settings = self.props.Settings:get("Plugin")
			local options = self.createOptions()
			for _, key in ipairs(keys) do
				options.AdditionalAudioSearch[key] = nil
			end

			if next(options.AdditionalAudioSearch) == nil then
				options.AdditionalAudioSearch = nil
			end

			self.props.searchWithOptions(networkInterface, settings, options)
		end

		self.onAudioSearchArtistCleared = function()
			self.clearAdditionalAudioSearhByKeys({ Constants.ADDITIONAL_AUDIO_SEARCH_KEYS.ARTIST })
		end

		self.onAudioSearchCategoriesCleared = function()
			self.clearAdditionalAudioSearhByKeys({ Constants.ADDITIONAL_AUDIO_SEARCH_KEYS.CATEGORIES })
		end

		self.onAudioSearchGenreCleared = function()
			self.clearAdditionalAudioSearhByKeys({ Constants.ADDITIONAL_AUDIO_SEARCH_KEYS.GENRE })
		end

		self.onAudioSearchAlbumCleared = function()
			self.clearAdditionalAudioSearhByKeys({ Constants.ADDITIONAL_AUDIO_SEARCH_KEYS.ALBUM })
		end

		self.onAudioSearchCleared = function()
			local settings = self.props.Settings:get("Plugin")
			local options = self.createOptions()

			options.AudioSearch = Cryo.None

			self.props.searchWithOptions(networkInterface, settings, options)
		end
	else
		self.onAudioSearchCleared = function()
			local settings = self.props.Settings:get("Plugin")

			local creator = self.props.creator
			local includeUnverifiedCreators = self.props.includeUnverifiedCreators

			local options = {
				Creator = creator and creator.Name or "",
				AudioSearch = Cryo.None,
				includeUnverifiedCreators = includeUnverifiedCreators,
			}
			self.props.searchWithOptions(networkInterface, settings, options)
		end
	end

	self.onIsVerifiedCleared = function()
		local settings = self.props.Settings:get("Plugin")

		local creator = self.props.creator
		local options = {
			Creator = creator and creator.Name or "",
			AudioSearch = self.props.audioSearchInfo,
			includeUnverifiedCreators = false,
		}
		self.props.searchWithOptions(networkInterface, settings, options)
	end
end

function MainViewHeader:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props

		local searchTerm = props.searchTerm or ""
		local creatorName = props.creatorFilter.Name
		local includeUnverifiedCreators = props.includeUnverifiedCreators

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

			local idVerifiedPrefix = self.props.Localization:getText("General", "SearchTagIdUnverified")

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

			if FFlagToolboxAudioSearchOptions2 then
				local additionalAudioSearchInfo = props.additionalAudioSearchInfo or {}

				if additionalAudioSearchInfo.artist then
					table.insert(tagsList, {
						prefix = self.props.Localization:getText("AudioView", "Artist") .. ":",
						text = additionalAudioSearchInfo.artist,
						onDelete = self.onAudioSearchArtistCleared,
					})
				end

				if additionalAudioSearchInfo.categories then
					local categories = {}
					for _, category in ipairs(additionalAudioSearchInfo.categories) do
						table.insert(
							categories,
							self.props.Localization:getText("Audio.SoundEffect.Category", category)
						)
					end
					table.insert(tagsList, {
						prefix = self.props.Localization:getText("AudioView", "Category") .. ":",
						text = table.concat(categories, " - "),
						onDelete = self.onAudioSearchCategoriesCleared,
					})
				end

				if additionalAudioSearchInfo.genre then
					table.insert(tagsList, {
						prefix = self.props.Localization:getText("General", "Genre") .. ":",
						text = self.props.Localization:getText("Audio.Music.Genre", additionalAudioSearchInfo.genre),
						onDelete = self.onAudioSearchGenreCleared,
					})
				end

				if additionalAudioSearchInfo.album then
					table.insert(tagsList, {
						prefix = self.props.Localization:getText("AudioView", "Album") .. ":",
						text = additionalAudioSearchInfo.album,
						onDelete = self.onAudioSearchAlbumCleared,
					})
				end
			end

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
		additionalAudioSearchInfo = if FFlagToolboxAudioSearchOptions2 then pageInfo.additionalAudioSearchInfo else nil,
		creator = pageInfo.creator,
		categoryName = pageInfo.categoryName or Category.DEFAULT.name,

		searchTerm = pageInfo.searchTerm or "",
		includeUnverifiedCreators = pageInfo.includeUnverifiedCreators,

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
