--[[
	Page navigated to after selecting an item from the
	InspectAndBuy menu. This page will show information for the item
	including thumbnail, description, favorite count, genre, creator, and
	type. It will also allow for trying on and purchasing through the
	bottom bar
]]
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local withStyle = UIBlox.Core.Style.withStyle
local ExpandableTextArea = UIBlox.App.Text.ExpandableTextArea

local InGameMenu = script.Parent.Parent.Parent
local SendInspectAndBuyAnalytics = require(InGameMenu.Utility.SendInspectAndBuyAnalytics)
local IBConstants = require(InGameMenu.InspectAndBuyConstants)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Page = require(InGameMenu.Components.Page)
local ItemInfoList = require(InGameMenu.Components.InspectAndBuyPage.ItemInfoList)
local AssetDetailNotification = require(InGameMenu.Components.InspectAndBuyPage.AssetDetailNotification)
local AssetDetailThumbnail = require(InGameMenu.Components.InspectAndBuyPage.AssetDetailThumbnail)
local TryOnViewport = require(InGameMenu.Components.InspectAndBuyPage.TryOnViewport)
local AssetDetailFavorite = require(InGameMenu.Components.InspectAndBuyPage.AssetDetailFavorite)
local AssetDetailBottomBar = require(InGameMenu.Components.InspectAndBuyPage.AssetDetailBottomBar)
local Constants = require(InGameMenu.Resources.Constants)
local GetFavoriteForItem = require(InGameMenu.Thunks.GetFavoriteForItem)
local GetCharacterModelFromUserId = require(InGameMenu.Thunks.GetCharacterModelFromUserId)
local getCanGamepadCaptureFocus = require(InGameMenu.Selectors.getCanGamepadCaptureFocus)

local TITLE_TEXT_SIZE = 24
local TEXT_FRAME_HEIGHT = 40
local VERTICAL_PADDING = 12
local HORIZONTAL_PADDING = 24
local CONTENT_PADDING = 20
local COMPACT_NUMBER_OF_LINES = 3
local THUMBSTICK_DEADZONE = 0.2
local STICK_MAX_SPEED = 1000

local AssetDetailsPage = Roact.PureComponent:extend("AssetDetailsPage")

AssetDetailsPage.validateProps = t.strictInterface({
	pageTitle = t.optional(t.string),

	-- from mapStateToProps
	bundles = t.table,
	selectedItem = t.table,
	currentPage = t.string,
	showFavoritesCount = t.boolean,
	canGamepadCaptureFocus = t.boolean,
	userId = t.number,
})

--[[
	Get Bundle Info to show instead of asset info
	Return nil if there is no relevant bundle info to show
]]
function AssetDetailsPage:getBundleInfo()
	local selectedItem = self.props.selectedItem
	if selectedItem.bundlesAssetIsIn and #selectedItem.bundlesAssetIsIn == 1 and not selectedItem.isForSale then
		local bundleId = selectedItem.bundlesAssetIsIn[1]
		return self.props.bundles[bundleId]
	end

	return nil
end

function AssetDetailsPage:attemptFetchFavorite()
	local bundleInfo = self:getBundleInfo()
	if bundleInfo then
		if bundleInfo.isFavorited == nil then
			self.props.fetchItemFavorite(bundleInfo.bundleId, Enum.AvatarItemType.Bundle)
		end
	else
		if self.props.selectedItem and self.props.selectedItem.isFavorited == nil then
			self.props.fetchItemFavorite(self.props.selectedItem.assetId, Enum.AvatarItemType.Asset)
		end
	end
end

--[[
	See if we need to include a notice on the top of the page.
	A notice will be shown if any of the following are the case:
	1. The item selected is offsale and part of more than one bundle
	2. The item selected is offsale and part of a single bundle
	3. The item selected is LC and the user has an R6 character
]]
function AssetDetailsPage:getNoticeKey(localized)
	local selectedItem = self.props.selectedItem
	local multipleBundles = selectedItem.bundlesAssetIsIn and #selectedItem.bundlesAssetIsIn > 1 and not selectedItem.isForSale
	local partOfBundle = self:getBundleInfo() ~= nil
	local assetType = selectedItem.assetTypeId
	local layeredClothingOnR6 = IBConstants.LayeredAssetTypes[assetType] ~= nil and assetType ~= tostring(Enum.AssetType.HairAccessory.Value) and
		self.localPlayerModel and self.localPlayerModel.Humanoid.RigType == Enum.HumanoidRigType.R6

	if multipleBundles then
		return localized.multipleBundlesText
	elseif partOfBundle then
		return localized.singleBundleText
	elseif layeredClothingOnR6 then
		return localized.r6AlertText
	elseif selectedItem.isLimited then
		return localized.limitedAlertText
	end

	return nil
