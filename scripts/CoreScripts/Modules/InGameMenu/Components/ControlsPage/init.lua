local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local Controls = require(InGameMenu.Resources.Controls)

local KeyboardControls = require(script.ControlLayouts.KeyboardControls)
local GamepadControls = require(script.ControlLayouts.GamepadControls)
local VRGamepadControls = require(script.ControlLayouts.VRGamepadControls)

local RobloxGui = CoreGui.RobloxGui
local VRUtil = require(RobloxGui.Modules.VR.VRUtil)

local VRService = require(RobloxGui.Modules.VR.VRServiceWrapper)

local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)

local CLOSE_BUTTON_SELECTION_GROUP_NAME = "IGMControlsPage_CloseButtonSelectionGroup"

local ControlsPage = Roact.PureComponent:extend("ControlsPage")

ControlsPage.validateProps = t.strictInterface({
	pageTitle = t.string,
	controlLayout = t.optional(t.string),
	canCaptureFocus = t.optional(t.boolean),
})

function ControlsPage:init()
	self.closeButtonRef = Roact.createRef()
end

function ControlsPage:render()
	local controlLayout = self.props.controlLayout

	if controlLayout == Controls.ControlLayouts.KEYBOARD then
		return Roact.createElement(KeyboardControls)
	elseif controlLayout == Controls.ControlLayouts.GAMEPAD then
		if VRService.VREnabled and VRUtil.getCurrentControllerType() == "Touch" then -- For now we only have a page for these
			return Roact.createElement(VRGamepadControls)
		else
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
		end
	else
		return nil
	end
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local controlLayout = state.controlLayout

	return {
		controlLayout = controlLayout,
		canCaptureFocus = state.menuPage == "Controls",
	}
end)(ControlsPage)
