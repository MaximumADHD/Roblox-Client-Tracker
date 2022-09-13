local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactStudioWidgets = Plugin.Packages.RoactStudioWidgets

local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryTitledFrame = SharedFlags.getFFlagRemoveUILibraryTitledFrame()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local TitledFrame = if FFlagRemoveUILibraryTitledFrame then UI.TitledFrame else require(RoactStudioWidgets.TitledFrame)

local ConstantFonts = require(Page.Util.ConstantFonts)
local StateInterfaceTheme = require(Page.Util.StateInterfaceTheme)

local TitleBar = Roact.Component:extend("ComponentTitleBar")

local function calculateTextSize(text, textSize, font)
	local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
	return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
end

function TitleBar:render()
	local textSize = calculateTextSize(self.props.Text, ConstantFonts.TitleText.Size, ConstantFonts.TitleText.Type)

	local props = self.props
	local localization = props.Localization
	local theme = self.props.Stylizer

	local children = {}
	if self.props.IsPlayerChoiceTitleStyle then
		children.PlayerChoiceLabel = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor3 = if StateInterfaceTheme.getRadioButtonTextColor(self.props) then StateInterfaceTheme.getRadioButtonTextColor(self.props) else theme.fontStyle.Header.TextColor3,
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			Text = localization:getText("General", "AvatarOverridePrompt"),
		})
	end

	return Roact.createElement(TitledFrame, if FFlagRemoveUILibraryTitledFrame then {
		LayoutOrder = self.props.LayoutOrder or 1,
		Title = self.props.Text,
	} else {
		Title = self.props.Text,
		MaxHeight = textSize.Y,
		LayoutOrder = self.props.LayoutOrder or 1,
		Font = ConstantFonts.TitleText.Type
	}, children)
end

TitleBar = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(TitleBar)

return TitleBar
