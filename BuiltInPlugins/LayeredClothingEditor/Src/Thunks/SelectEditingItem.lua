-- Select item in workspace, and focus on it
local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local LuaMeshEditingModule = require(Plugin.Packages.LuaMeshEditingModule)

local CageEditingContext = require(LuaMeshEditingModule.MeshEditingContexts.CageEditingContext)

local SetPreviewAssetsSelected = require(Plugin.Src.Actions.SetPreviewAssetsSelected)
local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)
local Constants = require(Plugin.Src.Util.Constants)
local getActivePreviewTabs = require(Plugin.Src.Util.getActivePreviewTabs)
local PreviewConstantsInterface = require(Plugin.Src.Util.PreviewConstantsInterface)
local PreviewConstants = require(Plugin.Src.Util.PreviewConstants)
local SetEditingCage = require(Plugin.Src.Actions.SetEditingCage)
local SetItemSize = require(Plugin.Src.Actions.SetItemSize)
local SetAccessoryTypeInfo = require(Plugin.Src.Actions.SetAccessoryTypeInfo)
local SetAttachmentPoint = require(Plugin.Src.Actions.SetAttachmentPoint)
local SelectPreviewTab = require(Plugin.Src.Actions.SelectPreviewTab)
local SetCagesTransparency = require(Plugin.Src.Actions.SetCagesTransparency)
local SetToolMode = require(Plugin.Src.Actions.SetToolMode)

local ModelUtil = require(Plugin.Src.Util.ModelUtil)

-- select default cage when editing item changed
local function selectCage(store, item)
	if ItemCharacteristics.isItemEmpty(item) or not ItemCharacteristics.hasAnyCage(item) then
		if ItemCharacteristics.isClothes(item) then
			store:dispatch(SetEditingCage(Constants.EDIT_MODE.Mesh))
			return Constants.EDIT_MODE.Mesh
		else
			store:dispatch(SetEditingCage(Cryo.None))
			return nil
		end
	end

	local defaultCageSelect =  Enum.CageType.Outer
	if not ItemCharacteristics.hasOuterCage(item) and ItemCharacteristics.hasInnerCage(item) then
		defaultCageSelect = Enum.CageType.Inner
	end
	store:dispatch(SetEditingCage(defaultCageSelect))
	return defaultCageSelect
end

local function getPreviewPanelTab(tabs)
	local previewTab = nil
	local lowestLayoutOrder = nil
	for tabKey, tabInfo in pairs(tabs) do
		if previewTab == nil or tabInfo.LayoutOrder < lowestLayoutOrder then
			previewTab = tabKey
			lowestLayoutOrder = tabInfo.LayoutOrder
		end
	end
	if not previewTab then
		return PreviewConstants.TABS_KEYS.None
	end
	return previewTab
end

local function getPreviewTab(newEditingItem, storeState)
	local currentlySelectedTab = storeState.previewStatus.selectedTab

	local activeTabsForNewEditingItem = getActivePreviewTabs(newEditingItem)
	if not PreviewConstantsInterface.IsValidTabKey(currentlySelectedTab) then
		return getPreviewPanelTab(activeTabsForNewEditingItem)
	end

	local isTabStillAvailable =
		Cryo.List.find(Cryo.Dictionary.keys(activeTabsForNewEditingItem), currentlySelectedTab) ~= nil
	if isTabStillAvailable then
		return currentlySelectedTab
	end
	return getPreviewPanelTab(activeTabsForNewEditingItem)
end

return function(context, item)
	return function(store)
		local state = store:getState()

		store:dispatch(SetToolMode(Constants.TOOL_MODE.None))
		store:dispatch(SelectPreviewTab(getPreviewTab(item, state)))
		store:dispatch(SetAccessoryTypeInfo(Cryo.None))
		store:dispatch(SetAttachmentPoint({
			ItemCFrame = CFrame.new(),
			AttachmentCFrame = CFrame.new(),
		}))
		store:dispatch(SetPreviewAssetsSelected({}))
		if ItemCharacteristics.isClothes(item) then
			store:dispatch(SetItemSize(item.Size))
		end

		local selectedCage = selectCage(store, item)

		local cagesTransparency = {
			[Enum.CageType.Inner] = Constants.DEFAULT_CAGE_TRANSPARENCY,
			[Enum.CageType.Outer] = Constants.DEFAULT_CAGE_TRANSPARENCY
		}

		store:dispatch(SetCagesTransparency(cagesTransparency))

		if ItemCharacteristics.isAvatar(item) then
			ModelUtil:createModelInfo(item, true)
		elseif ItemCharacteristics.isClothes(item) then
			ModelUtil:createModelInfo(item, false)
		end

		-- this is a little misleading, EDIT_MODE.Mesh refers to rigid MeshPart mode
		if selectedCage ~= nil and selectedCage ~= Constants.EDIT_MODE.Mesh then
			local innerCageContext = CageEditingContext.new()
			local outerCageContext = CageEditingContext.new()
			innerCageContext:initFromCageMesh(Enum.CageType.Inner, item)
			outerCageContext:initFromCageMesh(Enum.CageType.Outer, item)
			context:setInnerCageContext(innerCageContext)
			context:setOuterCageContext(outerCageContext)
		else
			context:setInnerCageContext()
			context:setOuterCageContext()
		end
	end
end