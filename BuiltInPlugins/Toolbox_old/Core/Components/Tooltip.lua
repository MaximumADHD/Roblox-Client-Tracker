--[[
	Generic tooltip

	Props:
		Vector2 Position 		where we want to show the Tooltip
		string Text 		the texts that are going to be showing on the tooltip
		number targetWidth
		number targetHeight
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withTheme = ContextHelper.withTheme

local DropShadow = require(Plugin.Core.Components.DropShadow)

local function Tooltip(props)
	return withTheme(function(theme)
		local position = props.position
		if not position then
			return
		end

		local text = props.text or ""

		local targetWidth = props.targetWidth
		local targetHeight = props.targetHeight

		local fontSize = Constants.FONT_SIZE_SMALL
		local textBound = Constants.getTextSize(text, fontSize, Constants.FONT, Vector2.new(100, 9000))

		local targetX = position.X
		local targetY = position.Y

		local tooltipTargetWidth = textBound.X + 2 * Constants.TOOLTIP_PADDING
		local tooltipTargetHeight = textBound.Y + 2 * Constants.TOOLTIP_PADDING

		if targetX + tooltipTargetWidth >= targetWidth then
			targetX = targetWidth - tooltipTargetWidth
		end

		if targetY + tooltipTargetHeight >= targetHeight then
			targetY = targetHeight - tooltipTargetHeight
		end

		local tooltipTheme = theme.tooltip

		return Roact.createElement("Frame", {
			Position = UDim2.new(0, targetX, 0, targetY),
			Size = UDim2.new(0, tooltipTargetWidth, 0, tooltipTargetHeight),
			BackgroundTransparency = 1,
		}, {
			DropShadow = Roact.createElement(DropShadow, {
				Position = UDim2.new(0, 2, 0, 2),
				Size = UDim2.new(1, 4, 1, 4),
				ZIndex = 1,
			}),

			ContentFrame = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 2,

				BackgroundColor3 = tooltipTheme.backgroundColor,
				BorderColor3 = tooltipTheme.borderColor,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, Constants.TOOLTIP_PADDING),
					PaddingLeft = UDim.new(0, Constants.TOOLTIP_PADDING),
					PaddingRight = UDim.new(0, Constants.TOOLTIP_PADDING),
					PaddingTop = UDim.new(0, Constants.TOOLTIP_PADDING),
				}),

				Label = Roact.createElement("TextLabel", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Text = text,

					TextColor3 = tooltipTheme.textColor,

					Font = Constants.FONT,
					TextSize = fontSize,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextWrapped = true,
					LineHeight = Constants.TOOLTIP_LINE_HEIGHT,
					ZIndex = 10,
				}),
			})
		})
	end)
end

return Tooltip
