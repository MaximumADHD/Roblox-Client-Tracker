--[[
	This component is responsible for managing the version histroy of the asset.
	It need to know about current version and display that accordingly. It also provides
	interface for setting current version.

	Necessary properties:
	Position, UDim2.
	Size, UDim2.
	ItemListInfo, a table, should contain all the information need for versions page.
	CurrentAssetId, number, will be used to create current ItemInfo table to create roact element.

	Optional properties:
	LayoutOrder, number, will be used by the internal layouter. So Position will be overrode.
]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Cryo = require(Libs.Cryo)
local Framework = require(Libs.Framework)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local VersionItem = require(AssetConfiguration.VersionItem)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local Constants= require(Util.Constants)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local getNetwork = ContextGetter.getNetwork

local Requests = Plugin.Core.Networking.Requests
local GetVersionsHistoryRequest = require(Requests.GetVersionsHistoryRequest)
local MakeChangeRequest = require(Requests.MakeChangeRequest)

local Versions = Roact.PureComponent:extend("Versions")

local TITLE_HEIGHT = 30
local ITEM_HEIGHT = 80

function Versions:init(props)
	local defaultVersion = 0
	if props.changeTable and props.changeTable.VersionItemSelect then
		defaultVersion = props.changeTable.VersionItemSelect
	end

	self.state = {
		currentItem = {},

		selectVersion = defaultVersion,
	}

	self.OnItemClicked = function(item)
		local currentAssetVersion = self.state.selectVersion
		local newAssetVersion = item.assetVersionNumber
		if currentAssetVersion == item.assetVersionNumber then
			newAssetVersion = nil
		end

		if newAssetVersion then
			self.props.makeChangeRequest("VersionItemSelect", currentAssetVersion, newAssetVersion)

			self:setState({
				selectVersion = newAssetVersion
			})
		else
			self.props.makeChangeRequest("VersionItemSelect", newAssetVersion, newAssetVersion)

			self:setState({
				selectVersion = 0
			})
		end
	end
end

function Versions:didMount()
	if self.props.assetId then
		self.props.getVersionsHistory(getNetwork(self), self.props.assetId)
	end
end

local function extractFirstVersionItem(targetTable)
	-- By default, the first item is our current item.
	local targetItem = targetTable[1] or {}
	return Cryo.Dictionary.join({}, targetItem)
end

function Versions:didUpdate(previousProps, previousState)
	local currentItem = previousState.currentItem
	local versionHistory = self.props.versionHistory

	if ((not next(currentItem)) and versionHistory) then
		self:setState({
			currentItem = extractFirstVersionItem(versionHistory)
		})
	end
end

-- Let's see in the future if the current previous items are the same.
-- Inside this function, we need to insert DividerPosition and Size information.
function Versions:tryCreateItem(props, IsCurrent)
	if IsCurrent then
		props.DividerAnchorPoint = Vector2.new(0.5, 1)
		props.DividerPosition = UDim2.new(0.5, 0, 1, 0)
		props.DividerSize = UDim2.new(1, -30, 0, 1)
	else
		props.DividerAnchorPoint = Vector2.new(0.5, 1)
		props.DividerPosition = UDim2.new(0.5, 40, 1, 0)
		props.DividerSize = UDim2.new(1, -120, 0, 1)
	end
	props.IsCurrent = IsCurrent

	return Roact.createElement(VersionItem, props)
end

-- Roact accepts local function
local function createCurrentItem(props)
	return Versions:tryCreateItem(props, true)
end

local function createItem(props)
	return Versions:tryCreateItem(props, false)
end

local function createItemList(props)
	local itemList = {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 20),
		}),
	}

	local ItemListInfo = props.ItemListInfo
	for i = 2, #ItemListInfo do
		local item = ItemListInfo[i]

		itemList[item.assetVersionNumber] = Roact.createElement(createItem,{
			ItemInfo = item,
			Size = props.ItemSize,
			SelectVersion = props.SelectVersion,
			ItemClickCallBack = props.ItemClickCallBack,
			LayoutOrder = i - 1,
		})
	end

	return Roact.createElement("Frame", {
		Size = props.Size,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = props.LayoutOrder
	}, itemList)
end

function Versions:render()
	if FFlagToolboxRemoveWithThemes then
		return withLocalization(function(localization, localizedContent)
			return self:renderContent(nil, localization, localizedContent)
		end)
	else
		return withTheme(function(theme)
			return withLocalization(function(localization, localizedContent)
				return self:renderContent(theme, localization, localizedContent)
			end)
		end)
	end
end

function Versions:renderContent(theme, localization, localizedContent)
	local props = self.props
	local state = self.state
	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end
	local versionsTheme = theme.versions

	local LayoutOrder = props.LayoutOrder
	local Size = props.Size

	local versionHistory = props.versionHistory

	local currentItem = state.currentItem
	local selectVersion = state.selectVersion

	return Roact.createElement("ScrollingFrame", {
		Size = Size,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = LayoutOrder
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 20),
		}),

		Title = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 1,
		},{
			VersionsLabel = Roact.createElement("TextLabel", {
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(0, 50, 0, TITLE_HEIGHT),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Text = localizedContent.AssetConfig.VersionsHistory.Current,
				TextColor3 = versionsTheme.textColor,
				Font = Constants.FONT_BOLD,
				TextSize = Constants.FONT_SIZE_TITLE,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}),

		CurrentItem = next(currentItem) and Roact.createElement(createCurrentItem, {
			Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),

			ItemInfo = currentItem,

			LayoutOrder = 2,
		}),

		PreviousVersion = Roact.createElement("Frame",{
			Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 3,
		}, {
			VersionsLabel = Roact.createElement("TextLabel", {
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(0, 50, 0, TITLE_HEIGHT),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Text = localizedContent.AssetConfig.VersionsHistory.Restore,
				TextColor3 = versionsTheme.textColor,
				Font = Constants.FONT_BOLD,
				TextSize = Constants.FONT_SIZE_TITLE,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}),

		ItemList = versionHistory and Roact.createElement(createItemList, {
			Size = UDim2.new(1, 0, 1, -TITLE_HEIGHT * 2 - ITEM_HEIGHT),

			SelectVersion = selectVersion,

			-- The itemInfor need to be ordered
			-- I am expecting assetVersionNumber here, by checking assetVersionNumber I should be able to
			-- tell if this item is current version or not.
			ItemSize = UDim2.new(1, 0, 0, ITEM_HEIGHT),
			ItemListInfo = versionHistory,
			ItemClickCallBack = self.OnItemClicked,

			LayoutOrder = 4,
		})
	})
end

local function mapStateToProps(state, props)
	state = state or {}

	local versionHistory = state.versionHistory
	local changed = state.changed

	return {
		versionHistory = versionHistory,

		changeTable = changed,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getVersionsHistory = function(networkInterface, assetId)
			dispatch(GetVersionsHistoryRequest(networkInterface, assetId))
		end,

		makeChangeRequest = function(setting, currentValue, newValue)
			dispatch(MakeChangeRequest(setting, currentValue, newValue))
		end,
	}
end

if FFlagToolboxRemoveWithThemes then
	Versions = withContext({
		Stylizer = ContextServices.Stylizer,
	})(Versions)
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Versions)