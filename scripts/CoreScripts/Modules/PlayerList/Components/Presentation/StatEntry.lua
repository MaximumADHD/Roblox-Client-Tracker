local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GameTranslator = require(RobloxGui.Modules.GameTranslator)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerList = Components.Parent
local FormatStatString = require(PlayerList.FormatStatString)

local StatEntry = Roact.PureComponent:extend("StatEntry")

StatEntry.validateProps = t.strictInterface({
	statName = t.string,
	statValue = t.optional(t.any),
	isTitleEntry = t.boolean,
	isTeamEntry = t.boolean,
	layoutOrder = t.integer,

	backgroundStyle = t.strictInterface({
		Color = t.Color3,
		Transparency = t.number,
	}),
	textStyle = t.strictInterface({
		Color = t.Color3,
		StrokeTransparency = t.number,
		StrokeColor = t.Color3,
	})
})

function StatEntry:render()
	return WithLayoutValues(function(layoutValues)
		local font = layoutValues.StatFont
		local statName = GameTranslator:TranslateGameText(CoreGui, self.props.statName)
		if self.props.isTitleEntry then
			font = layoutValues.TitleStatFont
		elseif self.props.isTeamEntry then
			font = layoutValues.TeamStatFont
		end

		local statChildren = {}

		if layoutValues.IsTenFoot then
			statChildren["Shadow"] = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Image = layoutValues.ShadowImage,
				Position = UDim2.new(0, -layoutValues.ShadowSize, 0, 0),
				Size = UDim2.new(1, layoutValues.ShadowSize * 2, 1, layoutValues.ShadowSize),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = layoutValues.ShadowSliceRect,
			})
		end

		statChildren["StatText"] = Roact.createElement("TextLabel", {
			Size = self.props.isTitleEntry and UDim2.new(1, 0, 0.5, 0) or UDim2.new(1, 0, 1, 0),
			Position = self.props.isTitleEntry and UDim2.new(0, 0, 0.5, 0) or UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 1,
			Font = font,
			TextSize = layoutValues.StatTextSize,
			TextColor3 = self.props.textStyle.Color,
			TextStrokeColor3 = self.props.textStyle.StrokeColor,
			TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
			Text = FormatStatString(self.props.statValue),
			TextTruncate = Enum.TextTruncate.AtEnd,
			Active = true,
		})

		if self.props.isTitleEntry then
			statChildren["StatName"] = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0.5, 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				Font = layoutValues.StatNameFont,
				TextSize = layoutValues.StatTextSize,
				TextColor3 = self.props.textStyle.Color,
				TextStrokeColor3 = self.props.textStyle.StrokeColor,
				TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
				Text = statName,
				Active = true,
				ClipsDescendants = true,
			})
		end

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			Size = UDim2.new(0, layoutValues.StatEntrySizeX, 1, 0),
			BackgroundTransparency = self.props.backgroundStyle.Transparency,
			BackgroundColor3 = self.props.backgroundStyle.Color,
			BorderSizePixel = 0,
			AutoLocalize = false,
		}, statChildren)
	end)
end

return StatEntry