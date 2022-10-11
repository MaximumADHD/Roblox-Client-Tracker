local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local FONT = Constants.Font.MainWindowHeader
local TEXT_SIZE = Constants.DefaultFontSize.MainWindowHeader
local TEXT_COLOR = Constants.Color.Text
local BACKGROUND_COLOR = Constants.Color.UnselectedGray
local PADDING = Constants.Tooltip.Padding
local OFFSET = Constants.Tooltip.Offset
local MAX_WIDTH = Constants.Tooltip.MaxWidth
local DELAY = Constants.Tooltip.Delay

export type Props = {
	text: string,
	pos: UDim2
}

local function Tooltip(props: Props)
	
	local visible, setVisible = React.useState(false)
	local text = props.text
	local pos = props.pos

	React.useEffect(function()
		setVisible(false)
		local cancelled = false
		task.delay(DELAY, function()
			if cancelled then
				return
			end
			setVisible(true)
		end)
		return function()
			cancelled = true
		end
	end, { text, pos } :: { any })

	return Roact.createElement(Roact.Portal, {
		target = CoreGui :: Instance
	}, {
		TooltipContainer = Roact.createElement("ScreenGui", {
			DisplayOrder = 20,
			IgnoreGuiInset = true,
			OnTopOfCoreBlur = true,
			Enabled = visible
		}, {
			Tooltip = Roact.createElement("TextLabel", {
				Text = text,
				TextSize = TEXT_SIZE,
				TextColor3 = TEXT_COLOR,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = FONT,
		
				AutomaticSize = Enum.AutomaticSize.XY,
				Position = pos + OFFSET,
		
				BackgroundColor3 = BACKGROUND_COLOR,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = PADDING,
					PaddingBottom = PADDING,
					PaddingLeft = PADDING,
					PaddingRight = PADDING
				}),
				SizeConstraint = Roact.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(MAX_WIDTH, math.huge)
				})
			})
		})
	})
	
end

return Tooltip
