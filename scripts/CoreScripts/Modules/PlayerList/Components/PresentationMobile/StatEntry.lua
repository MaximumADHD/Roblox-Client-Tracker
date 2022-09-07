--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerList = Components.Parent
local FormatStatString = require(PlayerList.FormatStatString)

local StatEntry = Roact.PureComponent:extend("StatEntry")

StatEntry.validateProps = t.strictInterface({
	statValue = t.optional(t.any),
	isTitleEntry = t.boolean,
	isTeamEntry = t.boolean,
	layoutOrder = t.integer,
	textStyle = t.strictInterface({
		Color = t.Color3,
		Transparency = t.number,
		StrokeColor = t.optional(t.Color3),
		StrokeTransparency = t.optional(t.number),
	}),
})

function StatEntry:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local font, textSize
			if not layoutValues.IsTenFoot then
				font = style.Font.CaptionHeader.Font
				textSize = style.Font.CaptionHeader.RelativeSize * style.Font.BaseSize
			else
				textSize = layoutValues.StatTextSizeMobile
				font = layoutValues.StatFont
				if self.props.isTitleEntry then
					font = layoutValues.TitleStatFont
				elseif self.props.isTeamEntry then
					font = layoutValues.TeamStatFont
				end
			end

			local statText = FormatStatString(self.props.statValue)

			return Roact.createElement("TextLabel", {
				Size = UDim2.new(0, layoutValues.StatEntrySizeX, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				Font = font,
				LayoutOrder = self.props.layoutOrder,
				TextSize = textSize,
				TextColor3 = self.props.textStyle.Color,
				TextTransparency = self.props.textStyle.Transparency,
				TextStrokeColor3 = self.props.textStyle.StrokeColor,
				TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
				Text = statText,
				TextTruncate = Enum.TextTruncate.AtEnd,
			})
		end)
	end)
end

return StatEntry