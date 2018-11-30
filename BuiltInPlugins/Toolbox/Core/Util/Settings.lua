local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Category = require(Plugin.Core.Types.Category)
local Sort = require(Plugin.Core.Types.Sort)

local Settings = {}
Settings.__index = Settings

-- Built in plugins share the same namespace for settings, so mark this as from the toolbox
local SETTING_PREFIX = "Toolbox_"
local SELECTED_BACKGROUND_INDEX_KEY = SETTING_PREFIX .. "SelectedBackgroundIndex"
local SELECTED_CATEGORY_INDEX_KEY = SETTING_PREFIX .. "SelectedCategoryIndex"
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
			type(default) == "string" and "\"" .. tostring(default) .. "\"" or tostring(default),
			type(value) == "string" and "\"" .. tostring(value) .. "\"" or tostring(value)))
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
			type(value) == "string" and "\"" .. tostring(value) .. "\"" or tostring(value)))
	end

	self._plugin:SetSetting(setting, value)
end

function Settings:getSelectedBackgroundIndex()
	return self:_getSetting(SELECTED_BACKGROUND_INDEX_KEY, 1)
end

function Settings:setSelectedBackgroundIndex(index)
	return self:_setSetting(SELECTED_BACKGROUND_INDEX_KEY, index)
end

function Settings:getSelectedCategoryIndex()
	return self:_getSetting(SELECTED_CATEGORY_INDEX_KEY, 1)
end

function Settings:setSelectedCategoryIndex(index)
	return self:_setSetting(SELECTED_CATEGORY_INDEX_KEY, index)
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

	self:setSelectedCategoryIndex(pageInfo.categoryIndex)
	self:setSelectedSearchTerm(pageInfo.searchTerm)
	self:setSelectedSortIndex(pageInfo.sortIndex)
	self:setSelectedBackgroundIndex(pageInfo.selectedBackgroundIndex)
end

function Settings:loadInitialSettings()
	if DebugFlags.shouldLogSettings() then
		print("Settings:loadInitialSettings()")
	end

	local settings = {}

	settings.backgroundIndex = self:getSelectedBackgroundIndex()
	settings.categoryIndex = self:getSelectedCategoryIndex()
	settings.searchTerm = self:getSelectedSearchTerm()
	settings.sortIndex = self:getSelectedSortIndex()

	if Category.categoryIsGroupAsset(settings.categoryIndex) then
		settings.categoryIndex = 1
	end

	if game:FindFirstChild("DefaultToolboxSearch") then
		settings.searchTerm = game.DefaultToolboxSearch.Value
		-- Also set the initial category to free models and relevant sort
		settings.categoryIndex = 1
		settings.sortIndex = Sort.getDefaultSortForCategory(settings.categoryIndex)
	end

	if not Sort.canSort(settings.searchTerm, settings.categoryIndex) then
		settings.sortIndex = Sort.getDefaultSortForCategory(settings.categoryIndex)
	end

	return settings
end

return Settings
