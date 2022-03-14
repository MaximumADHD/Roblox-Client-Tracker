local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local Controls = require(InGameMenu.Resources.Controls)

local KeyboardControls = require(script.ControlLayouts.KeyboardControls)
local GamepadControls = require(script.ControlLayouts.GamepadControls)
-- local TouchControls = require(InGameMenu.Components.ControlLayouts.TouchControls)

local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)

local Flags = InGameMenu.Flags
local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

local CLOSE_BUTTON_SELECTION_GROUP_NAME = "IGMControlsPage_CloseButtonSelectionGroup"

local ControlsPage = Roact.PureComponent:extend("ControlsPage")

ControlsPage.validateProps = t.strictInterface({
	pageTitle = t.string,
	controlLayout = t.optional(t.string),
	canCaptureFocus = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.boolean) or nil,
})

if GetFFlagInGameMenuControllerDevelopmentOnly() then
	function ControlsPage:init()
		self.closeButtonRef = Roact.createRef()
	end
end

function ControlsPage:render()
	local controlLayout = self.props.controlLayout

	if controlLayout == Controls.ControlLayouts.KEYBOARD then
		return Roact.createElement(KeyboardControls)
	elseif controlLayout == Controls.ControlLayouts.GAMEPAD then
		if GetFFlagInGameMenuControllerDevelopmentOnly() then
			return Roact.createFragment({
				GamepadControls = Roact.createElement(GamepadControls, {
					closeButtonRef = self.closeButtonRef,
				}),
				FocusHandler = Roact.createElement(FocusHandler, {
					isFocused = self.props.canCaptureFocus,
					didFocus = function()
						local buttonRef = self.closeButtonRef:getValue()
						GuiService:AddSelectionParent(CLOSE_BUTTON_SELECTION_GROUP_NAME, buttonRef)
						GuiService.SelectedCoreObject = buttonRef
					end,
					didBlur = function()
						GuiService:RemoveSelectionGroup(CLOSE_BUTTON_SELECTION_GROUP_NAME)
					end,
				}),
			})
		else
			return Roact.createElement(GamepadControls)
		end
	-- elseif controlLayout == Controls.ControlLayouts.TOUCH then
	-- 	return Roact.createElement(TouchControls)
	else
		return nil
	end
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local controlLayout = state.controlLayout

	local canCaptureFocus = nil
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		canCaptureFocus = state.menuPage == "Controls"
	end

	return {
		controlLayout = controlLayout,
		canCaptureFocus = canCaptureFocus,
	}
end)(ControlsPage)
