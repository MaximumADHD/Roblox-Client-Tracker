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

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Cryo = require(Packages.Cryo)
local Framework = require(Packages.Framework)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local VersionItem = require(AssetConfiguration.VersionItem)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local Constants = require(Util.Constants)

local withLocalization = ContextHelper.withLocalization
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local getNetwork = ContextGetter.getNetwork

local Requests = Plugin.Core.Networking.Requests
local GetVersionsHistoryRequest = require(Requests.GetVersionsHistoryRequest)
local MakeChangeRequest = require(Requests.MakeChangeRequest)

local FFlagInfiniteScrollerForVersions2 = game:getFastFlag("InfiniteScrollerForVersions2")
local GetVersionsHistoryPageRequest
local InfiniteScrollingGrid
if FFlagInfiniteScrollerForVersions2 then
	GetVersionsHistoryPageRequest = require(Requests.GetVersionsHistoryPageRequest)
	InfiniteScrollingGrid = Framework.UI.InfiniteScrollingGrid
end

local Versions = Roact.PureComponent:extend("Versions")

local TITLE_HEIGHT = 30
local ITEM_HEIGHT = 80
-- Sentinel value to signal that a page has been loaded so we can being the
-- process of building the scrolling grid table; see didUpdate() for details.
local INITIAL_PAGE = "_initial_page_"

-- Let's see in the future if the current previous items are the same.
-- Inside this function, we need to insert DividerPosition and Size information.
local function renderItem(props, isCurrent)
	props.IsCurrent = isCurrent
	props.DividerAnchorPoint = Vector2.new(0.5, 1)
	if isCurrent then
		props.DividerPosition = UDim2.new(0.5, 0, 1, 0)
		props.DividerSize = UDim2.new(1, -30, 0, 1)
	else
		props.DividerPosition = UDim2.new(0.5, 40, 1, 0)
		props.DividerSize = UDim2.new(1, -120, 0, 1)
	end

	return Roact.createElement(VersionItem, props)
end

-- Stubs to redirect with additional
local function renderCurrentItem(props)
	return renderItem(props, true)
end

local function renderListItem(props)
	return renderItem(props, false)
end

function Versions:init(props)
	local defaultVersion = 0
	if props.changeTable and props.changeTable.VersionItemSelect then
		defaultVersion = props.changeTable.VersionItemSelect
	end

	self.state = {
		currentItem = {},

		selectVersion = defaultVersion,

		-- Infinite scrolling grid requires that the underlying item table is
		-- persistent (creating new tables every time we extend the data causes
		-- the canvas position to reset). Therefore, we put the version data for
		-- the *previous* versions in the state to persist.
		-- We've chosen to do self.state.previousVersions instead of
		-- self.previousVersions. By doing it in state, we can check strictly
		-- when we do an update (see didUpdate()) and automatically redraw with
		-- a call to setState. If we did self.previousVersions, we'd have to
		-- test in every call to render.
		previousVersions = FFlagInfiniteScrollerForVersions2 and {} or nil,
	}

	if FFlagInfiniteScrollerForVersions2 then
		-- The page cursor for the page we've requested but not yet acknowledged receipt.
		self.loadingPage = INITIAL_PAGE
	end

	self.OnItemClicked = function(item)
		local currentAssetVersion = self.state.selectVersion
		local newAssetVersion = item.assetVersionNumber
		if currentAssetVersion == item.assetVersionNumber then
			newAssetVersion = nil
		end

		if newAssetVersion then
			self.props.makeChangeRequest("VersionItemSelect", currentAssetVersion, newAssetVersion)

			self:setState({
				selectVersion = newAssetVersion,
			})
		else
			self.props.makeChangeRequest("VersionItemSelect", newAssetVersion, newAssetVersion)

			self:setState({
				selectVersion = 0,
			})
		end
	end

	self.GetItemKey = function(item)
		-- InfiniteScrollingGrid stores all rendered items internally. So, if an item
		-- has multiple states, each one needs a unique *id* so that the grid will
		-- distinguish between the states and change what is visible. In this case,
		-- we make the id [version number]_[is_selected], i.e., 10_1 (version 10 is
		-- selected) or 9_0 (version 9 is not selected).
		return "" .. item.assetVersionNumber .. "_" .. (item.assetVersionNumber == self.state.selectVersion and 1 or 0)
	end

	self.RenderItem = function(i, item)
		return Roact.createElement(renderListItem, {
			ItemInfo = item,
			LayoutOrder = i,
			Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
			SelectVersion = self.state.selectVersion,
			ItemClickCallBack = self.OnItemClicked,
		})
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

