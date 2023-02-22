local RunService = game:GetService("RunService")
local ContextActionService = game:GetService("ContextActionService")
local VRRoot = script.Parent
local Packages = VRRoot.Parent.Parent.Parent
local React = require(Packages.React)
local Roact = require(Packages.Roact)
local ExternalEventConnection = require(Packages.UIBlox.Utility.ExternalEventConnection)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local Constants = require(VRRoot.Constants)
local VR = script.Parent
local App = VR.Parent
local UIBlox = App.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local GetEngineFeatureSafe = require(UIBlox.Core.Utility.GetEngineFeatureSafe)

local EngineFeatureBindActivateAllowMultiple = GetEngineFeatureSafe("EngineFeatureBindActivateAllowMultiple")

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
	setEnableAmbidexterousPointer: (enabled: boolean) -> (),
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

local function PointerOverlay(providedProps: PointerOverlayProps)
	local props = Object.assign({}, defaultProps, providedProps)

	-- props types
	local LaserPointerComponent = props.LaserPointer
	local VRControllerModel = props.VRControllerModel
	local VRService = props.VRService

	-- Set up refs and state
	local LaserPointer: Constants.Ref<Part?> = React.useRef(nil)
	local LeftControllerModel: Constants.Ref<Part?> = React.useRef(nil)
	local RightControllerModel: Constants.Ref<Part?> = React.useRef(nil)

	local vrSessionStateAvailable = false
	local vrSessionStateSignal = nil
	if UIBloxConfig.enableAutoHidingPointerOverlay then
		vrSessionStateAvailable, vrSessionStateSignal = pcall(function()
			return VRService:GetPropertyChangedSignal("VRSessionState")
		end)
	end

	local VREnabledCallback = React.useCallback(function()
		if not LaserPointer.current then
			LaserPointer.current = LaserPointerComponent.new()
			LaserPointer.current:setMode(LaserPointer.current.Mode["Pointer"])
			LaserPointer.current:setEnableAmbidexterousPointer(true)
			LeftControllerModel.current = VRControllerModel.new(Enum.UserCFrame.LeftHand)
			RightControllerModel.current = VRControllerModel.new(Enum.UserCFrame.RightHand)
		end

		LeftControllerModel.current:setEnabled(VRService.VREnabled)
		RightControllerModel.current:setEnabled(VRService.VREnabled)
		if UIBloxConfig.moveBindActivate and EngineFeatureBindActivateAllowMultiple then
			if VRService.VREnabled then
				ContextActionService:BindActivate(
					Enum.UserInputType.Gamepad1,
					Enum.KeyCode.ButtonA,
					Enum.KeyCode.ButtonR2
				)
			end
		end
	end, { LeftControllerModel, RightControllerModel, LaserPointer, LaserPointerComponent, VRControllerModel })

	local VRDisabledCallback
	if UIBloxConfig.moveBindActivate then
		VRDisabledCallback = React.useCallback(function()
			if LeftControllerModel.current then
				LeftControllerModel.current:setEnabled(false)
			end
			if RightControllerModel.current then
				RightControllerModel.current:setEnabled(false)
			end
			if EngineFeatureBindActivateAllowMultiple then
				ContextActionService:UnbindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonA)
				ContextActionService:UnbindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonR2)
			end
		end, { LeftControllerModel, RightControllerModel, LaserPointer, LaserPointerComponent, VRControllerModel })
	end

	local VRSessionStateCallback = React.useCallback(function()
		local overlayEnabeld = not (
			VRService.VRSessionState == Enum.VRSessionState.Idle
			or VRService.VRSessionState == Enum.VRSessionState.Visible
		)
		if LaserPointer.current then
			if overlayEnabeld then
				LaserPointer.current:setMode(LaserPointer.current.Mode["Pointer"])
			else
				LaserPointer.current:setMode(LaserPointer.current.Mode["Disabled"])
			end
		end
		if LeftControllerModel.current then
			LeftControllerModel.current:setEnabled(overlayEnabeld)
		end
		if RightControllerModel.current then
			RightControllerModel.current:setEnabled(overlayEnabeld)
		end
	end, { LeftControllerModel, RightControllerModel, LaserPointer, LaserPointerComponent, VRControllerModel })

	-- Runs on first render, in case we start with VREnabled = true
	React.useEffect(function()
		if VRService.VREnabled then
			VREnabledCallback()
		end
		if UIBloxConfig.moveBindActivate then
			return VRDisabledCallback
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
		}),
		VRSessionStateConnection = if (UIBloxConfig.enableAutoHidingPointerOverlay and vrSessionStateAvailable)
			then React.createElement(ExternalEventConnection, {
				event = vrSessionStateSignal,
				callback = VRSessionStateCallback,
			})
			else nil,
	})
end

return PointerOverlay
