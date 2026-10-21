--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)

local TIMESTAMP_WIDTH = 66
local TAG_WIDTH = 30
local TAG_HEIGHT = 16
local TAG_CORNER_RADIUS = UDim.new(0, 3)
local ROW_PADDING = 6
local TIMESTAMP_TEXT_SIZE_DELTA = -2
local TAG_TEXT_SIZE_DELTA = -3

-- Name column fills the row minus the Timestamp/Tag columns and the two UIListLayout
-- gaps (Timestamp-to-Tag, Tag-to-Name) that ROW_PADDING inserts between them.
local NAME_COL_LEADING_WIDTH = TIMESTAMP_WIDTH + TAG_WIDTH + 2 * ROW_PADDING

export type SourceTag = "snt" | "srv" | "op"

local TAG_COLORS: { [SourceTag]: { background: Color3, text: Color3 } } = {
	snt = { background = Color3.fromRGB(16, 32, 16), text = Color3.fromRGB(120, 220, 110) },
	srv = { background = Color3.fromRGB(16, 30, 42), text = Color3.fromRGB(110, 185, 240) },
	op = { background = Color3.fromRGB(28, 22, 44), text = Color3.fromRGB(180, 150, 240) },
}

export type Props = {
	timestampText: string,
	tag: SourceTag,
	name: string,
	layoutOrder: number?,
}

local function OperationRow(props: Props)
	local colors = TAG_COLORS[props.tag]

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, ROW_PADDING),
		}),

		Timestamp = Roact.createElement("TextLabel", {
			Text = props.timestampText,
			Size = UDim2.new(0, TIMESTAMP_WIDTH, 1, 0),
			LayoutOrder = 1,
			Font = Constants.Font.MainWindow,
			TextSize = Constants.DefaultFontSize.MainWindow + TIMESTAMP_TEXT_SIZE_DELTA,
			TextColor3 = Constants.Color.BorderGray,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
		}),

		Tag = Roact.createElement("Frame", {
			Size = UDim2.new(0, TAG_WIDTH, 0, TAG_HEIGHT),
			LayoutOrder = 2,
			BackgroundColor3 = colors.background,
			BorderSizePixel = 0,
		}, {
			Corner = Roact.createElement("UICorner", {
				CornerRadius = TAG_CORNER_RADIUS,
			}),
			Label = Roact.createElement("TextLabel", {
				Text = props.tag,
				Size = UDim2.new(1, 0, 1, 0),
				Font = Constants.Font.MainWindow,
				TextSize = Constants.DefaultFontSize.MainWindow + TAG_TEXT_SIZE_DELTA,
				TextColor3 = colors.text,
				TextXAlignment = Enum.TextXAlignment.Center,
				BackgroundTransparency = 1,
			}),
		}),

		Name = Roact.createElement("TextLabel", {
			Text = props.name,
			Size = UDim2.new(1, -NAME_COL_LEADING_WIDTH, 1, 0),
			LayoutOrder = 3,
			Font = Constants.Font.MainWindow,
			TextSize = Constants.DefaultFontSize.MainWindow,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			BackgroundTransparency = 1,
		}),
	})
end

return OperationRow