-- Makes sure all *previous* versions in `sourceVersions` are present in
-- `targetVersions`. They should be present in `targetVersions` in the same
-- order they appear in `sourceVersions`. A "previous" version is every version
-- after the first.
--
-- That means, sourceVersions[2] maps to targetVersions[1], 3 -> 2, 4 -> 3, etc.
local function copyPreviousVersions(sourceVersions, targetVersions)
	-- SourceVersions has S items and targetVersions has T items.
	-- Our invariant is that targetVersion[t] == sourceVersion[t + 1]. So, we
	-- want to read all items from source in the range [T+2, S] and write them
	-- to the range [T+1, S-1] into target.
	local T = #targetVersions
	local S = #sourceVersions
	for i = T + 2, S do
		targetVersions[i - 1] = sourceVersions[i]
	end
end

function Versions:didUpdate(previousProps, previousState)
	local currentItem = previousState.currentItem

	local versionHistory = self.props.versionHistory
	if FFlagInfiniteScrollerForVersions2 then
		if versionHistory then
			if (not next(currentItem)) and versionHistory.data then
				self:setState({
					currentItem = extractFirstVersionItem(versionHistory.data),
				})
			end
		end
	else
		if (not next(currentItem)) and versionHistory then
			self:setState({
				currentItem = extractFirstVersionItem(versionHistory),
			})
		end
	end

	-- If loadingPage is not nil, we are in expectation that some new version
	-- data should be available. If not now, then soon.
	-- If loadingPage has the sentinel INITIAL_PAGE value, then it's the
	-- first page of data that was generated upon widget creation.
	-- Otherwise, we test to see if the *new* page to read is different from
	-- the previous page we've read; that suggests we've finished reading
	-- the page; clear the loadingPage data.
	-- If version history is nil, the initial page hasn't even loaded, so just
	-- bail out.
	if FFlagInfiniteScrollerForVersions2 and self.loadingPage and versionHistory then
		local loadedInitialPage = (self.loadingPage == INITIAL_PAGE)
		local loadedNextPage = (
			previousProps.versionHistory
			and previousProps.versionHistory.nextPageCursor ~= versionHistory.nextPageCursor
		)
		if loadedInitialPage or loadedNextPage then
			self.loadingPage = nil
			-- We've completed reading in new data. That means we need to read
			-- the newly added previous versions into our state. Ideally,
			-- we'd just feed the props data through; that is the *right*
			-- thing to do. However, to accommodate the problematic scrolling
			-- grid, we need to extract the newest page of version data from
			-- props and append it to *persistent* state. In fact, we're writing
			-- directly to the state and passing it back in to trigger
			-- state-update related actions. But the table is always the same
			-- table for the grid's sake.
			copyPreviousVersions(versionHistory.data, self.state.previousVersions)
			self:setState({
				previousVersions = self.state.previousVersions,
			})
		end
	end
end

local createItemList
if not FFlagInfiniteScrollerForVersions2 then
	createItemList = function(props)
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

			itemList[item.assetVersionNumber] = Roact.createElement(renderListItem, {
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

			LayoutOrder = props.LayoutOrder,
		}, itemList)
	end
end

function Versions:render()
	return withLocalization(function(localization, localizedContent)
		return self:renderContent(nil, localization, localizedContent)
	end)
end

