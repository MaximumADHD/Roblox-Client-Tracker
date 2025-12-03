local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local Colors = require(InspectAndBuyFolder.Colors)
local Constants = require(InspectAndBuyFolder.Constants)
local SetDetailsInformation = require(InspectAndBuyFolder.Actions.SetDetailsInformation)
local getSelectionImageObjectRegular = require(InspectAndBuyFolder.getSelectionImageObjectRegular)
local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)
local LimitedLabel = require(InspectAndBuyFolder.Components.LimitedLabel)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)

local GetFFlagDisplayCollectiblesIcon = require(InspectAndBuyFolder.Flags.GetFFlagDisplayCollectiblesIcon)
local GetFFlagIBEnableCollectiblesSystemSupport =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblesSystemSupport)

local LIMITED_ITEM_IMAGE = "icons/status/item/limited"

local AssetCard = Roact.Component:extend("AssetCard")

function AssetCard:init()
	self.selectedImage = getSelectionImageObjectRegular()
end

function AssetCard:render()
	local view = self.props.view
	local equipped = self.props.equipped
	local assetInfo = self.props.assetInfo
	local openDetails = self.props.openDetails
	local assetCardSizeX = self.props.assetCardSizeX
	local icon = Images[LIMITED_ITEM_IMAGE]
	local imageSize = icon and icon.ImageRectSize / Images.ImagesResolutionScale or Vector2.new(0, 0)

	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local viewMapping = views[view]
			local isCollectibles = GetFFlagDisplayCollectiblesIcon() and UtilityFunctions.isCollectibles(assetInfo)

			-- Based on the asset information, determine if the limited and
			-- unique icons need to be displayed on the asset card.
			local showLimitedIcon
			local showUniqueIcon
			local limitedLabelFrameSize
			if GetFFlagIBEnableCollectiblesSystemSupport() then
				showLimitedIcon = UtilityFunctions.hasLimitedQuantity(assetInfo)
				showUniqueIcon = UtilityFunctions.isLimited1Point0_LimitedUnique(assetInfo)
					or UtilityFunctions.isLimited2Point0_Or_LimitedCollectible(assetInfo)

				-- Double the offset if the item is limited and unique and will show both icons.
				local imageSizeOffset = if showUniqueIcon
					then Constants.LimitedIconFrameSizeXOffset * 2
					else Constants.LimitedIconFrameSizeXOffset
				limitedLabelFrameSize =
					UDim2.new(0, imageSize.X + imageSizeOffset, 0, imageSize.Y + Constants.LimitedIconFrameSizeYOffset)
			end

			return Roact.createElement("ImageButton", {
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				BackgroundColor3 = Colors.Gray2,
				Selectable = true,
				SelectionImageObject = self.selectedImage,
				[Roact.Event.Activated] = function()
					openDetails(assetInfo.assetId)
				end,
			}, {
				AssetThumbnail = Roact.createElement("ImageButton", {
					Size = UDim2.new(1, 0, 0, assetCardSizeX),
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					BackgroundColor3 = Colors.Graphite,
					Selectable = false,
					AutoButtonColor = false,
					Image = "rbxthumb://type=Asset&id=" .. assetInfo.assetId .. "&w=150&h=150",
					[Roact.Event.Activated] = function()
						openDetails(assetInfo.assetId)
					end,
				}),
				AssetNameBackground = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, -assetCardSizeX),
					Position = UDim2.new(0, 0, 0, assetCardSizeX),
					BorderSizePixel = 0,
					BackgroundColor3 = Color3.fromRGB(44, 45, 47),
				}, {
					AssetName = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, -10, 1, -10),
						TextTruncate = Enum.TextTruncate.AtEnd,
						Position = UDim2.new(0, 5, 0, 5),
						TextWrapped = true,
						Text = assetInfo.name or "",
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
						TextSize = 12,
						TextScaled = true,
						Font = AppFonts.default:getDefault(),
						TextColor3 = Color3.new(1, 1, 1),
					}, {
						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = viewMapping.AssetTextMaxSize,
						}),
					}),
				}),
				EquippedFrame = Roact.createElement("ImageLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					ZIndex = 2,
					Visible = equipped,
					Image = "rbxasset://textures/ui/InspectMenu/gr-item-selector.png",
					ImageColor3 = Colors.Green,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2.5, 2.5, 2.5, 2.5),
				}),
				Corner = Roact.createElement("ImageLabel", {
					Position = UDim2.new(1, -25, 0, 0),
					Size = UDim2.new(0, 25, 0, 25),
					BackgroundTransparency = 1,
					ZIndex = 2,
					Visible = equipped,
					Image = "rbxasset://textures/ui/InspectMenu/gr-item-selector-triangle.png",
					ImageColor3 = Colors.Green,
				}),
				-- Adding an icon for ugc limited items.
				LimitedLabel = (
					if GetFFlagIBEnableCollectiblesSystemSupport() then showLimitedIcon else isCollectibles
				)
					and Roact.createElement(LimitedLabel, {
						frameSize = if GetFFlagIBEnableCollectiblesSystemSupport()
							then limitedLabelFrameSize
							else UDim2.new(0, imageSize.X + 18, 0, imageSize.Y + 4),
						framePosition = UDim2.new(0, 16, 0, assetCardSizeX - imageSize.Y - 20),
						imageSize = UDim2.new(0, imageSize.X, 0, imageSize.Y),
						imagePosition = UDim2.new(0, 5, 0, 2),
						textSize = UDim2.new(0, imageSize.X, 0, imageSize.Y),
						textPosition = UDim2.new(0, 5 + imageSize.X, 0, 2),
						text = if GetFFlagIBEnableCollectiblesSystemSupport() and not showUniqueIcon then nil else "#",
					}),
			})
		end,
	})
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local assetId = props.assetInfo.assetId

	return {
		view = state.view,
		equipped = state.equippedAssets[assetId] == true,
		locale = state.locale,
	}
end, function(dispatch)
	return {
		openDetails = function(assetId)
			dispatch(SetDetailsInformation(true, assetId))
		end,
	}
end)(AssetCard)
