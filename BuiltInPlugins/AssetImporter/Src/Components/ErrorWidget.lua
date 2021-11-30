local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Decoration = UI.Decoration
local Pane = UI.Pane
local TextLabel = Decoration.TextLabel

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local GetLocalizedString = require(Plugin.Src.Utility.GetLocalizedString)

local ErrorWidget = Roact.PureComponent:extend("ErrorWidget")

local function getErrorMessage(localization, importStatuses)
    if importStatuses then
        local statusType
        if #importStatuses.Errors > 0 then
            statusType = importStatuses.Errors[1].StatusType
        elseif #importStatuses.Warnings > 0 then
            statusType = importStatuses.Warnings[1].StatusType
        end
        if statusType then
            local message = GetLocalizedString(localization, "Error", statusType)
            if not message then
                message = localization:getText("Error", "Default", {type = statusType});
            end
            return message
        end
    end
    return localization:getText("Error", "DefaultNoStatus");
end

function ErrorWidget:render()
	local localization = self.props.Localization
	local props = self.props

	local style = props.Stylizer
	local errorStyle = style.ErrorWidget

	return Roact.createElement(StyledDialog, {
        Buttons = {
            { Key = "ok", Text = localization:getText("Error", "OK")},
        },
		Enabled = true,
		MinContentSize = Vector2.new(errorStyle.Width, errorStyle.Height),
		Modal = true,
		OnButtonPressed = props.OnClose,
		OnClose = props.OnClose,
		Resizable = false,
		Style = "Alert",
		Title = props.Title,
	}, {
		Content = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			Size = UDim2.new(1, 0, 1, 0),
            Spacing = errorStyle.IconSpacing,
		}, {
            Image = Roact.createElement("ImageLabel", {
                BackgroundTransparency = 1,
                Image = style.ErrorIcon.Image,
                Size = UDim2.fromOffset(errorStyle.IconSize, errorStyle.IconSize),
                LayoutOrder = 1,
            }),
            TextPane = Roact.createElement(Pane, {
                Layout = Enum.FillDirection.Vertical,
                Size = UDim2.new(0.6, 0, 1, 0),
                LayoutOrder = 2,
            }, {
                Header = Roact.createElement(TextLabel, {
                    Text = localization:getText("Error", "Header"),
                    TextSize = errorStyle.TextSize,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Size = UDim2.new(1, 0, 0.35, 0),
                    LayoutOrder = 1,
                }),
                SubtextSize = Roact.createElement(TextLabel, {
                    Text = getErrorMessage(localization, props.ImportStatuses),
                    TextSize = errorStyle.SubtextSize,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Size = UDim2.new(1, 0, 0.35, 0),
                    LayoutOrder = 2,
                })
            }),
        }),
	})
end

ErrorWidget = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(ErrorWidget)

local function mapDispatchToProps(dispatch)
	return {}
end

local function mapStateToProps(state)
	return {
		ImportStatuses = state.importStatuses,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ErrorWidget)