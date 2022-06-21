--[[
	Wrapper component for screen flow of the editor.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local ItemCharacteristics = AccessoryAndBodyToolSharedUtil.ItemCharacteristics

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local ScreenFlow = UI.ScreenFlow

local AssetTypeScreen = require(Plugin.Src.Components.Screens.AssetTypeScreen)
local EditorScreen = require(Plugin.Src.Components.Screens.EditorScreen)
local SelectItemScreen = require(Plugin.Src.Components.Screens.SelectItemScreen)
local GenerateScreen = require(Plugin.Src.Components.Screens.GenerateScreen)

local SelectedEditingItem = require(Plugin.Src.Components.Preview.SelectedEditingItem)

local AnalyticsGlobals = require(Plugin.Src.Util.AnalyticsGlobals)
local Constants = require(Plugin.Src.Util.Constants)

local LayeredClothingEditor = Roact.PureComponent:extend("LayeredClothingEditor")

local GetFFlagAccessoryFittingToolAnalytics = require(Plugin.Src.Flags.GetFFlagAccessoryFittingToolAnalytics)

function LayeredClothingEditor:init()
	if GetFFlagAccessoryFittingToolAnalytics() then
		self.screenInfo = {
			{
				Id = Constants.SCREENS.Select,
				Component = SelectItemScreen,
			},
			{
				Id = Constants.SCREENS.AssetType,
				Component = AssetTypeScreen,
			},
			{
				Id = Constants.SCREENS.Edit,
				Component = EditorScreen,
			},
			{
				Id = Constants.SCREENS.Generate,
				Component = GenerateScreen,
			},
		}

		self.screens = {}
		for _, info in ipairs(self.screenInfo) do
			table.insert(self.screens, info.Component)
		end
	else
		self.screens = {
			SelectItemScreen,
			AssetTypeScreen,
			EditorScreen,
			GenerateScreen,
		}
	end

	self.screenToIndexMap = {}
	for index, screen in ipairs(self.screens) do
		self.screenToIndexMap[screen] = index
	end

	self.onScreenChanged = function(index)
		if GetFFlagAccessoryFittingToolAnalytics() then
			AnalyticsGlobals.CurrentScreen = self.screenInfo[index].Id
		end
	end

	self.getNextIndex = function(currentIndex)
		local newIndex
		if currentIndex == self.screenToIndexMap[SelectItemScreen] then
			local sourceItem = self.props.EditingItemContext:getSourceItem()
			if ItemCharacteristics.isAvatar(sourceItem) then
				newIndex = self.screenToIndexMap[EditorScreen]
			else
				newIndex = self.screenToIndexMap[AssetTypeScreen]
			end
		else
			newIndex = currentIndex + 1
		end
		newIndex = newIndex % #self.screens
		return newIndex == 0 and #self.screens or newIndex
	end

	self.getPreviousIndex = function(currentIndex)
		local newIndex
		if currentIndex == self.screenToIndexMap[EditorScreen] then
			local sourceItem = self.props.EditingItemContext:getSourceItem()
			if ItemCharacteristics.isAvatar(sourceItem) then
				newIndex = self.screenToIndexMap[SelectItemScreen]
			else
				newIndex = self.screenToIndexMap[AssetTypeScreen]
			end
		else
			newIndex = currentIndex - 1
		end
		return newIndex
	end
end

function LayeredClothingEditor:render()
	return Roact.createFragment({
		SelectedEditingItem = Roact.createElement(SelectedEditingItem),
		ScreenFlow = Roact.createElement(ScreenFlow, {
			Screens = self.screens,
			GetNextIndex = self.getNextIndex,
			GetPreviousIndex = self.getPreviousIndex,
			OnScreenChanged = self.onScreenChanged,
		}),
	})
end

function LayeredClothingEditor:willUnmount()
	self.props.EditingItemContext:clear()
end

LayeredClothingEditor = withContext({
	EditingItemContext = EditingItemContext,
})(LayeredClothingEditor)

return LayeredClothingEditor
