--!strict
--[[ 
    Wrapper for the SelfieView Module. Injected into Chrome module Unibar.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Packages = CorePackages.Packages
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local React = require(Packages.React)
local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local FaceChatUtils = require(script.Parent.Parent.Utils.FaceChatUtils)
local ModelUtils = require(script.Parent.Parent.Utils.ModelUtils)

local UIBlox = require(Packages.UIBlox)
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local Chrome = script.Parent.Parent.Parent.Chrome
local IconSize = require(Chrome.Unibar.Constants).ICON_SIZE

local CameraStatusDot = require(script.Parent.CameraStatusDot)
local FaceClone = require(script.Parent.FaceClone)
local useCameraOn = require(script.Parent.Parent.Hooks.useCameraOn)
local useLocalPlayer = require(script.Parent.Parent.Hooks.useLocalPlayer)
local useTooltipDismissal = require(script.Parent.Parent.Hooks.useTooltipDismissal)

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local GetFFlagSelfieViewDontWaitForCharacter = require(SelfieViewModule.Flags.GetFFlagSelfieViewDontWaitForCharacter)
local GetFFlagSelfViewVisibilityFix = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSelfViewVisibilityFix

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

local HIDE_TOOLTIP_DELAY_MS = 2000

export type IconProps = {
	activatedSignal: AppCommonLib.Signal,
	outerContainerFrameName: string?,
}

local function Icon(props: IconProps): React.ReactNode
	local localized = useLocalization({
		robloxPermissionErrorHeader = "CoreScripts.TopBar.RobloxPermissionErrorHeader",
		robloxPermissionErrorBody = "CoreScripts.TopBar.RobloxPermissionErrorBody",
		dynamicAvatarMissingErrorHeader = "CoreScripts.TopBar.DynamicAvatarMissingErrorHeader",
		dynamicAvatarMissingErrorBody = "CoreScripts.TopBar.DynamicAvatarMissingErrorBody",
	})

	local cameraOn = useCameraOn()
	local player: Player = useLocalPlayer()

	local frameRef = React.useRef(nil :: Frame?)
	React.useEffect(function()
		-- SelfieView throws an error when running tests involving
		-- a cloned avatar. There may be a solution in the future
		-- to mock the clone in tests, but for now we are disabling
		-- the test.
		if _G.__TESTEZ_RUNNING_TEST__ then
			return
		end
		local unmount: () -> ()? = if GetFFlagSelfViewVisibilityFix()
			then FaceClone(player, frameRef.current, props.outerContainerFrameName)
			else FaceClone(player, frameRef.current)
		return function()
			if unmount then
				unmount()
			end
		end
	end, { frameRef })

	local tooltipHeaderText, tooltipBodyText, showTooltip, showError = useTooltipDismissal(HIDE_TOOLTIP_DELAY_MS)

	React.useEffect(function()
		local activatedSignalConnection = props.activatedSignal:connect(function()
			if not FaceChatUtils.getPermissions().userCamEligible then
				return
			end
			if not FaceChatUtils.getPermissions().userCamEnabled then
				showError(localized.robloxPermissionErrorHeader, localized.robloxPermissionErrorBody)
				return
			end
			if GetFFlagSelfieViewDontWaitForCharacter() then
				if player.Character and not ModelUtils.hasDynamicHead(player.Character) then
					-- We don't want to show this error when turning off the camera.
					if not FaceChatUtils.isCameraOn() then
						showError(localized.dynamicAvatarMissingErrorHeader, localized.dynamicAvatarMissingErrorBody)
					end
				end
			else
				if not ModelUtils.hasDynamicHead(player.Character or player.CharacterAdded:Wait()) then
					-- We don't want to show this error when turning off the camera.
					if not FaceChatUtils.isCameraOn() then
						showError(localized.dynamicAvatarMissingErrorHeader, localized.dynamicAvatarMissingErrorBody)
					end
				end
			end

			Analytics:setLastCtx("SelfView")
			FaceChatUtils.toggleVideoAnimation()
		end)
		return function()
			activatedSignalConnection.disconnect()
		end
	end, { props.activatedSignal })

	return withTooltip({
		headerText = tooltipHeaderText,
		bodyText = tooltipBodyText,
		textXAlignment = Enum.TextXAlignment.Left,
	}, {
		guiTarget = CoreGui,
		active = showTooltip,
		-- TODO: Standardize SelfView & Unibar display orders.
		DisplayOrder = 100,
		preferredOrientation = TooltipOrientation.Bottom,
	}, function(triggerPointChanged): React.ReactNode
		return React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			[React.Change.AbsoluteSize] = triggerPointChanged,
			[React.Change.AbsolutePosition] = triggerPointChanged,
		}, {
			CameraStatusDot = cameraOn and React.createElement(CameraStatusDot, {
				Position = UDim2.fromScale(0.8, 0.7),
				ZIndex = 2,
			}) or nil,
			WrapperCanvasGroup = React.createElement("CanvasGroup", {
				ref = frameRef,
				Size = UDim2.fromOffset(IconSize, IconSize),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundColor3 = Color3.fromHex("#DEEBF1"),
			}, {
				Corner = React.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
			}),
		})
	end)
end

return Icon
