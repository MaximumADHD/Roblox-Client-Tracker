local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Category = require(Plugin.Core.Types.Category)
local Constants = require(Plugin.Core.Util.Constants)
local Sort = require(Plugin.Core.Types.Sort)

local Settings = {}
Settings.__index = Settings

local FFlagEnableDefaultSortFix = game:GetFastFlag("EnableDefaultSortFix2")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

-- Built in plugins share the same namespace for settings, so mark this as from the toolbox
local SETTING_PREFIX = "Toolbox_"
local SELECTED_BACKGROUND_INDEX_KEY = SETTING_PREFIX .. "SelectedBackgroundIndex"
local SELECTED_TAB_KEY = SETTING_PREFIX .. "SelectTab"
-- TODO remove SELECTED_CATEGORY_INDEX_KEY when FFlagUseCategoryNameInToolbox is retired
local SELECTED_CATEGORY_INDEX_KEY = SETTING_PREFIX .. "SelectedCategoryIndex"
local SELECTED_CATEGORY_NAME_KEY = SETTING_PREFIX .. "SelectedCategoryName"
local SELECTED_SEARCH_TERM_KEY = SETTING_PREFIX .. "SelectedSearchTerm"
local SELECTED_SORT_INDEX_KEY = SETTING_PREFIX .. "SelectedSortIndex"

function Settings.new(plugin)
	local self = {
		_plugin = plugin,
	}

	setmetatable(self, Settings)

	return self
end

function Settings:_getSetting(setting, default)
	if not self._plugin then
		return default
	end

	local value = self._plugin:GetSetting(setting)

	if DebugFlags.shouldLogSettings() then
		print(("Settings:_getSetting(setting=\"%s\", default=%s) got value = %s"):format(
			tostring(setting),
			type(default) == "string" and '"' .. tostring(default) .. '"' or tostring(default),
			type(value) == "string" and '"' .. tostring(value) .. '"' or tostring(value)))
	end

	if not value then
		value = default
	end
	return value
end

function Settings:_setSetting(setting, value)
	if not self._plugin then
		return
	end

	if DebugFlags.shouldLogSettings() then
		print(("Settings:_setSetting(setting=\"%s\", value=%s)"):format(
			tostring(setting),
			type(value) == "string" and '"' .. tostring(value) .. '"' or tostring(value)))
	end

	self._plugin:SetSetting(setting, value)
end

function Settings:getSelectedBackgroundIndex()
	return self:_getSetting(SELECTED_BACKGROUND_INDEX_KEY, 1)
end

function Settings:setSelectedBackgroundIndex(index)
	return self:_setSetting(SELECTED_BACKGROUND_INDEX_KEY, index)
end

if not FFlagUseCategoryNameInToolbox then
	function Settings:getSelectTab()
		return self:_setSetting(SELECTED_TAB_KEY, Category.MARKETPLACE_KEY)
	end

	function Settings:setSelectTab(currentTab)
		return self:_setSetting(SELECTED_TAB_KEY, currentTab)
	end
end

if FFlagUseCategoryNameInToolbox then
	function Settings:getSelectedCategoryName()
		return self:_getSetting(SELECTED_CATEGORY_NAME_KEY, Category.FREE_MODELS.name)
	end

	function Settings:setSelectedCategoryName(categoryName)
		return self:_setSetting(SELECTED_CATEGORY_NAME_KEY, categoryName)
	end
else
	function Settings:getSelectedCategoryIndex()
		return self:_getSetting(SELECTED_CATEGORY_INDEX_KEY, 1)
	end

    function Settings:setSelectedCategoryIndex(categoryIndex)
		return self:_setSetting(SELECTED_CATEGORY_INDEX_KEY, categoryIndex)
	end
end

function Settings:getSelectedSearchTerm()
	return self:_getSetting(SELECTED_SEARCH_TERM_KEY, "")
end

function Settings:setSelectedSearchTerm(searchTerm)
	return self:_setSetting(SELECTED_SEARCH_TERM_KEY, searchTerm)
end

function Settings:getSelectedSortIndex()
	return self:_getSetting(SELECTED_SORT_INDEX_KEY, 1)
end

function Settings:setSelectedSortIndex(index)
	return self:_setSetting(SELECTED_SORT_INDEX_KEY, index)
end

function Settings:updateFromPageInfo(pageInfo)
	if DebugFlags.shouldLogSettings() then
		print("Settings:updateFromPageInfo()")
	end

	if not FFlagUseCategoryNameInToolbox then
		self:setSelectTab(pageInfo.currentTab)
	end

	if FFlagUseCategoryNameInToolbox then
		self:setSelectedCategoryName(pageInfo.categoryName)
	else
		self:setSelectedCategoryIndex(pageInfo.categoryIndex)
	end
	self:setSelectedSearchTerm(pageInfo.searchTerm)
	self:setSelectedSortIndex(pageInfo.sortIndex)
	self:setSelectedBackgroundIndex(pageInfo.selectedBackgroundIndex)
end

function Settings:loadInitialSettings()
	if DebugFlags.shouldLogSettings() then
		print("Settings:loadInitialSettings()")
	end

	local initSettings = {}

	initSettings.backgroundIndex = self:getSelectedBackgroundIndex()
	initSettings.tab = (not FFlagUseCategoryNameInToolbox) and self:getSelectTab()
	if FFlagUseCategoryNameInToolbox then
		initSettings.categoryName = self:getSelectedCategoryName()
	else
		initSettings.categoryIndex = self:getSelectedCategoryIndex()
		if Category.categoryIsGroupAsset(Constants.DEFAULT_TAB, initSettings.categoryIndex) then
			initSettings.categoryIndex = 1
		end
	end
	initSettings.searchTerm = self:getSelectedSearchTerm()
	initSettings.sortIndex = self:getSelectedSortIndex()

	if game:FindFirstChild("DefaultToolboxSearch") then
		initSettings.searchTerm = game.DefaultToolboxSearch.Value
		-- Also set the initial category to free models and relevant sort
		if FFlagUseCategoryNameInToolbox then
			initSettings.categoryName = Category.FREE_MODELS.name
			initSettings.sortIndex = Sort.getDefaultSortForCategory(initSettings.categoryName)
		else
			local currentTab = FFlagEnableDefaultSortFix and Category.MARKETPLACE_KEY or nil
			initSettings.sortIndex = Sort.getDefaultSortForCategory(currentTab, initSettings.categoryName)
		end
	end

	if FFlagUseCategoryNameInToolbox then
		if not Sort.canSort(initSettings.searchTerm, initSettings.categoryName) then
			initSettings.sortIndex = Sort.getDefaultSortForCategory(initSettings.categoryName)
		end
	else
		if not Sort.canSort(initSettings.searchTerm, initSettings.categoryIndex) then
			local currentTab = FFlagEnableDefaultSortFix and Category.MARKETPLACE_KEY or nil
			initSettings.sortIndex = Sort.getDefaultSortForCategory(currentTab, initSettings.categoryIndex)
		end
	end

	return initSettings
end

return Settings
