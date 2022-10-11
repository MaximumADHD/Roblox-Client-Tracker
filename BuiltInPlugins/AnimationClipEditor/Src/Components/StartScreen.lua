--[[
	Represents the start screens which are shown when there is
	currently no target rig or animation data.

	Props:
		UDim2 Size = The size of the rendered component.
		int LayoutOrder = The sort order of this component in a UIListLayout.
		instance RootInstance = The current root instance targeted by the editor.

		function OnCreateAnimation(name) = A callback for when the user chooses
			to create a new animation with the given name.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local TextEntryPrompt = require(Plugin.Src.Components.TextEntryPrompt)
local CaptureFocus = Framework.UI.CaptureFocus
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local StartScreen = Roact.PureComponent:extend("StartScreen")

function StartScreen:render()
	local theme = GetFFlagExtendPluginTheme() and self.props.Stylizer or self.props.Stylizer.PluginTheme
	local localization = self.props.Localization
	local startScreenTheme = theme.startScreenTheme
	local props = self.props
	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local rootInstance = props.RootInstance
	local onCreateAnimation = props.OnCreateAnimation
	local style = theme.button

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		SelectScreen = rootInstance == nil
			and Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Text = localization:getText("Title", "SelectARig"),
				Font = theme.font,
				TextSize = startScreenTheme.textSize,
				TextColor3 = startScreenTheme.textColor,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundColor3 = theme.backgroundColor,
			}, {
				-- Prevent interaction with the editor until the user selects a rig.
				CaptureFocus = Roact.createElement(CaptureFocus),
			}),

		CreateNewPrompt = rootInstance ~= nil and Roact.createElement(TextEntryPrompt, {
			PromptText = localization:getText("Title", "CreateToStart"),
			NoticeText = localization:getText("Title", "NoAnimationExists_Migrated", { rig = rootInstance.Name }),
			InputText = localization:getText("Dialog", "AnimationName"),
			Text = localization:getText("Title", "DefaultAnimationName"),
			Buttons = {
				{ Key = true, Text = localization:getText("Dialog", "Create"), Style = "RoundPrimary" },
			},
			OnTextSubmitted = onCreateAnimation,
		}),
	})
end

StartScreen = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(StartScreen)

return StartScreen
