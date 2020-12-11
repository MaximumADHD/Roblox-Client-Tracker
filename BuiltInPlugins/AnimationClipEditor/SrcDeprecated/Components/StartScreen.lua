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
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.SrcDeprecated.Util.Constants)
local UILibrary = require(Plugin.UILibrary)
local TextEntryPrompt = require(Plugin.SrcDeprecated.Components.TextEntryPrompt)

local CaptureFocus = UILibrary.Focus.CaptureFocus

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local StartScreen = Roact.PureComponent:extend("StartScreen")

function StartScreen:render()
	return self:renderInternal(function(theme, localization)
		local startScreenTheme = theme.startScreenTheme
		local props = self.props
		local size = props.Size
		local layoutOrder = props.LayoutOrder
		local rootInstance = props.RootInstance
		local onCreateAnimation = props.OnCreateAnimation

		return Roact.createElement("Frame", {
			Size = size,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			SelectScreen = rootInstance == nil and Roact.createElement("TextLabel", {
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
				NoticeText = localization:getText("Title", "NoAnimationExists", rootInstance.Name),
				InputText = localization:getText("Dialog", "AnimationName"),
				Text = Constants.DEFAULT_ANIMATION_NAME,
				Buttons = {
					{Key = true, Text = localization:getText("Dialog", "Create"), Style = "Primary"},
				},
				OnTextSubmitted = onCreateAnimation,
			}),
		})
	end)
end

-- Combine "with" functions to prevent rightward drift of render()
function StartScreen:renderInternal(renderFunc)
	return withTheme(function(theme)
		return withLocalization(function(localization)
			return renderFunc(theme, localization)
		end)
	end)
end

return StartScreen