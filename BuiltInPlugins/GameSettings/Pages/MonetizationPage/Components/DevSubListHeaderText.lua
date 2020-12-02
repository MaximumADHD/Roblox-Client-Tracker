--[[
	Component to avoid repetition of props used in text used in the header
	of the DeveloperSubscriptionList. Fairly self explanatory.

	Props:
		UDim2 Size = how big the TextLabel is
		string Text = the text to show
		int LayoutOrder = the order in which this text shows
		TextXAlignment Alignment = the horizontal alignment of the text
			(vertical alignment is never used)
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local ContextServices = require(Plugin.Framework.ContextServices)

local DeveloperSubscriptionListHeaderText = Roact.Component:extend("DeveloperSubscriptionListHeaderText")

function DeveloperSubscriptionListHeaderText:render()
	local size = self.props.Size
	local text = self.props.Text
	local layoutOrder = self.props.LayoutOrder
	local alignment = self.props.Alignment
	local theme = self.props.Theme:get("Plugin")

	return Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
		Size = size,
		Text = text,
		LayoutOrder = layoutOrder,

		TextXAlignment = alignment,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}))
end

ContextServices.mapToProps(DeveloperSubscriptionListHeaderText,{
	Theme = ContextServices.Theme,
})

return DeveloperSubscriptionListHeaderText