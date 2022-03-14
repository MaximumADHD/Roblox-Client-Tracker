local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Colors = require(InspectAndBuyFolder.Colors)
local SetDetailsInformation = require(InspectAndBuyFolder.Actions.SetDetailsInformation)
local getSelectionImageObjectRegular = require(InspectAndBuyFolder.getSelectionImageObjectRegular)
local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)

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

	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local viewMapping = views[view]

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
						Font = Enum.Font.Gotham,
						TextColor3 = Color3.new(1, 1, 1),
					}, {
						UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = viewMapping.AssetTextMaxSize,
						})
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
				})
			})
		end
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = props.assetInfo.assetId

		return {
			view = state.view,
			equipped = state.equippedAssets[assetId] == true,
		}
	end,
	function(dispatch)
		return {
			openDetails = function(assetId)
				dispatch(SetDetailsInformation(true, assetId))
			end,
		}
	end
)(AssetCard)
