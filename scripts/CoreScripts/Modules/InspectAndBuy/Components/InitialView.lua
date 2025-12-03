local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local PlayerNameLabel = require(InspectAndBuyFolder.Components.PlayerNameLabel)
local AvatarHeadShot = require(InspectAndBuyFolder.Components.AvatarHeadShot)
local AssetList = require(InspectAndBuyFolder.Components.AssetList)

local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)

local InitialView = Roact.PureComponent:extend("InitialView")

function InitialView:render()
	local view = self.props.view
	local detailsInformation = self.props.detailsInformation

	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local viewMapping = views[view]
			return Roact.createElement("ScrollingFrame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, viewMapping.BorderPaddingSize, 0, 10),
				Size = UDim2.new(1, -(2 * viewMapping.BorderPaddingSize), 1, -36),
				ScrollBarThickness = 0,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				Visible = not detailsInformation.viewingDetails,
				Selectable = false,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, 15),
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Top = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, viewMapping.TopSizeY),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, 10),
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Horizontal,
					}),
					AvatarHeadShot = Roact.createElement(AvatarHeadShot),
					PlayerNameLabel = Roact.createElement(PlayerNameLabel),
				}),
				AssetList = Roact.createElement(AssetList),
			})
		end,
	})
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		view = state.view,
		detailsInformation = state.detailsInformation,
	}
end)(InitialView)
