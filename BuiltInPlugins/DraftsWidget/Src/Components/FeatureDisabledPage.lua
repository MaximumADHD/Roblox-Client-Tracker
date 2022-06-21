local FFlagUpdateDraftsWidgetToDFContextServices = game:GetFastFlag("UpdateDraftsWidgetToDFContextServices")
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local withTheme = if FFlagUpdateDraftsWidgetToDFContextServices then nil else require(Plugin.Src.ContextServices.Theming).withTheme

local FeatureDisabledPage = Roact.Component:extend("FeatureDisabledPage")

function FeatureDisabledPage:render()
	local style = self.props.Stylizer
	local disableReason = self.props.Text

	local function renderWithContext(theme)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 16),
				PaddingTop = UDim.new(0, 16),
				PaddingLeft = UDim.new(0, 16),
				PaddingRight = UDim.new(0, 16),
			}),

			Error = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,

				Text = disableReason,
				Font = if FFlagUpdateDraftsWidgetToDFContextServices then style.labels.MainFont else theme.Labels.MainFont,
				TextColor3 = if FFlagUpdateDraftsWidgetToDFContextServices then style.labels.MainText else theme.Labels.MainText,
				TextSize = 18,

				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextWrapped = true,
			}),
		})
	end

	return if FFlagUpdateDraftsWidgetToDFContextServices then renderWithContext(style) else withTheme(renderWithContext)
end

if FFlagUpdateDraftsWidgetToDFContextServices then
	FeatureDisabledPage = withContext({
		Stylizer = ContextServices.Stylizer,
	})(FeatureDisabledPage)
end

return FeatureDisabledPage