function Versions:renderContent(theme, localization, localizedContent)
	local props = self.props
	local state = self.state
	theme = props.Stylizer

	local versionsTheme = theme.versions

	local LayoutOrder = props.LayoutOrder
	local Size = props.Size

	if FFlagInfiniteScrollerForVersions2 then
		local nextPageCursor = nil
		local hasPreviousVersions = nil
		local previousVersions = nil
		local versionHistoryData = nil
		if props.versionHistory then
			nextPageCursor = props.versionHistory.nextPageCursor
			versionHistoryData = props.versionHistory.data
			previousVersions = state.previousVersions
			hasPreviousVersions = #previousVersions > 0
		end

		local currentItem = state.currentItem
		local selectVersion = state.selectVersion

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = LayoutOrder,
			Size = Size,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Padding = UDim.new(0, 20),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),

			Title = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),
			}, {
				VersionsLabel = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT_BOLD,
					Position = UDim2.new(0, 10, 0, 0),
					Size = UDim2.new(0, 50, 0, TITLE_HEIGHT),
					Text = localizedContent.AssetConfig.VersionsHistory.Current,
					TextColor3 = versionsTheme.textColor,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),

			CurrentItem = next(currentItem) and Roact.createElement(renderCurrentItem, {
				ItemInfo = currentItem,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),
			}),

			PreviousVersion = hasPreviousVersions and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),
			}, {
				VersionsLabel = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT_BOLD,
					Position = UDim2.new(0, 10, 0, 0),
					Size = UDim2.new(0, 50, 0, TITLE_HEIGHT),
					Text = localizedContent.AssetConfig.VersionsHistory.Restore,
					TextColor3 = versionsTheme.textColor,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),

			PreviousScroll = hasPreviousVersions
				and Roact.createElement("Frame", {
					-- The previous elements include two titles and one item. For unknown reasons
					-- we also have to account for the height of the button bar at the bottom
					-- of the dialog. This shouldn't be the case, but leaving out the magic
					-- number, the scrolling contents roll over the buttons.
					BackgroundTransparency = 1,
					LayoutOrder = 4,
					Size = UDim2.new(1, 0, 1, -2 * TITLE_HEIGHT - ITEM_HEIGHT - 70),
				}, {
					InfiniteScroll = Roact.createElement(InfiniteScrollingGrid, {
						AbsoluteMax = #previousVersions,
						BackgroundTransparency = 1,
						CellPadding = UDim2.new(0, 0, 0, 0),
						-- A CellSize width of 100% confuses the grid algorithm. Reduce
						-- it by a pixel to keep things well behaved.
						CellSize = UDim2.new(1, -1, 0, ITEM_HEIGHT),
						GetItemKey = self.GetItemKey,
						Items = previousVersions,
						LoadRange = function(offset, count)
							-- InfiniteScrollingGrid will invoke this callback *all the time*! We don't want
							-- to actually pull the next page of data until we know we have to:
							--    - The range requested goes beyond our current count of versions
							--    - We're not currently loading data
							--    - There is actually a next page to load
							--    - We actually have a version history from which we can get the necessary asset id.
							if
								offset + count > #previousVersions
								and not self.loadingPage
								and nextPageCursor ~= nil
								and versionHistoryData[1]
							then
								self.loadingPage = nextPageCursor
								props.getVersionHistoryPage(
									getNetwork(self),
									versionHistoryData[1].assetId,
									nextPageCursor
								)
							end
						end,
						RenderItem = self.RenderItem,
					}),
				}),
		})
	else
		local versionHistory = props.versionHistory

		local currentItem = state.currentItem
		local selectVersion = state.selectVersion

		return Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			CanvasSize = (versionHistory and UDim2.new(0, 0, 1, #versionHistory * ITEM_HEIGHT)) or nil,

			LayoutOrder = LayoutOrder,
			ScrollBarImageColor3 = versionsTheme.textColor,
			Size = Size,
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
			}, {
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

			CurrentItem = next(currentItem) and Roact.createElement(renderCurrentItem, {
				Size = UDim2.new(1, 0, 0, ITEM_HEIGHT),

				ItemInfo = currentItem,

				LayoutOrder = 2,
			}),

			PreviousVersion = Roact.createElement("Frame", {
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

			ItemList = versionHistory
				and Roact.createElement(createItemList, {
					Size = UDim2.new(1, 0, 1, -TITLE_HEIGHT * 2 - ITEM_HEIGHT),

					SelectVersion = selectVersion,

					-- The itemInfor need to be ordered
					-- I am expecting assetVersionNumber here, by checking assetVersionNumber I should be able to
					-- tell if this item is current version or not.
					ItemSize = UDim2.new(1, 0, 0, ITEM_HEIGHT),
					ItemListInfo = versionHistory,
					ItemClickCallBack = self.OnItemClicked,

					LayoutOrder = 4,
				}),
		})
	end
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

		getVersionHistoryPage = FFlagInfiniteScrollerForVersions2 and function(networkInterface, assetId, pageCursor)
			dispatch(GetVersionsHistoryPageRequest(networkInterface, assetId, pageCursor))
		end or nil,

		makeChangeRequest = function(setting, currentValue, newValue)
			dispatch(MakeChangeRequest(setting, currentValue, newValue))
		end,
	}
end

Versions = withContext({
	Stylizer = ContextServices.Stylizer,
})(Versions)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Versions)
