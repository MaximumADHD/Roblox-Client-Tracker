--[[
	This script contains all the strings that needs to be localized in the toolbox.

	Source is from ToolboxTranslationReferenceTable. And it's imported from a CSV table.

	Here is the steps to update the localizationTable:
	1. Edit and download CSV source from here:
	https://docs.google.com/spreadsheets/d/1Xq7Tjh45r7Nq0n7SsneVJIbhdRzzCN__fXEXCk1nI_E/edit?usp=sharing

	2. In your target studio, build the Toolbox with robin or using rojo 0.5.0 to build the plugin,
	localization will be automatic included in the Toolbox.
	Here is the current path for LocalizationTable: Toolbox/LocalizationTable
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)

local createSignal = require(Plugin.Core.Util.createSignal)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)
local Constants = require(Plugin.Core.Util.Constants)
local Localization = {}
Localization.__index = Localization

--[[
	options:
		getLocaleId : function void -> LocaleId
		getTranslator : function LocaleId -> Translator
		localeIdChanged : RbxScriptSignal
]]
function Localization.new(options)
	local self = {
		_externalLocaleIdGetter = options.getLocaleId or nil,
		_externalTranslatorGetter = options.getTranslator or nil,
		_externalLocaleIdChangedSignal = options.localeIdChanged,

		_externalLocaleIdChangedConnection = nil,

		_content = {},

		_signal = createSignal(),
	}

	self._content = wrapStrictTable(self._content, "content")

	setmetatable(self, Localization)

	if self._externalLocaleIdChangedSignal then
		self._externalLocaleIdChangedConnection = self._externalLocaleIdChangedSignal:Connect(function()
			self:_recalculateContent()
		end)
	end
	self:_recalculateContent()

	return self
end

function Localization.createDummyLocalization()
	return Localization.new({
		getLocaleId = function()
			return "en-us"
		end,
		getTranslator = function(localeId)
			return {
				FormatByKey = function(self, key, args)
					local ret = "TEST_" .. key
					if args and type(args) == "table" then
						for k, v in pairs(args) do
							ret = ret .. "_" .. k .. "=" .. v
						end
					end
					return ret
				end,
			}
		end,
		localeIdChanged = nil,
	})
end

-- Creates a Localization that just echos back whatever's in the debug value
-- Useful for testing UI reacts to strings of all lengths
function Localization.createTestCustomLocaleLocalization(value)
	return Localization.new({
		getLocaleId = function()
			return value.Value
		end,
		getTranslator = function(localeId)
			return {
				FormatByKey = function()
					return localeId
				end
			}
		end,
		localeIdChanged = value:GetPropertyChangedSignal("Value")
	})
end

-- Creates a Localization that uses the LocaleId in a debug flag but reads from the real table
function Localization.createTestRealLocaleLocalization(localizationTable, value)
	return Localization.new({
		getLocaleId = function()
			return value.Value
		end,
		getTranslator = function(localeId)
			return localizationTable:GetTranslator(localeId)
		end,
		localeIdChanged = value:GetPropertyChangedSignal("Value")
	})
end

function Localization:subscribe(...)
	return self._signal:subscribe(...)
end

function Localization:getLocalizedContent()
	return self.content
end

function Localization:getLocalizedCreatorIntroText(userName)
	return self:_safeLocalize("Studio.Toolbox.General.AssetCreatorIntroText", {
		name = userName
	})
end

function Localization:getLocalizedEarningText(earning)
	return self:_safeLocalize("Studio.Toolbox.General.SalesEarning", {
		earning = tostring(earning)
	})
end

function Localization:getLocalizedPriceRangeText(minPrice, maxPrice)
	return self:_safeLocalize("Studio.Toolbox.General.SalesPriceRange", {
		minPrice = tostring(minPrice),
		maxPrice = tostring(maxPrice)
	})
end

function Localization:getLocalizedAssetIDText(assetId)
	return self:_safeLocalize("Studio.Toolbox.General.PreviewAreaAssetID", {
		assetId = tostring(assetId)
	})
end

function Localization:getLocalizedStatusText(assetStatus)
	return self:_safeLocalize("Studio.Toolbox.General.PreviewAreaStatus", {
		assetStatus = tostring(assetStatus)
	})
end

