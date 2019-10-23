--[[
	This component is responsible for rendering available asset for override when publishing new asset.
	It contains a drop down menu, defualt to current user. And will show names for all the group the user can manage.
	On this page, there will also be a scrolling frame contains all the asset item that is clickable. Clicking any asset
	will select the asset, then clicking the "Apply" button will override it.

	Necesarry Props:
	Size, UDim2
	assetTypeEnum, Enum, assetTypeEnum that contains both the name and value of it.
	instances, array of instances, used to generate serialised instance data for uploading.
	onOverrideAssetSelected, function, call back function called when a asset is selected for overriding.

	Optional Props:
	LayoutOrder, number, will used by the layouter to override the position.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local OverrideAssetView = require(AssetConfiguration.OverrideAssetView)
local DropdownMenu = require(Plugin.Core.Components.DropdownMenu)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local Constants = require(Util.Constants)
local AssetConfigUtil = require(Util.AssetConfigUtil)
local getUserId = require(Util.getUserId)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local getNetwork = ContextGetter.getNetwork

local Requests = Plugin.Core.Networking.Requests
local GetOverrideAssetRequest = require(Requests.GetOverrideAssetRequest)
local GetMyGroupsRequest = require(Requests.GetMyGroupsRequest)

local OverrideAsset = Roact.PureComponent:extend("OverrideAsset")

local TITLE_HEIGHT = 30
local ITEM_HEIGHT = 80

function OverrideAsset:init(props)
	self.dropdownContent = {
		{name = "Me", creatorType = "User", creatorId = getUserId()}
	}
	self.groupAdded = false

	self.state = {
		selectIndex = 1,
		selectItem = self.dropdownContent,
	}

	self.onDropDownSelect = function(index)
		local item = self.dropdownContent[index]
		self.props.getOverrideAssets(getNetwork(self), item.creatorType, item.creatorId, 1)
		self:setState({
			selectIndex = index,
			selectItem = item,
		})
	end

	self.getOverrideAssetsFunc = function(targetPage)
		local selectItem = self.state.selectItem
		self.props.getOverrideAssets(getNetwork(self), selectItem.creatorType, selectItem.creatorId, targetPage)
	end
end

function OverrideAsset:didMount()
	local userId = getUserId()
	-- Initial request
	self.props.getOverrideAssets(getNetwork(self), "User", userId, 1)
	self.props.getMyGroups(getNetwork(self), userId)
end


function OverrideAsset:render()
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			local props = self.props
			local state = self.state
			local assetConfigTheme = theme.assetConfig

			local LayoutOrder = props.LayoutOrder
			local Size = props.Size

			local assetTypeEnum = props.assetTypeEnum
			local instances = props.instances
			local onOverrideAssetSelected = props.onOverrideAssetSelected

			local filteredResultsArray = props.filteredResultsArray
			local getOverrideAssets = props.getOverrideAssets

			local selectIndex = state.selectIndex

			self.dropdownContent = AssetConfigUtil.getOwnerDropDownContent(props.groupsArray, localizedContent)

			return Roact.createElement("Frame", {
				Size = Size,

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				LayoutOrder = LayoutOrder
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 46),
					PaddingLeft = UDim.new(0, 24),
					PaddingRight = UDim.new(0, 24),
					PaddingTop = UDim.new(0, 46),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 20),
				}),

				Title = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),

					BackgroundTransparency = 1,
					BorderSizePixel = 0,

					Text = localizedContent.AssetConfig.Override.Title,
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_LARGE,
					TextColor3 = assetConfigTheme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,

					LayoutOrder = 1,
				}),

				DropdownMenu = Roact.createElement(DropdownMenu, {
					Size = UDim2.new(0, 336, 0, 40),

					selectedDropDownIndex = selectIndex,
					rowHeight = 40,

					items = self.dropdownContent,
					onItemClicked = self.onDropDownSelect,

					LayoutOrder = 2,
				}),

				ScrollingItems = Roact.createElement(OverrideAssetView, {
					Size = UDim2.new(1, 0, 1, - TITLE_HEIGHT - 40),

					assetTypeEnum = assetTypeEnum,
					instances = instances,
					resultsArray = filteredResultsArray,
					onOverrideAssetSelected = onOverrideAssetSelected,
					getOverrideAssets = self.getOverrideAssetsFunc,

					LayoutOrder = 3,
				})
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		totalResults = state.totalResults,
		resultsArray = state.resultsArray,
		filteredResultsArray = state.filteredResultsArray,
		groupsArray = state.groupsArray or {}
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getOverrideAssets = function(networkInterface, creatorType, creatorId, targetPage)
			dispatch(GetOverrideAssetRequest(networkInterface, creatorType, creatorId, targetPage))
		end,

		getMyGroups = function(networkInterface, userId)
			dispatch(GetMyGroupsRequest(networkInterface, userId))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(OverrideAsset)