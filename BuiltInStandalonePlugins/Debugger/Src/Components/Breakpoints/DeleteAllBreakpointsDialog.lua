local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local Framework = require(PluginFolder.Packages.Framework)

local UI = Framework.UI
local StudioUI = Framework.StudioUI
local TextLabel = UI.Decoration.TextLabel
local StyledDialog = StudioUI.StyledDialog

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local DeleteAllBreakpointsDialog = Roact.PureComponent:extend("DeleteAllBreakpointsDialog")

function DeleteAllBreakpointsDialog:render()
    local props = self.props
    local localization = props.Localization
    return Roact.createElement(StyledDialog, {
        Style = "AcceptCancel",
        Enabled = props.Enabled,
        Modal = true,
        Title = localization:getText("BreakpointsWindow", "DeleteAll"),
        MinContentSize = Vector2.new(300, 100),
        Buttons = {
            { Key = "Yes", Text = localization:getText("BreakpointsWindow", "DeleteAllPopupYes") },
            { Key = "No", Text = localization:getText("BreakpointsWindow", "DeleteAllPopupNo") },
        },
        OnButtonPressed = function(key)
            if key == "Yes" then
                props.DeleteAllBreakpoints()
            end
            props.CloseDialog()
        end,
        OnClose = function()
            props.CloseDialog()
        end,
    }, {
        Contents = Roact.createElement(TextLabel, {
            BackgroundTransparency = 1.0,
            TextSize = 20,
            Text = localization:getText("BreakpointsWindow", "DeleteAllPopupText"),
            TextColor3 = Color3.new(1, 1, 1),
            Size = UDim2.fromScale(1, 1),
            Position = UDim2.fromScale(0, 0),
        }),
    })
end

DeleteAllBreakpointsDialog = ContextServices.withContext({
	Localization = Localization,
})(DeleteAllBreakpointsDialog)

return DeleteAllBreakpointsDialog