function Localization:getLocalizedVoteText(voteCounts)
	local localizedContent = self.content
	local voteText = voteCounts ~= 1 and localizedContent.Voting.VotesText
		or localizedContent.Voting.VoteText

	-- TODO: CLIDEVSRVS-1769 : Improve localization for toolbox's vote counts and vote text
	return string.format("%d %s", voteCounts, voteText)
end

function Localization:getLocalizedCategores(categories)
	return self:_localizeTable(categories, "Category", "name", "name")
end

function Localization:getLocalizedSorts(sorts)
	return self:_localizeTable(sorts, "Sort", "name", "sort")
end

function Localization:getLocalizedSuggestions(suggestions)
	return self:_localizeTable(suggestions, "Suggestions", "name", "search")
end

function Localization:getLocalizedFooter(footerBackgroundNames)
	return self:_localizeTable(footerBackgroundNames, "Footer", "name", "color")
end

function Localization:destroy()
	if self._externalLocaleIdChangedConnection then
		self._externalLocaleIdChangedConnection:Disconnect()
	end
end


-- Private impl below
function Localization:_getDefaultLocaleId()
	return "en-us"
end

function Localization:_getLocaleId()
	-- First we will see if studio want to override the Toolbox localization.
	local studioForceLocaleId = settings():GetFVariable("StudioForceLocale")
	if not (#studioForceLocaleId == 0) then
		return studioForceLocaleId
	end

	-- Then we check what's current LocaleId we want to use
	-- If toolbox localization is enabled.
    if self._externalLocaleIdGetter then
        return self._externalLocaleIdGetter()
    end

	return self:_getDefaultLocaleId()
end

function Localization:_getTranslator(localeId)
	localeId = localeId or self:_getLocaleId()
	if self._externalTranslatorGetter then
		return self._externalTranslatorGetter(localeId)
	end
	return nil
end

function Localization:_getDefaultTranslator()
	return self:_getTranslator(self:_getDefaultLocaleId())
end

function Localization:_update(changedContent)
	self._content = Cryo.Dictionary.join(self._content, changedContent)
	self.content = wrapStrictTable(self._content, "content")
	self._signal:fire(self.content)
end

-- Attempts to localize key with args in the current translator
-- If it fails, it attempts again in the default locale
-- If it still fails, then it just falls back to using the key
-- Else, it returns the translated content
-- If show warnings is on, it will warn when it fails to translate
function Localization:_safeLocalize(key, args)
	local translator = self:_getTranslator()

	if not translator and DebugFlags.shouldDebugWarnings() then
		warn("Toolbox Localization:_safeLocalize() translator = nil")
		return key
	end

	local success, translated = self:_safeLocalizeInner(translator, key, args)

	if not success then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox error in localizing key \"%s\" to locale \"%s\": %s"):format(
				key, translator.LocaleId, translated))
		end

		local defaultTranslator = self:_getDefaultTranslator()

		if not defaultTranslator and DebugFlags.shouldDebugWarnings() then
			warn("Toolbox Localization:_safeLocalize() defaultTranslator = nil")
			return key
		end

		success, translated = self:_safeLocalizeInner(defaultTranslator, key, args)

		if not success then
			if DebugFlags.shouldDebugWarnings() then
				warn(("\tToolbox error in localizing key \"%s\" to default locale \"%s\": %s"):format(
					key, defaultTranslator.LocaleId, translated))
			end
			-- If we can't translate to real locale or default locale, fallback to returning the key
			translated = key
		else
			if DebugFlags.shouldDebugWarnings() then
				warn(("\tToolbox falling back to default locale \"%s\" for key \"%s\""):format(
					defaultTranslator.LocaleId, key))
			end
		end
	end

	return translated
end

-- Wraps self:translator:FormatByKey(key, args) in pcall
function Localization:_safeLocalizeInner(translator, key, args)
	return pcall(function()
		return translator:FormatByKey(key, args)
	end)
end

