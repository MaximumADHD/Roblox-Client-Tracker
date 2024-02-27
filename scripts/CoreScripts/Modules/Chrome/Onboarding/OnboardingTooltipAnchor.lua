local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local useStyle = UIBlox.Core.Style.useStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize = UIBlox.App.Button.Enum.StandardButtonSize

local OnboardingTooltipAnchor = React.forwardRef(function(props, ref)
	local step = props.step
	local onboardingStep = props.onboardingStep
	local maxSteps = props.maxSteps

	local completeLabel = props.completeLabel
	local showLabels = props.showLabels
	local onDismiss = props.onDismiss

	local onNext = props.onNext
	local style = useStyle()

	return withTooltip({
		minContentWidth = 210,
		ref = ref,
		headerText = onboardingStep.headerText,
		renderCustomComponents = function(width)
			return React.createElement("Frame", {
				Name = "OnboardingTooltipFrame",
				BackgroundTransparency = 1,
				Size = UDim2.new(0, width, 1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				Layout = React.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5),
				}),
				Body = React.createElement(StyledTextLabel, {
					layoutOrder = 0,
					automaticSize = Enum.AutomaticSize.XY,
					fontStyle = style.Font.Footer,
					colorStyle = style.Theme.TextDefault,
					text = onboardingStep.bodyText,
					textTruncate = Enum.TextTruncate.None,
					textXAlignment = Enum.TextXAlignment.Left,
				}),
				Footer = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					LayoutOrder = 1,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
				}, {
					Label = React.createElement(StyledTextLabel, {
						layoutOrder = 1,
						fontStyle = style.Font.Footer,
						colorStyle = style.Theme.TextDefault,
						text = if showLabels then tostring(step) .. " / " .. tostring(maxSteps) else "",
						textTruncate = Enum.TextTruncate.AtEnd,
						textXAlignment = Enum.TextXAlignment.Left,
						size = UDim2.fromScale(0.5, 1),
					}),
					Button = React.createElement(Button, {
						buttonType = ButtonType.PrimarySystem,
						standardSize = StandardButtonSize.XSmall,
						layoutOrder = 2,
						onActivated = function()
							onNext()
						end,
						text = if step == maxSteps then completeLabel else onboardingStep.buttonText,
						size = UDim2.new(1, 0, 0, 36),
						anchorPoint = Vector2.new(1, 0),
						position = UDim2.new(1, 0, 0, 0),
					}) or nil,
				}),
			})
		end,
		onClose = function()
			onDismiss()
		end,

		backgroundColor = style.Theme.BackgroundUIDefault.Color,
		backgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
	}, {
		DisplayOrder = 10,
		active = true,
		guiTarget = CoreGui,

		preferredOrientation = TooltipOrientation.Bottom,
	}, function(triggerPointChanged)
		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[React.Change.AbsoluteSize] = triggerPointChanged,
			[React.Change.AbsolutePosition] = triggerPointChanged,
		})
	end)
end)

return OnboardingTooltipAnchor
