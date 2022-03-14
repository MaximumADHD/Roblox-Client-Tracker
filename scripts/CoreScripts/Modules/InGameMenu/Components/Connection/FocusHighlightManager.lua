local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)
local InputType = Constants.InputType
local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)
local FocusHandler = require(script.Parent.FocusHandler)

local FocusHighlightManager = Roact.PureComponent:extend("FocusHighlightManager")

FocusHighlightManager.validateProps = t.strictInterface({
	menuOpen = t.boolean,
	inputType = t.string,
})

function FocusHighlightManager:render()
	if GetFFlagIGMGamepadSelectionHistory() then
		return Roact.createElement(FocusHandler, {
			isFocused = not self.props.menuOpen or self.props.inputType ~= InputType.Gamepad,
			didFocus = function()
				GuiService.SelectedCoreObject = nil
			end,
		})
	else
		return Roact.createElement(FocusHandler, {
			isFocused = self.props.menuOpen and self.props.inputType == InputType.Gamepad,
			didBlur = function()
				GuiService.SelectedCoreObject = nil
			end
		})
	end
end

return RoactRodux.UNSTABLE_connect2(
	function(state)
		return {
			menuOpen = state.isMenuOpen,
			inputType = state.displayOptions.inputType,
		}
	end
)(FocusHighlightManager)
