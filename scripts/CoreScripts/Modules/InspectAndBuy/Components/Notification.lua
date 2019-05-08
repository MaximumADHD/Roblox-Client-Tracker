local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Colors = require(InspectAndBuyFolder.Colors)
local RobloxTranslator = require(CoreGui.RobloxGui.Modules.RobloxTranslator)

local Notification = Roact.PureComponent:extend("Notification")

function Notification:render()
	local locale = self.props.locale
	local noticeKey = self.props.noticeKey

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, -10, 0, 45),
		LayoutOrder = 0,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	} , {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 10),
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		ExclamationPoint = Roact.createElement("ImageLabel", {
			Size = UDim2.new(0, 16, 0, 16),
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/InspectMenu/ico_alert_tilt.png",
			ImageColor3 = Colors.White,
			LayoutOrder = 1,
		}),
		PartOfBundleText = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, -30, 1, 0),
			TextColor3 = Colors.White,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			TextWrapped = true,
			TextScaled = true,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = Enum.Font.Gotham,
			Text = RobloxTranslator:FormatByKeyForLocale(noticeKey, locale),
		}, {
			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 16,
			})
		})
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			locale = state.locale
		}
	end
)(Notification)