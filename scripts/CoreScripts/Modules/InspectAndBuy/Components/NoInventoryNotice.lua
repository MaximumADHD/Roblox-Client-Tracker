local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Colors = require(InspectAndBuyFolder.Colors)
local RobloxTranslator = require(CoreGui.RobloxGui.Modules.RobloxTranslator)

local NO_INVENTORY_KEY = "InGame.InspectMenu.Description.NoInventoryNotice"

local NoInventoryNotice = Roact.PureComponent:extend("NoInventoryNotice")

function NoInventoryNotice:render()
	local locale = self.props.locale
	local assets = self.props.assets
	local isLoaded = self.props.isLoaded

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Visible = next(assets) == nil and isLoaded,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 15),
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		NotWearingImage = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Size = UDim2.new(0.25, 0, 0.25, 0),
			LayoutOrder = 1,
			Image = "rbxasset://textures/ui/InspectMenu/ico_isnt-wearing.png",
			ImageColor3 = Colors.White,
		}, {
			UIAspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1,
			})
		}),
		NotWearingText = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0.8, 0, 0.3, 0),
			LayoutOrder = 2,
			Font = Enum.Font.Gotham,
			Text = RobloxTranslator:FormatByKeyForLocale(NO_INVENTORY_KEY, locale),
			TextScaled = true,
			TextColor3 = Colors.White,
			TextSize = 20,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextWrapped = true,
		}, {
			UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
				MaxTextSize = 20,
			})
		})
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			assets = state.assets,
			locale = state.locale,
			isLoaded = state.isLoaded,
		}
	end
)(NoInventoryNotice)