end

function AssetDetailsPage:init()
	self.focusController = RoactGamepad.createFocusController()
	self.scrollingFrameRef = Roact.createRef()
	self.frameRef = Roact.createRef()
	self.bottomBarRef = Roact.createRef()
	self.localPlayerModel = nil

	self:setState({
		scrollingEnabled = true
	})

	self.setScrollingEnabled = function(enabled)
		local scrollingEnabled = self.state.scrollingEnabled

		if scrollingEnabled ~= enabled then
			self:setState({
				scrollingEnabled = enabled
			})
		end
	end
end

function AssetDetailsPage:handleThumbstickInput(inputObject, deltaTime)
	local stickInput = inputObject.Position
	local scrollingFrame = self.scrollingFrameRef:getValue()
	if scrollingFrame then
		local yPos = scrollingFrame.CanvasPosition.Y
		local stickVector = Vector2.new(0, 0)
		if stickInput.Magnitude >= THUMBSTICK_DEADZONE then
			stickVector = (stickInput.Magnitude - THUMBSTICK_DEADZONE) / (1 - THUMBSTICK_DEADZONE) * stickInput.Unit
		end

		local newYPos = yPos + deltaTime * -stickVector.Y * STICK_MAX_SPEED
		scrollingFrame.CanvasPosition = Vector2.new(0, newYPos)
	end
end

function AssetDetailsPage:renderWithProviders(style, localized)
	local selectedItem = self.props.selectedItem
	local numFavorites = selectedItem.numFavorites
	local bundleInfo = self:getBundleInfo()
	local description, creatorText, titleText
	if bundleInfo then
		description = bundleInfo.description
		creatorText = bundleInfo.creatorName
		titleText = bundleInfo.name
	else
		description = selectedItem.description
		creatorText = selectedItem.creatorName
		titleText = selectedItem.name
	end

	local noticeKey = self:getNoticeKey(localized)

	return Roact.createElement(Page, {
		useLeaveButton = false,
		pageTitle = localized.pageTitleText,
		titleChildren = nil,
	}, {
		AssetDetailsPageFrame = Roact.createElement(RoactGamepad.Focusable.Frame, {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,

			focusController = self.focusController,
			defaultChild = self.bottomBarRef,
			[Roact.Ref] = self.frameRef,
			inputBindings = {
				ScrollPage = RoactGamepad.Input.onStep(Enum.KeyCode.Thumbstick2, function(inputObject, deltaTime)
					self:handleThumbstickInput(inputObject, deltaTime)
				end),
			}
		}, {
			ScrollingFrame = Roact.createElement("ScrollingFrame", {
				Size = UDim2.fromScale(1, 1),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				ScrollBarImageTransparency = 1,
				CanvasSize = UDim2.fromScale(1, 1),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ScrollingEnabled = self.state.scrollingEnabled,
				[Roact.Ref] = self.scrollingFrameRef,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, CONTENT_PADDING),
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				UIPadding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, VERTICAL_PADDING),
					PaddingLeft = UDim.new(0, HORIZONTAL_PADDING),
					PaddingRight = UDim.new(0, HORIZONTAL_PADDING),
				}),
				AssetDetailNotification = noticeKey and Roact.createElement(AssetDetailNotification, {
					noticeKey = noticeKey
				}) or nil,
				TitleText = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -10, 0, TEXT_FRAME_HEIGHT),
					LayoutOrder = 1,
					Text = titleText,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					RichText = true,
					TextWrapped = true,
					TextSize = TITLE_TEXT_SIZE,
					Font = Enum.Font.GothamSemibold,
					TextColor3 = Color3.fromRGB(255, 255, 255),
				}, {
					UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 32,
					})
				}),
				AssetDetailThumbnail = Roact.createElement(AssetDetailThumbnail, {
					LayoutOrder = 2,
					bundleInfo = bundleInfo,
					selectedItem = self.props.selectedItem,
				}),
				TryOnViewport = self.localPlayerModel and Roact.createElement(TryOnViewport, {
					LayoutOrder = 2,
					localPlayerModel = self.localPlayerModel,
					setScrollingEnabled = self.setScrollingEnabled,
				}),
				DetailsDescription = Roact.createElement(ExpandableTextArea, {
					LayoutOrder = 3,
					Text = description,
					width = UDim.new(1, -20),
					compactNumberOfLines = COMPACT_NUMBER_OF_LINES,
				}),
				AssetDetailFavorite = self.props.showFavoritesCount and Roact.createElement(AssetDetailFavorite, {
					LayoutOrder = 4,
					numFavorites = numFavorites,
					bundleInfo = bundleInfo,
					selectedItem = self.props.selectedItem,
				}) or nil,
				ItemInfoList = Roact.createElement(ItemInfoList, {
					LayoutOrder = 5,
					genreText = (not bundleInfo and selectedItem.genres) and table.concat(selectedItem.genres, ", ") or nil,
					creatorText = creatorText,
					itemType = bundleInfo and Enum.AvatarItemType.Bundle or Enum.AvatarItemType.Asset,
					itemSubType = not bundleInfo and selectedItem.assetTypeId or nil,
					showAllDividers = true,
				}),
				BottomBarPaddingFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, IBConstants.BOTTOM_BAR_PADDING + IBConstants.BUTTON_HEIGHT),
					BackgroundTransparency = 1,
					LayoutOrder = 6,
				}),
			}),
			AssetDetailBottomBar = Roact.createElement(AssetDetailBottomBar, {
				bundleInfo = bundleInfo,
				localPlayerModel = self.localPlayerModel,
				[Roact.Ref] = self.bottomBarRef,
				focusController = self.focusController,
				isFocused = self.props.canGamepadCaptureFocus,
			}),
		})
	})
