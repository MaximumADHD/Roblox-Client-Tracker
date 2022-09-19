--[[
	Notification for AssetDetailsPage of the InspectAndBuy menu
	This is meant to display relevant information for some aspect of
	potentially unexpected change when going from the landing page to the 
	asset details page.
	1. User selects an asset but is given a bundle to try on since the asset is 
		part of a bundle and offsale
	2. User selects an asset but is unpurchasable because it is offsale and part of
		multiple bundles
	3. User can't try on an LC item since they are R6
]]

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local AssetDetailNotification = Roact.PureComponent:extend("AssetDetailNotification")

local ROBLOX_TILT_ICON = Images["icons/status/alert_small"]
local PADDING = 10
local ICON_SIZE = 16
local TEXT_SIZE = 12
local TEXT_PADDING = 30
local FRAME_HEIGHT = 45

AssetDetailNotification.validateProps = t.strictInterface({
	noticeKey = t.optional(t.string),
})

function AssetDetailNotification:render()
	local noticeKey = self.props.noticeKey

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, -PADDING, 0, FRAME_HEIGHT),
			LayoutOrder = 0,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		} , {
			UIListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, PADDING),
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			NotificationIcon = Roact.createElement(ImageSetLabel, {
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				BackgroundTransparency = 1,
				Image = ROBLOX_TILT_ICON,
				ImageColor3 = theme.ContextualPrimaryContent.Color,
				LayoutOrder = 1,
			}),
			NotificationText = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -TEXT_PADDING, 1, 0),
				TextColor3 = theme.ContextualPrimaryContent.Color,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				TextWrapped = true,
				TextScaled = true,
				TextSize = TEXT_SIZE,
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = font.Body.Font,
				Text = noticeKey,
			}, {
				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = ICON_SIZE,
				})
			})
		})
	end)
end

return AssetDetailNotification