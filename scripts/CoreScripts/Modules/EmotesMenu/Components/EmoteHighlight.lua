local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local ImageSet = UIBlox.Core.ImageSet
local Images = UIBlox.App.ImageSet.Images

local Components = script.Parent
local EmotesModules = Components.Parent
local Constants = require(EmotesModules.Constants)

local INNER_HIGHLIGHT_IMAGE = Images["component_assets/circle_60_stroke_2"]
local OUTER_HIGHLIGHT_IMAGE = Images["component_assets/circle_68_stroke_2"]

local HIGHLIGHT_TRANSPARENCY = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(0.33, 0),
	NumberSequenceKeypoint.new(0.68, 0),
	NumberSequenceKeypoint.new(1, 1),
})

local EmoteHighlight = Roact.PureComponent:extend("EmoteHighlight")

function EmoteHighlight:render()
	local highlightOffset = Constants.EmoteBubbleSizes.HighlightOffset + Constants.EmoteBubbleSizes.HighlightPadding
	return Roact.createFragment({
		OuterHighlight = Roact.createElement(ImageSet.Label, {
			Size = UDim2.new(1, highlightOffset, 1, highlightOffset),
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Image = OUTER_HIGHLIGHT_IMAGE,
			ImageColor3 = Constants.Colors.White,
		}, {
			UIGradient = Roact.createElement("UIGradient", {
				Rotation = 90,
				Transparency = HIGHLIGHT_TRANSPARENCY,
			})
		}),
		InnerHighlight = Roact.createElement(ImageSet.Label, {
			Size = UDim2.new(1, Constants.EmoteBubbleSizes.HighlightPadding, 1, Constants.EmoteBubbleSizes.HighlightPadding),
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Image = INNER_HIGHLIGHT_IMAGE,
			ImageColor3 = Constants.Colors.White,
			ImageTransparency = HIGHLIGHT_TRANSPARENCY,
		}, {
			UIGradient = Roact.createElement("UIGradient", {
				Rotation = 90,
				Transparency = HIGHLIGHT_TRANSPARENCY,
			})
		}),
	})
end

return EmoteHighlight