function Localization:_recalculateContent()
	self:_update({
		ToolboxToolbarName = self:_safeLocalize("Studio.Toolbox.General.ToolboxToolbarName"),

		Category = {
			FreeModels = self:_safeLocalize("Studio.Toolbox.General.CategoryModels"),
			FreeDecals = self:_safeLocalize("Studio.Toolbox.General.CategoryDecals"),
			FreeMeshes = self:_safeLocalize("Studio.Toolbox.General.CategoryMeshes"),
			FreeAudio = self:_safeLocalize("Studio.Toolbox.General.CategoryAudio"),
			FreePlugins = self:_safeLocalize("Studio.Toolbox.General.CategoryPlugins"),
			MyModels = self:_safeLocalize("Studio.Toolbox.General.CategoryMyModels"),
			MyDecals = self:_safeLocalize("Studio.Toolbox.General.CategoryMyDecals"),
			MyMeshes = self:_safeLocalize("Studio.Toolbox.General.CategoryMyMeshes"),
			MyAudio = self:_safeLocalize("Studio.Toolbox.General.CategoryMyAudio"),
			MyPlugins = self:_safeLocalize("Studio.Toolbox.General.CategoryMyPlugins"),
			MyPackages = self:_safeLocalize("Studio.Toolbox.General.CategoryMyPackages"),
			RecentModels = self:_safeLocalize("Studio.Toolbox.General.CategoryRecentModels"),
			RecentDecals = self:_safeLocalize("Studio.Toolbox.General.CategoryRecentDecals"),
			RecentMeshes = self:_safeLocalize("Studio.Toolbox.General.CategoryRecentMeshes"),
			RecentAudio = self:_safeLocalize("Studio.Toolbox.General.CategoryRecentAudio"),
			GroupModels = self:_safeLocalize("Studio.Toolbox.General.CategoryGroupModels"),
			GroupDecals = self:_safeLocalize("Studio.Toolbox.General.CategoryGroupDecals"),
			GroupMeshes = self:_safeLocalize("Studio.Toolbox.General.CategoryGroupMeshes"),
			GroupAudio = self:_safeLocalize("Studio.Toolbox.General.CategoryGroupAudio"),
			GroupPackages = self:_safeLocalize("Studio.Toolbox.General.CategoryGroupPackages"),
			CreationsDevelopmentSectionDivider = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsDevelopmentSectionDivider"),
			CreationsModels = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsModels"),
			CreationsDecals = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsDecals"),
			CreationsAudio = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsAudio"),
			CreationsMeshes = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsMeshes"),
			CreationsCatalogSectionDivider = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsCatalogSectionDivider"),
			CreationsHats = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsHats"),
			CreationsTeeShirts = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsTeeShirts"),
			CreationsShirts = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsShirts"),
			CreationsPants = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsPants"),
			CreationsHair = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsHair"),
			CreationsFaceAccessorys = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsFaceAccessory"),
			CreationsNeckAccessorys = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsNeckAccessory"),
			CreationsShoulderAccessorys = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsShoulderAccessory"),
			CreationsFrontAccessorys = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsFrontAccessory"),
			CreationsBackAccessorys = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsBackAccessory"),
			CreationsWaistAccessorys = self:_safeLocalize("Studio.Toolbox.General.CategoryCreationsWaistAccessory"),
		},

		Suggestions = {
			IntroText = self:_safeLocalize("Studio.Toolbox.General.SuggestionsIntroText"),
			NPC = self:_safeLocalize("Studio.Toolbox.General.SuggestionsNPC"),
			Vehicle = self:_safeLocalize("Studio.Toolbox.General.SuggestionsVehicle"),
			Weapon = self:_safeLocalize("Studio.Toolbox.General.SuggestionsWeapon"),
			Building = self:_safeLocalize("Studio.Toolbox.General.SuggestionsBuilding"),
			Light = self:_safeLocalize("Studio.Toolbox.General.SuggestionsLight"),
		},

		Sort = {
			ByText = self:_safeLocalize("Studio.Toolbox.General.SortByText"),
			Relevance = self:_safeLocalize("Studio.Toolbox.General.SortByRelevance"),
			MostTaken = self:_safeLocalize("Studio.Toolbox.General.SortByMostTaken"),
			Favorites = self:_safeLocalize("Studio.Toolbox.General.SortByFavorites"),
			Updated = self:_safeLocalize("Studio.Toolbox.General.SortByUpdated"),
			Ratings = self:_safeLocalize("Studio.Toolbox.General.SortByRatings"),
		},

		Voting = {
			VoteText = self:_safeLocalize("Studio.Toolbox.General.VotingVoteText"),
			VotesText = self:_safeLocalize("Studio.Toolbox.General.VotingVotesText"), -- plural
		},

		Footer = {
			BGText = self:_safeLocalize("Studio.Toolbox.General.FooterBGText"),
			White = self:_safeLocalize("Studio.Toolbox.General.FooterButtonWhiteName"),
			Black = self:_safeLocalize("Studio.Toolbox.General.FooterButtonBlackName"),
			None = self:_safeLocalize("Studio.Toolbox.General.FooterButtonNoneName"),
		},

		SearchBarDefaultText = self:_safeLocalize("Studio.Toolbox.General.SearchBarDefaultText"),
		SearchBarCreatorText = self:_safeLocalize("Studio.Toolbox.General.SearchBarCreatorText"),

		EndorseBadgeTooltipText = self:_safeLocalize("Studio.Toolbox.General.EndorseBadgeTooltipText"),

		InfoBannerText = self:_safeLocalize("Studio.Toolbox.General.InfoBannerText"),

		SearchResults = {
			SearchResults = self:_safeLocalize("Studio.Toolbox.General.SearchResults"),
			SearchResultsKeyword = self:_safeLocalize("Studio.Toolbox.General.SearchResultsKeyword"),
			ClearAll = self:_safeLocalize("Studio.Toolbox.General.SearchResultsClearAll"),
		},

		SearchOptions = {
			Creator = self:_safeLocalize("Studio.Toolbox.General.SearchOptionCreator"),
			Sort = self:_safeLocalize("Studio.Toolbox.General.SearchOptionSort"),
			Apply = self:_safeLocalize("Studio.Toolbox.General.SearchOptionsApply"),
			Cancel = self:_safeLocalize("Studio.Toolbox.General.SearchOptionsCancel"),
		},

		SearchTags = {
			Creator = self:_safeLocalize("Studio.Toolbox.General.SearchTagCreator"),
		},

		Tabs = {
			Marketplace = self:_safeLocalize("Studio.Toolbox.General.TabMarketplace"),
			Inventory = self:_safeLocalize("Studio.Toolbox.General.TabInventory"),
			Recent = self:_safeLocalize("Studio.Toolbox.General.TabRecent"),
			Creations = self:_safeLocalize("Studio.Toolbox.General.TabCreations"),
		},

		RightClickMenu = {
			CopyAssetID = self:_safeLocalize("Studio.Toolbox.General.RightClickMenuCopyAssetID"),
			CopyAssetURI = self:_safeLocalize("Studio.Toolbox.General.RightClickMenuCopyAssetURI"),
			ViewInBrowser = self:_safeLocalize("Studio.Toolbox.General.RightClickMenuViewInBrowser"),
			ConfigureAsset = self:_safeLocalize("Studio.Toolbox.General.RightClickMenuConfigureAsset"),
			EditAsset = self:_safeLocalize("Studio.Toolbox.General.RightClickMenuEditAsset")
		},

		Status = {
			[Constants.AssetStatus.ReviewPending] = self:_safeLocalize("Studio.Toolbox.General.StatusReviewPending"),
			[Constants.AssetStatus.Moderated] = self:_safeLocalize("Studio.Toolbox.General.StatusModerated"),
			[Constants.AssetStatus.ReviewApproved] = self:_safeLocalize("Studio.Toolbox.General.StatusReviewApproved"),
			[Constants.AssetStatus.OnSale] = self:_safeLocalize("Studio.Toolbox.General.StatusOnSale"),
			[Constants.AssetStatus.OffSale] = self:_safeLocalize("Studio.Toolbox.General.StatusOffSale"),
			[Constants.AssetStatus.DelayedRelease] = self:_safeLocalize("Studio.Toolbox.General.StatusDelayedRelease"),
		},

		Sales = {
			Sale = self:_safeLocalize("Studio.Toolbox.General.SalesSale"),
			Onsale = self:_safeLocalize("Studio.Toolbox.General.SalesOnsale"),
			OnsaleApplyToSave = self:_safeLocalize("Studio.Toolbox.General.SalesOnsaleApplyToSave"),
			Offsale = self:_safeLocalize("Studio.Toolbox.General.SalesOffsale"),
			OffsaleApplyToSave = self:_safeLocalize("Studio.Toolbox.General.SalesOffsaleApplyToSave"),
			ItemCannotBeSold = self:_safeLocalize("Studio.Toolbox.General.SalesItemCannotBeSold"),
			Price = self:_safeLocalize("Studio.Toolbox.General.SalesPrice"),
			ServiceFee = self:_safeLocalize("Studio.Toolbox.General.SalesServiceFee"),
		},

		AssetConfig = {
			PublishAsset = {
				Title = self:_safeLocalize("Studio.Toolbox.General.Title"),
				Description = self:_safeLocalize("Studio.Toolbox.General.Description"),
				Ownership = self:_safeLocalize("Studio.Toolbox.General.Ownership"),
				Genre = self:_safeLocalize("Studio.Toolbox.General.Genre"),
				Copy = self:_safeLocalize("Studio.Toolbox.General.Copy"),
				Comments = self:_safeLocalize("Studio.Toolbox.General.Comments"),
				LearnMore = self:_safeLocalize("Studio.Toolbox.General.LearnMore"),
				Me = self:_safeLocalize("Studio.Toolbox.General.Me"),
				AssetType = self:_safeLocalize("Studio.Toolbox.General.AssetType"),

				AssetTextDislpay = {
					[Enum.AssetType.Model] = self:_safeLocalize("Studio.Toolbox.General.AssetTypeModel"),
					[Enum.AssetType.Decal] = self:_safeLocalize("Studio.Toolbox.General.AssetTypeDecal"),
					[Enum.AssetType.Mesh] = self:_safeLocalize("Studio.Toolbox.General.AssetTypeMesh"),
					[Enum.AssetType.Audio] = self:_safeLocalize("Studio.Toolbox.General.AssetTypeAudio"),
					[Enum.AssetType.Hat] = self:_safeLocalize("Studio.Toolbox.General.AssetTypeHat"),
					[Enum.AssetType.TeeShirt] = self:_safeLocalize("Studio.Toolbox.General.AssetTypeTeeShirt"),
					[Enum.AssetType.Shirt] = self:_safeLocalize("Studio.Toolbox.General.AssetTypeShirt"),
					[Enum.AssetType.Pants] = self:_safeLocalize("Studio.Toolbox.General.AssetTypePants"),
				},
			},

			Footer = {
				Override = self:_safeLocalize("Studio.Toolbox.AssetConfigFooter.Override"),
				NewAsset = self:_safeLocalize("Studio.Toolbox.AssetConfigFooter.NewAsset")
			},

			Override = {
				Title = self:_safeLocalize("Studio.Toolbox.AssetConfigFooter.OverrideTitle")
			},

			VersionsHistory = {
				Current = self:_safeLocalize("Studio.Toolbox.AssetConfigVersions.Current"),
				Restore = self:_safeLocalize("Studio.Toolbox.AssetConfigVersions.Restore")
			},

			SideTabs = {
				[AssetConfigConstants.SIDE_TABS.Sales] = self:_safeLocalize("Studio.Toolbox.General.SideTabSales"),
				[AssetConfigConstants.SIDE_TABS.Versions] = self:_safeLocalize("Studio.Toolbox.General.SideTabVersions"),
				[AssetConfigConstants.SIDE_TABS.General] = self:_safeLocalize("Studio.Toolbox.General.SideTabGeneral"),
			},

			Terms = self:_safeLocalize("Studio.Toolbox.AssetConfigCopy.Terms"),
			Accounts = self:_safeLocalize("Studio.Toolbox.AssetConfigCopy.AccountSetting"),

			-- Confirm if I need to change apply to save, back to cancel.
			Apply = self:_safeLocalize("Studio.Common.Action.Submit"),
			Cancel = self:_safeLocalize("Studio.Toolbox.General.SearchOptionsCancel"),

			Discard = self:_safeLocalize("Studio.Toolbox.General.Discard"),
			DiscardMessage = self:_safeLocalize("Studio.Toolbox.General.DiscardMessage"),
		}
	})
end

function Localization:_localizeTable(tbl, localizedTableName, keyToReplace, keyToUse)
	local newTbl = {}
	local localizedContent = self.content
	local content = localizedContent[localizedTableName]

	for index, item in pairs(tbl) do
		local valueToUse = item[keyToUse]
		local newText = content[valueToUse]

		newTbl[index] = Cryo.Dictionary.join(item, {
			[keyToReplace] = newText,
		})
	end

	return newTbl
end

return Localization