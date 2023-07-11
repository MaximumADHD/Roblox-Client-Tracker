local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local Otter = require(Packages.Otter)

local UIBlox = require(Packages.UIBlox)
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner
local withStyle = UIBlox.Core.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local LoadingOverlayState = require(GenericRoot.LoadingOverlayState)

local LoadingOverlay = Roact.Component:extend(script.Name)

local LOC_KEY = "IAPExperience.Loading.%s"

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 1.0,
}

type Props = {
	shouldAnimate: boolean,
	showOverlay: boolean,

	loadingState: any?,

	[Roact.Children]: table?,
}

function LoadingOverlay:init()
	local animationProgress, setProgress = Roact.createBinding(0)

	self.motor = Otter.createSingleMotor(0)
	self.motor:start()

	self.motor:onStep(setProgress)
	self.animationProgress = animationProgress

	self.motor:setGoal(Otter.spring(self.props.loadingState ~= nil and 1 or 0, SPRING_CONFIG))
end

function LoadingOverlay:getLoadingMessage(locMap: { [string]: string }, loadingState: any?): string?
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

function LoadingOverlay:didUpdate(prevProps: Props, prevState)
	local props: Props = self.props

	if prevProps.loadingState ~= props.loadingState then
		self.motor:setGoal(Otter.spring(props.loadingState ~= nil and 1 or 0, SPRING_CONFIG))
	end
end

function LoadingOverlay:willUnmount()
	self.motor:destroy()
end

function LoadingOverlay:render()
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			PurchasingItem = {
				key = LOC_KEY:format("Text.PurchasingItem"),
			},
			PurchasingRobux = {
				key = LOC_KEY:format("Text.PurchasingRobux"),
			},
			WaitingForPurchase = {
				key = LOC_KEY:format("Text.WaitingForPurchase"),
			},
			WaitingForRobux = {
				key = LOC_KEY:format("Text.WaitingForRobux"),
			},
		},
		render = function(locMap: { [string]: string })
			return self:renderAlert(locMap)
		end,
	})
end

function LoadingOverlay:renderAlert(locMap: { [string]: string })
	local props: Props = self.props

	local showSpinner: boolean = props.loadingState ~= LoadingOverlayState.None and props.loadingState ~= nil
	local loadingMessage: string? = self:getLoadingMessage(locMap, props.loadingState)

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font
		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.BackgroundUIContrast.Color,
			BackgroundTransparency = self.animationProgress:map(function(value)
				if props.showOverlay then
					if props.shouldAnimate then
						return 1 - (1 - theme.BackgroundUIContrast.Transparency) * value
					else
						return theme.BackgroundUIContrast.Transparency
					end
				else
					return 1
				end
			end),
			Size = UDim2.new(1, 0, 1, 0),
			Visible = props.showOverlay,
		}, {
			-- because the frame has a known-long-existing bug which it could be click-through,
			-- thus we add the stop propagation overlay to prevent the click-through
			StopPropagationOverlay = Roact.createElement("TextButton", {
				Active = false,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Selectable = false,
				Size = UDim2.new(1, 0, 1, 0),
				Text = "",
				ZIndex = 0,
			}),
			MiddleContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				ZIndex = 1,
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
				PreText = loadingMessage and Roact.createElement("TextLabel", {
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
			}),
			Children = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
			}, self.props[Roact.Children]),
		})
	end)
end

return LoadingOverlay
