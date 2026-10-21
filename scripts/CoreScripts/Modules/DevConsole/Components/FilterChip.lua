--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)

local CHIP_COLORS = {
	on = { background = Color3.fromRGB(14, 26, 14), border = Color3.fromRGB(32, 64, 32), text = Color3.fromRGB(130, 220, 130) },
	off = { background = Color3.fromRGB(18, 18, 18), border = Color3.fromRGB(40, 40, 40), text = Color3.fromRGB(150, 150, 150) },
}

local CHIP_HEIGHT = 18
local CHIP_CORNER_RADIUS = UDim.new(0, 9)
local CHIP_STROKE_THICKNESS = 1
local CHIP_HORIZONTAL_PADDING = UDim.new(0, 8)
local CHIP_TEXT_SIZE_DELTA = -3

export type Props = {
	name: string,
	isOn: boolean,
	layoutOrder: number?,
	onActivated: () -> (),
}

local function FilterChip(props: Props)
	local colors = props.isOn and CHIP_COLORS.on or CHIP_COLORS.off
	return Roact.createElement("TextButton", {
		Text = props.name,
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.new(0, 0, 0, CHIP_HEIGHT),
		LayoutOrder = props.layoutOrder,
		Font = Constants.Font.MainWindow,
		TextSize = Constants.DefaultFontSize.MainWindow + CHIP_TEXT_SIZE_DELTA,
		TextColor3 = colors.text,
		BackgroundColor3 = colors.background,
		AutoButtonColor = false,
		[Roact.Event.Activated] = props.onActivated,
	}, {
		Corner = Roact.createElement("UICorner", { CornerRadius = CHIP_CORNER_RADIUS }),
		Stroke = Roact.createElement("UIStroke", { Color = colors.border, Thickness = CHIP_STROKE_THICKNESS }),
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = CHIP_HORIZONTAL_PADDING,
			PaddingRight = CHIP_HORIZONTAL_PADDING,
		}),
	})
end

return FilterChip
