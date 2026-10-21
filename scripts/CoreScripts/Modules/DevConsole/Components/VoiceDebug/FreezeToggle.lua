--!strict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)

local BUTTON_HEIGHT = 16
local TEXT_SIZE_DELTA = -2
local HORIZONTAL_PADDING = UDim.new(0, 6)

export type Props = {
	frozen: boolean,
	layoutOrder: number?,
	onToggle: () -> (),
}

local function FreezeToggle(props: Props)
	return Roact.createElement("TextButton", {
		Text = props.frozen and "Frozen" or "Freeze",
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.new(0, 0, 0, BUTTON_HEIGHT),
		LayoutOrder = props.layoutOrder,
		Font = Constants.Font.MainWindow,
		TextSize = Constants.DefaultFontSize.MainWindow + TEXT_SIZE_DELTA,
		TextColor3 = props.frozen and Constants.Color.HighlightBlue or Constants.Color.Text,
		BackgroundColor3 = Constants.Color.UnselectedGray,
		BorderSizePixel = 1,
		BorderColor3 = Constants.Color.Text,
		[Roact.Event.Activated] = props.onToggle,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = HORIZONTAL_PADDING,
			PaddingRight = HORIZONTAL_PADDING,
		}),
	})
end

return FreezeToggle
