local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local withStyle = UIBlox.Style.withStyle

--[[
	One row of the ItemInfoList used to display relevant
	information about a selected item in the InspectAndBuy menu
]]

local ItemInfoRow = Roact.PureComponent:extend("ItemInfoRow")

ItemInfoRow.validateProps = t.strictInterface({
	infoName = t.optional(t.string),
	infoData = t.optional(t.string),

	LayoutOrder = t.optional(t.integer),
	Size = t.optional(t.UDim2),
	Position = t.optional(t.UDim2),
})

function ItemInfoRow:render()
	return withStyle(function(stylePalette)
		return self:renderWithProviders(stylePalette)
	end)
end

function ItemInfoRow:renderWithProviders(stylePalette)
	local size = self.props.Size
	local position = self.props.Position
	local layoutOrder = self.props.LayoutOrder
	local infoName = self.props.infoName
	local infoData = self.props.infoData
	local theme = stylePalette.Theme
	local font = stylePalette.Font
	local textSize = font.BaseSize * font.Body.RelativeSize

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}, {
		InfoNameTextLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = font.Body.Font,
			LayoutOrder = 1,
			Size = UDim2.fromScale(0.5, 1),
			Text = infoName,
			TextColor3 = theme.TextDefault.Color,
			TextSize = textSize,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
		InfoDataTextLabel = Roact.createElement("TextLabel", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
			Font = font.Body.Font,
			LayoutOrder = 2,
			Size = UDim2.fromScale(0.5, 1),
			Text = infoData,
			TextColor3 = theme.TextDefault.Color,
			TextSize = textSize,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
	})
end

return ItemInfoRow