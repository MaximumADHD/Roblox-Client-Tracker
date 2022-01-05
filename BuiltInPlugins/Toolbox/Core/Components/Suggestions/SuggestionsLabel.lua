local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local withTheme = ContextHelper.withTheme

local FFlagToolboxRemoveUnusedSuggestionsFeature = game:GetFastFlag("ToolboxRemoveUnusedSuggestionsFeature")
if FFlagToolboxRemoveUnusedSuggestionsFeature then
	return {}
end

local function renderContent(props)
	local theme = props.Stylizer
	local text = props.Text or ""
	local textWidth = Constants.getTextSize(text).x

	local suggestionsTheme = theme.suggestionsComponent

	return Roact.createElement("TextLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, textWidth, 1, 0),
		Text = text,
		Font = Constants.FONT,
		TextSize = Constants.SUGGESTIONS_FONT_SIZE,
		TextColor3 = suggestionsTheme.labelTextColor,
		LayoutOrder = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
	})
end

local SuggestionsLabel = Roact.PureComponent:extend("SuggestionsLabel")

function SuggestionsLabel:render()
	return renderContent(self.props)
end

SuggestionsLabel = withContext({
	Stylizer = ContextServices.Stylizer,
})(SuggestionsLabel)
return SuggestionsLabel