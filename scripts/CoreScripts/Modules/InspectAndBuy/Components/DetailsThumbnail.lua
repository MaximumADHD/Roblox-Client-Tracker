local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local InspectAndBuyFolder = script.Parent.Parent
local LimitedLabel = require(InspectAndBuyFolder.Components.LimitedLabel)
local Constants = require(InspectAndBuyFolder.Constants)
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)

local GetFFlagDisplayCollectiblesIcon = require(InspectAndBuyFolder.Flags.GetFFlagDisplayCollectiblesIcon)
local GetFFlagIBEnableCollectiblesSystemSupport =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
local FFlagFixBundleThumbnailOnDetailPage = game:DefineFastFlag("FixBundleThumbnailOnDetailPage", false)

local DetailsThumbnail = Roact.PureComponent:extend("DetailsThumbnail")

local LIMITED_ITEM = "InGame.InspectMenu.Label.LimitedItems"
local LIMITED_ITEM_IMAGE = "icons/status/item/limited"

local function isPartOfBundleAndOffsale(assetInfo)
	return assetInfo and assetInfo.parentBundleId ~= nil or false
end

function DetailsThumbnail:getUrl()
	local assetInfo = self.props.assetInfo
	local detailsInformation = self.props.detailsInformation
	local bundles = self.props.bundles
	local bundleId = UtilityFunctions.getBundleId(assetInfo)
	local partOfBundleAndOffsale = isPartOfBundleAndOffsale(assetInfo)
	local url = ""

	-- If the asset is part of a bundle and that bundle does
	-- not include a costumeId with which to get a thumbnail,
	-- use the asset's thumbnail url
	if partOfBundleAndOffsale and bundles[bundleId] and bundles[bundleId].costumeId then
		if FFlagFixBundleThumbnailOnDetailPage then
			url = "rbxthumb://type=BundleThumbnail&id=" .. tostring(bundleId) .. "&w=420&h=420"
		else
			url = "rbxthumb://type=Outfit&id=" .. bundles[bundleId].costumeId .. "&w=420&h=420"
		end
	else
		local assetId = detailsInformation.assetId
		url = "rbxthumb://type=Asset&id=" .. assetId .. "&w=420&h=420"
	end

	return url
end

function DetailsThumbnail:render()
	local view = self.props.view
	local detailsInformation = self.props.detailsInformation
	local tryingOnInfo = self.props.tryingOnInfo
	local locale = self.props.locale
	local assetInfo = self.props.assetInfo
	local icon = Images[LIMITED_ITEM_IMAGE]
	local imageSize = icon and icon.ImageRectSize / Images.ImagesResolutionScale or Vector2.new(0, 0)

	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local viewMapping = views[view]
			local isCollectibles = GetFFlagDisplayCollectiblesIcon() and UtilityFunctions.isCollectibles(assetInfo)

			local showLimitedIcon
			local showUniqueIcon
			local limitedLabelFrameSize
			local limitedText
			-- Based on the asset information, determine if the limited and
			-- unique icons need to be displayed on the asset card.
			if GetFFlagIBEnableCollectiblesSystemSupport() and assetInfo then
				showLimitedIcon = UtilityFunctions.hasLimitedQuantity(assetInfo)
				showUniqueIcon = UtilityFunctions.isLimited1Point0_LimitedUnique(assetInfo)
					or UtilityFunctions.isLimited2Point0_Or_LimitedCollectible(assetInfo)

				local imageSizeOffset = if showUniqueIcon
					then Constants.LimitedIconFrameSizeXOffset * 2
					else Constants.LimitedIconFrameSizeXOffset
				limitedLabelFrameSize =
					UDim2.new(0, imageSize.X + imageSizeOffset, 0, imageSize.Y + Constants.LimitedIconFrameSizeYOffset)

				if showUniqueIcon then
					limitedText = "#" .. "    " .. RobloxTranslator:FormatByKeyForLocale(LIMITED_ITEM, locale)
				else
					limitedText = "    " .. RobloxTranslator:FormatByKeyForLocale(LIMITED_ITEM, locale)
				end
			end

			return Roact.createElement("Frame", {
				Position = viewMapping.DetailsThumbnailFramePosition,
				Size = UDim2.new(
					1,
					0,
					0,
					GetFFlagDisplayCollectiblesIcon() and Constants.DetailsThumbnailFrameHeight or 300
				),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Visible = not tryingOnInfo.tryingOn,
			}, {
				Thumbnail = detailsInformation.viewingDetails and Roact.createElement("ImageLabel", {
					Position = viewMapping.DetailsThumbnailPosition,
					AnchorPoint = viewMapping.DetailsThumbnailAnchorPoint,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = self:getUrl(),
				}, {
					AspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
						AspectRatio = 1,
						AspectType = Enum.AspectType.FitWithinMaxSize,
						DominantAxis = viewMapping.DetailsThumbnailARDominantAxis,
					}),
				}),
				-- Adding an icon for ugc limited items.
				LimitedLabel = (
					if GetFFlagIBEnableCollectiblesSystemSupport() then showLimitedIcon else isCollectibles
				)
					and Roact.createElement(LimitedLabel, {
						frameSize = if GetFFlagIBEnableCollectiblesSystemSupport()
							then limitedLabelFrameSize
							else UDim2.new(0, imageSize.X + 18, 0, imageSize.Y + 6),
						framePosition = UDim2.new(0, 0, 0, Constants.DetailsThumbnailFrameHeight - imageSize.Y - 8),
						imageSize = UDim2.new(0, imageSize.X, 0, imageSize.Y),
						imagePosition = UDim2.new(0, 4, 0, 3),
						textSize = UDim2.new(0, 4 + imageSize.X, 0, imageSize.Y),
						textPosition = UDim2.new(0, 5 + imageSize.X, 0, 3),
						text = if GetFFlagIBEnableCollectiblesSystemSupport()
							then limitedText
							else "#" .. "    " .. RobloxTranslator:FormatByKeyForLocale(LIMITED_ITEM, locale),
					}),
			})
		end,
	})
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local assetId = state.detailsInformation.assetId

	return {
		view = state.view,
		tryingOnInfo = state.tryingOnInfo,
		detailsInformation = state.detailsInformation,
		assetInfo = state.assets[assetId],
		locale = state.locale,
		bundles = state.bundles,
	}
end)(DetailsThumbnail)
