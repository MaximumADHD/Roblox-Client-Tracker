local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Core.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local ICON_SIZE = 36
local BORDER_SIZE = 2
local PADDING = 12
local DIVIDER_SIZE = 1

local MenuCell = Roact.PureComponent:extend("MenuCell")

MenuCell.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	icon = t.optional(t.union(t.table, t.string)),
	iconComponent = t.optional(t.table),
	localizationKey = t.string,

	height = t.numberPositive,

	hasDivider = t.boolean,
	isSelected = t.boolean,
})

function MenuCell:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		local text = RobloxTranslator:FormatByKey(self.props.localizationKey)

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, self.props.height),
		}, {
			SelectedFrame = self.props.isSelected and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, BORDER_SIZE * 2, 1, BORDER_SIZE * 2),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
			}, {
				TopBorder = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, BORDER_SIZE),
					BackgroundTransparency = theme.SystemPrimaryOnHover.Transparency,
					BackgroundColor3 = theme.SystemPrimaryOnHover.Color,
				}),

				LeftBorder = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					Size = UDim2.new(0, BORDER_SIZE, 1, 0),
					BackgroundTransparency = theme.SystemPrimaryOnHover.Transparency,
					BackgroundColor3 = theme.SystemPrimaryOnHover.Color,
				}),

				RightBorder = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					Size = UDim2.new(0, BORDER_SIZE, 1, 0),
					Position = UDim2.fromScale(1, 0),
					AnchorPoint = Vector2.new(1, 0),
					BackgroundTransparency = theme.SystemPrimaryOnHover.Transparency,
					BackgroundColor3 = theme.SystemPrimaryOnHover.Color,
				}),

				BottomBorder = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, BORDER_SIZE),
					Position = UDim2.fromScale(0, 1),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = theme.SystemPrimaryOnHover.Transparency,
					BackgroundColor3 = theme.SystemPrimaryOnHover.Color,
				}),
			}),

			CellContents = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, PADDING),
				}),

				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, PADDING),
					PaddingRight = UDim.new(0, PADDING),
				}),

				IconFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				}, {
					IconLabel = self.props.icon ~= nil and Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Image = self.props.icon,
						Size = UDim2.fromScale(1, 1),
						ImageTransparency = theme.IconEmphasis.Transparency,
						ImageColor3 = theme.IconEmphasis.Color,
					}),

					IconComponent = self.props.iconComponent ~= nil and Roact.createElement(self.props.iconComponent),
				}),

				Text = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Size = UDim2.new(1, -(PADDING + ICON_SIZE), 1, 0),

					Text = text,
					Font = font.Header2.Font,
					TextSize = font.BaseSize * font.Header2.RelativeSize,
					TextColor3 = theme.TextEmphasis.Color,
					TextTransparency = theme.TextEmphasis.TextTransparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment =  Enum.TextYAlignment.Center,
					TextTruncate = Enum.TextTruncate.AtEnd,
				})
			}),

			Divider = self.props.hasDivider and Roact.createElement("Frame", {
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, DIVIDER_SIZE),
				Position = UDim2.fromScale(0, 1),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = theme.Divider.Transparency,
				BackgroundColor3 = theme.Divider.Color,
			}),
		})
	end)
end

return MenuCell