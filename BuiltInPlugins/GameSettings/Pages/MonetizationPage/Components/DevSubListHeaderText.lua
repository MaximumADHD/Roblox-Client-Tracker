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
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Cryo = require(Plugin.Packages.Cryo)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local DeveloperSubscriptionListHeaderText = Roact.Component:extend("DeveloperSubscriptionListHeaderText")

function DeveloperSubscriptionListHeaderText:render()
	local size = self.props.Size
	local text = self.props.Text
	local layoutOrder = self.props.LayoutOrder
	local alignment = self.props.Alignment
	local theme = THEME_REFACTOR and self.props.Stylizer or self.props.Theme:get("Plugin")

	return Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
		Size = size,
		Text = text,
		LayoutOrder = layoutOrder,

		TextXAlignment = alignment,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}))
end


DeveloperSubscriptionListHeaderText = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(DeveloperSubscriptionListHeaderText)



return DeveloperSubscriptionListHeaderText
