local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local RoactRodux = require(CorePackages.RoactRodux)

local withStyle = UIBlox.Core.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local ICON_SIZE = 80
local PLACEHOLDER_ICON_SIZE = 44
local PADDING = 20

local TEXT_PADDING_TOP = 25
local TEXT_PADDING_BOTTOM = 20

local DIVIDER_SIZE = 1

local GAME_ICON_REQUEST_SIZE = 128

local IMAGE_UNAVAILABLE = Images["icons/imageUnavailable"]
local ROUNDED_BACKGROUND_ASSET = Images["component_assets/circle_17"]
local ROUNDED_SLICE_CENTER = Rect.new(8, 8, 9, 9)

local MenuHeader = Roact.PureComponent:extend("MenuHeader")

MenuHeader.validateProps = t.strictInterface({
	gameName = t.string,

	layoutOrder = t.integer,
	height = t.numberPositive,
})

function MenuHeader:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		local gameIconComponent
		if game.GameId == 0 then
			gameIconComponent = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Image = ROUNDED_BACKGROUND_ASSET,
				SliceCenter = ROUNDED_SLICE_CENTER,
				ScaleType = Enum.ScaleType.Slice,
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				ImageColor3 = style.Theme.PlaceHolder.Color,
				ImageTransparency = style.Theme.PlaceHolder.Transparency,
			}, {
				PlaceholderIcon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(PLACEHOLDER_ICON_SIZE, PLACEHOLDER_ICON_SIZE),
					Position = UDim2.fromScale(0.5, 0.5),
					Image = IMAGE_UNAVAILABLE,
					ImageColor3 = style.Theme.UIDefault.Color,
					ImageTransparency = style.Theme.UIDefault.Transparency,
					AnchorPoint = Vector2.new(0.5, 0.5),
				}),
			})
		else
			local iconUrl = ("rbxthumb://type=GameIcon&id=%d&w=%d&h=%d"):format(
				game.GameId,
				GAME_ICON_REQUEST_SIZE,
				GAME_ICON_REQUEST_SIZE
			)

			gameIconComponent = Roact.createElement("ImageLabel", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				Image = iconUrl,
			})
		end

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, self.props.height),
		}, {
			ContentsFrame = Roact.createElement("Frame", {
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

				GameIcon = gameIconComponent,

				TextFrame = Roact.createElement("Frame", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -(ICON_SIZE + PADDING), 1, 0),
				}, {
					TextLabel = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, -(TEXT_PADDING_TOP + TEXT_PADDING_BOTTOM)),
						Position = UDim2.fromOffset(0, TEXT_PADDING_TOP),

						Font = font.Header1.Font,
						Text = self.props.gameName,
						TextSize = font.BaseSize * font.Header1.RelativeSize,
						TextColor3 = theme.TextEmphasis.Color,
						TextTransparency = theme.TextEmphasis.TextTransparency,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment =  Enum.TextYAlignment.Top,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextWrapped = true,
					}),
				})
			}),

			Divider = Roact.createElement("Frame", {
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

local function mapStateToProps(state)
	return {
		gameName = state.gameInfo.name,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(MenuHeader)