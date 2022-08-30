local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner
local withStyle = UIBlox.Core.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local LoadingOverlayState = require(GenericRoot.LoadingOverlayState)

local LoadingOverlay = Roact.Component:extend(script.Name)

local LOC_KEY = "IAPExperience.Loading.%s"

type Props = {
	loadingState: any?,

	[Roact.Children]: table?,
}

function LoadingOverlay:getLoadingMessage(locMap: {[string]: string}, loadingState: any?): string?
	if loadingState == LoadingOverlayState.PurchasingItem then
		return locMap.PurchasingItem
	elseif loadingState == LoadingOverlayState.PurchasingRobux then
		return locMap.PurchasingRobux
	elseif loadingState == LoadingOverlayState.WaitingForPurchase then
		return locMap.WaitingForPurchase
	elseif loadingState == LoadingOverlayState.WaitingForRobux then
		return locMap.WaitingForRobux
	end
end

function LoadingOverlay:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			PurchasingItem = {
				key = LOC_KEY:format("Text.PurchasingItem")
			},
			PurchasingRobux = {
				key = LOC_KEY:format("Text.PurchasingRobux")
			},
			WaitingForPurchase = {
				key = LOC_KEY:format("Text.WaitingForPurchase")
			},
			WaitingForRobux = {
				key = LOC_KEY:format("Text.WaitingForRobux")
			},
		},
		render = function(locMap: {[string]: string})
			return self:renderAlert(locMap)
		end
	})
end

function LoadingOverlay:renderAlert(locMap: {[string]: string})
	local props: Props = self.props

	local showSpinner: boolean = props.loadingState ~= LoadingOverlayState.None
	local loadingMessage: string? = self:getLoadingMessage(locMap, props.loadingState)

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font
		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.BackgroundUIContrast.Color,
			BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 20),
				[Roact.Change.AbsoluteContentSize] = self.onListLayoutAbsoluteContentSizeChanged,
			}),
			Spinner = showSpinner and Roact.createElement(LoadingSpinner, {
				size = UDim2.fromOffset(48, 48),
				position = UDim2.fromScale(0.5, 0.5),
				anchorPoint = Vector2.new(0.5, 0.5),
			}) or nil,
			PreText =  loadingMessage and Roact.createElement("TextLabel", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,

				AutomaticSize = Enum.AutomaticSize.XY,
				TextWrapped = true,

				Font = fonts.Body.Font,
				Text = loadingMessage,
				TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
				TextColor3 = theme.TextDefault.Color,
				TextTransparency = theme.TextDefault.Transparency,
			}) or nil,
		}, self.props[Roact.Children])
	end)
end

return LoadingOverlay
