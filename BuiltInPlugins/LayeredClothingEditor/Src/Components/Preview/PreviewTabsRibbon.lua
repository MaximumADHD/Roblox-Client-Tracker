--[[
	Shows the Preview Panel's tabs

	Required Props:
		callback SelectPreviewTab: function provided via dispatch to set the preview tab
		table Localization: A Localization ContextItem, which is provided via withContext.
		string SelectedTab: the preview tab selection (this is an entry from PreviewConstants.TABS_KEYS)

	Optional Props:
		number LayoutOrder: render order of component in layout
		number ZIndex: the z sorting order of the component
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local AvatarToolsSharedConstants = AccessoryAndBodyToolSharedUtil.Constants
local PreviewConstantsInterface = AccessoryAndBodyToolSharedUtil.PreviewConstantsInterface
local getActivePreviewTabs = AccessoryAndBodyToolSharedUtil.getActivePreviewTabs

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext

local UI = Framework.UI
local Tabs = UI.Tabs
local Pane = UI.Pane

local Util = Framework.Util
local Typecheck = Util.Typecheck

local SelectPreviewTab = require(Plugin.Src.Actions.SelectPreviewTab)

local PreviewTabsRibbon = Roact.PureComponent:extend("PreviewTabsRibbon")
Typecheck.wrap(PreviewTabsRibbon, script)

local function isTabActive(tabKey, editingItem)
	local activeTabs = getActivePreviewTabs(editingItem)
	return activeTabs[tabKey] ~= nil
end

function PreviewTabsRibbon:init()
	self.onClick = function(selectedTab)
		local props = self.props
		local tabKey = selectedTab.Key
		local selectedTabFromStore = props.SelectedTab
		local editingItem = props.EditingItemContext:getItem()

		if tabKey and tabKey == selectedTabFromStore or not isTabActive(tabKey, editingItem) then
			return
		end
		self.props.SelectPreviewTab(tabKey)
	end
end

function PreviewTabsRibbon:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local selectedTabKey = props.SelectedTab
	local editingItem = props.EditingItemContext:getItem()
	local style = props.Stylizer

	local buttons = {}
	local tabsToDisplay = PreviewConstantsInterface.getTabs()
	for tabKey, tabInfo in pairs(tabsToDisplay) do
		buttons[tabInfo.LayoutOrder] = {
			Key = tabKey,
			Label = localization:getText(AvatarToolsSharedConstants.LOCALIZATION_KEYS.Preview, tabInfo.LocalizationKey),
			Disabled = not isTabActive(tabKey, editingItem),
		}
	end

	local selectedTab
	for _, tab in ipairs(buttons) do
		if tab.Key == selectedTabKey then
			selectedTab = tab
		end
	end

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, style.TabHeight),
		LayoutOrder = layoutOrder,
	}, {
		BottomLine = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, style.BorderSize),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			BackgroundColor = style.BorderColor,
			ZIndex = 0,
		}),
		Tabs = Roact.createElement(Tabs, {
			Tabs = buttons,
			OnTabSelected = self.onClick,
			SelectedTab = selectedTab,
		})
	})
end


PreviewTabsRibbon = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
	EditingItemContext = EditingItemContext,
})(PreviewTabsRibbon)

local function mapStateToProps(state, props)
	local previewStatus = state.previewStatus

	return {
		SelectedTab = previewStatus.selectedTab,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SelectPreviewTab = function(tab)
			dispatch(SelectPreviewTab(tab))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PreviewTabsRibbon)