end

function AssetDetailsPage:render()
	return withStyle(function(style)
		return withLocalization({
			pageTitleText = "CoreScripts.InGameMenu.Title.Item",
			multipleBundlesText = "CoreScripts.InGameMenu.Alert.MultipleBundles",
			singleBundleText = "CoreScripts.InGameMenu.Alert.SingleBundle",
			r6AlertText = "CoreScripts.InGameMenu.Alert.LConR6",
			limitedAlertText = "CoreScripts.InGameMenu.Alert.ResellersOnly",
		})(function(localized)
			return self:renderWithProviders(style, localized)
		end)
	end)
end

function AssetDetailsPage:didMount()
	local localUserId = (Players.LocalPlayer :: Player).UserId
	self.props.getCharacterModelFromUserId(localUserId, true, function(localPlayerModel)
		self.localPlayerModel = localPlayerModel
	end)
end

function AssetDetailsPage:didUpdate(prevProps)
	-- When navigating away from the AssetDetailsPage, reset the scrolling frame
	-- CanvasPosition. This way, if a user had scrolled down on the page when inspecting
	-- one item, it will not remain in that position when going to inspect another
	if self.props.currentPage ~= prevProps.currentPage then
		if prevProps.currentPage == Constants.InspectAndBuyAssetDetailsPageKey then
			-- Leaving Page
			local scrollingFrame = self.scrollingFrameRef:getValue()
			if scrollingFrame then
				scrollingFrame.CanvasPosition = Vector2.new(0, 0)
			end
		elseif self.props.currentPage == Constants.InspectAndBuyAssetDetailsPageKey then
			-- Entering Page
			self:attemptFetchFavorite()

			local bundleInfo = self:getBundleInfo()
			local analyticsFields = {
				itemType = bundleInfo and tostring(Enum.AvatarItemType.Bundle) or tostring(Enum.AvatarItemType.Asset),
				itemID = bundleInfo and bundleInfo.bundleId or self.props.selectedItem.assetId,
			}
			SendInspectAndBuyAnalytics("itemDetailView", self.props.userId, analyticsFields)
		end
	end

	if self.props.canGamepadCaptureFocus and not prevProps.canGamepadCaptureFocus then
		self.focusController.captureFocus()
	elseif not self.props.canGamepadCaptureFocus and prevProps.canGamepadCaptureFocus then
		self.focusController.releaseFocus()
	end
end

local function mapStateToProps(state, props)
	return {
		selectedItem = state.inspectAndBuy.SelectedItem,
		bundles = state.inspectAndBuy.Bundles,
		currentPage = state.menuPage,
		showFavoritesCount = not state.inspectAndBuy.IsSubjectToChinaPolicies,
		canGamepadCaptureFocus = getCanGamepadCaptureFocus(state, Constants.InspectAndBuyAssetDetailsPageKey),
		userId = state.inspectAndBuy.UserId,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		fetchItemFavorite = function(itemId, itemType)
			dispatch(GetFavoriteForItem(itemId, itemType))
		end,
		getCharacterModelFromUserId = function(userId, isLocalPlayer, callback)
			dispatch(GetCharacterModelFromUserId(userId, isLocalPlayer, callback))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetDetailsPage)
