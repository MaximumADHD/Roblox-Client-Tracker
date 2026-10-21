--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local CellLabel = require(script.Parent.CellLabel)
local Constants = require(script.Parent.Parent.Constants)

local BANNER_HEIGHT = 20
local ACCENT_WIDTH = 2
local LABEL_PADDING_LEFT = 10

export type Props = {
	text: string,
	layoutOrder: number?,
}

local function InfoBanner(props: Props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, BANNER_HEIGHT),
		LayoutOrder = props.layoutOrder,
		BackgroundColor3 = Constants.Color.TextBoxGray,
		BorderSizePixel = 0,
	}, {
		Accent = Roact.createElement("Frame", {
			Size = UDim2.new(0, ACCENT_WIDTH, 1, 0),
			BackgroundColor3 = Constants.Color.HighlightBlue,
			BorderSizePixel = 0,
		}),
		Label = Roact.createElement(CellLabel, {
			text = props.text,
			size = UDim2.new(1, -LABEL_PADDING_LEFT, 1, 0),
			pos = UDim2.new(0, LABEL_PADDING_LEFT, 0, 0),
		}),
	})
end

return InfoBanner
