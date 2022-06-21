--[[
	Button Component to call the function that sets the preview avatar as the StarterCharacter.
]]

local Workspace = game.Workspace

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local PreviewModel = AccessoryAndBodyToolSharedUtil.PreviewModelAsCharacter

local UI = Framework.UI
local Button = UI.Button
local StringUtil = require(Plugin.Src.Util.StringUtil)

local PreviewToStarterCharacterButton = Roact.PureComponent:extend("PreviewToStarterCharacterButton")

function PreviewToStarterCharacterButton:init()
    self.onPreviewButtonClick = function()
        local LayeredClothingEditorPreview = Workspace:FindFirstChild("LayeredClothingEditorPreview")
        if not LayeredClothingEditorPreview then
            return
        end
        local mannequin = LayeredClothingEditorPreview:FindFirstChild("Mannequin")
        if not mannequin then
            return
        end
        PreviewModel:SetPreviewAsCharacter(mannequin, self.props.EditingItemContext:getItem())
    end
end

function PreviewToStarterCharacterButton:render()
    local props = self.props

	local layoutOrder = props.LayoutOrder
	local theme = props.Stylizer

    local text = "Preview"
    local textWidth = StringUtil.getTextWidth(text, theme.TextSize, theme.Font)
    return Roact.createElement(Button, {
        Size = UDim2.new(0, textWidth + theme.MainPadding, 0, theme.ButtonHeight),
        Text = text,
        TextSize = theme.TextSize,
        ButtonHeight = theme.ButtonHeight,
        BackgroundColor3 = Color3.new(0, 0, 0),
        Style = "Round",
        LayoutOrder = layoutOrder,
        OnClick = self.onPreviewButtonClick,
    })
end

PreviewToStarterCharacterButton = withContext({
    Stylizer = ContextServices.Stylizer,
    EditingItemContext = EditingItemContext,
})(PreviewToStarterCharacterButton)

return PreviewToStarterCharacterButton