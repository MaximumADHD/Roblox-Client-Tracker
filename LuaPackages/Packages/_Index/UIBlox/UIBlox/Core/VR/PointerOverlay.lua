local RunService = game:GetService("RunService")
local VRRoot = script.Parent
local Packages = VRRoot.Parent.Parent.Parent
local React = require(Packages.React)
local Roact = require(Packages.Roact)
local ExternalEventConnection = require(Packages.UIBlox.Utility.ExternalEventConnection)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local Constants = require(VRRoot.Constants)

type VRControllerModel = {
	update: () -> (),
	setEnabled: (enabled: boolean) -> (),
	new: (modelEnum: Enum.UserCFrame) -> VRControllerModel,
}

type VRService = {
	VREnabled: boolean,
	GetPropertyChangedSignal: (self: VRService, property: string) -> (),
}
type LaserPointer = {
	setMode: (mode: number) -> (),
	setEnableAmidexterousPointer: (enabled: boolean) -> (),
	new: () -> LaserPointer,
}

export type PointerOverlayProps = {
	LaserPointer: LaserPointer,
	VRControllerModel: VRControllerModel,
	VRService: VRService,
	UpdateEvent: RBXScriptSignal,
}

local defaultProps: PointerOverlayProps = {
	VRService = game:GetService("VRService"),
	UpdateEvent = RunService.Heartbeat,
}

local function PointerOverlay(providedProps : PointerOverlayProps)
	local props = Object.assign({}, defaultProps, providedProps)

	-- props types
	local LaserPointerComponent = props.LaserPointer
	local VRControllerModel = props.VRControllerModel
	local VRService = props.VRService

	-- Set up refs and state
	local LaserPointer : Constants.Ref<Part?> = React.useRef(nil)
	local LeftControllerModel : Constants.Ref<Part?> = React.useRef(nil)
	local RightControllerModel : Constants.Ref<Part?> = React.useRef(nil)

	local VREnabledCallback = React.useCallback(function()
		if not LaserPointer.current then
			LaserPointer.current = LaserPointerComponent.new()
			LaserPointer.current:setMode(LaserPointer.current.Mode["Pointer"])
			LaserPointer.current:setEnableAmidexterousPointer(true)
			LeftControllerModel.current = VRControllerModel.new(Enum.UserCFrame.LeftHand)
			RightControllerModel.current = VRControllerModel.new(Enum.UserCFrame.RightHand)
		end

		LeftControllerModel.current:setEnabled(VRService.VREnabled)
		RightControllerModel.current:setEnabled(VRService.VREnabled)
	end, {LeftControllerModel, RightControllerModel, LaserPointer, LaserPointerComponent, VRControllerModel})

	-- Runs on first render, in case we start with VREnabled = true
	React.useEffect(function()
		if VRService.VREnabled then
			VREnabledCallback()
		end
	end, {})

	return React.createElement(Roact.Portal, {
		target = workspace,
	}, {
		UserCFrameChangedConnection = React.createElement(ExternalEventConnection, {
						event = props.UpdateEvent,
			callback = function()
				if LaserPointer.current then
					LaserPointer.current:update()
				end
				if LeftControllerModel.current then
					LeftControllerModel.current:update()
				end
				if RightControllerModel.current then
					RightControllerModel.current:update()
				end
			end,
		}),
		VREnabledConnection = React.createElement(ExternalEventConnection, {
			event = VRService:GetPropertyChangedSignal("VREnabled"),
			callback = VREnabledCallback,
		})
	})
end

return PointerOverlay
