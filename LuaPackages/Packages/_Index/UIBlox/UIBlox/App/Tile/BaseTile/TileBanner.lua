local BaseTile = script.Parent
local Tile = BaseTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local TileBanner = Roact.PureComponent:extend("TileBanner")

local TEXT_PADDING = 6

local validateProps = t.strictInterface({
	-- The text to display in the banner
	bannerText = t.string,
})

function TileBanner:render()
	assert(validateProps(self.props))

	local bannerText = self.props.bannerText

	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local theme = stylePalette.Theme

		local bannerHeight = TEXT_PADDING + font.CaptionBody.RelativeSize * font.BaseSize

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.SystemPrimaryDefault.Color,
			BackgroundTransparency = theme.SystemPrimaryDefault.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, bannerHeight),
		}, {
			TextLabel = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = font.CaptionBody.Font,
				TextSize = font.CaptionBody.RelativeSize * font.BaseSize,
				Text = bannerText,
				TextColor3 = theme.SystemPrimaryContent.Color,
				TextTransparency = theme.SystemPrimaryContent.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Center,
				Size = UDim2.new(1, 0, 1, 0),
			}),
		})
	end)
end

return TileBanner