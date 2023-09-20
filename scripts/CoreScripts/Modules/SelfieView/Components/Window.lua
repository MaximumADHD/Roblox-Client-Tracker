--!strict
--[[
    Viewport for the SelfieView Module. 

    Draggable display on the screen that shows the status of SelfieView as well
	as the current facial expression of the avatar.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Packages = CorePackages.Packages
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local React = require(Packages.React)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector
local LuauPolyfill = require(Packages.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout
local WindowSizeSignal = require(script.Parent.Parent.Parent.Chrome.Service.WindowSizeSignal)
local useWindowSizeIsLarge = require(script.Parent.Parent.Parent.Chrome.Hooks.useWindowSizeIsLarge)

local UIBlox = require(Packages.UIBlox)
local Interactable = UIBlox.Core.Control.Interactable
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local CameraStatusIcon = require(script.Parent.CameraStatusIcon)
local CameraStatusDot = require(script.Parent.CameraStatusDot)
local SizingUtils = require(script.Parent.Parent.Utils.SizingUtils)
local FaceChatUtils = require(script.Parent.Parent.Utils.FaceChatUtils)
local ModelUtils = require(script.Parent.Parent.Utils.ModelUtils)
local useCameraOn = require(script.Parent.Parent.Hooks.useCameraOn)
local useLocalPlayer = require(script.Parent.Parent.Hooks.useLocalPlayer)
local useTrackerMessage = require(script.Parent.Parent.Hooks.useTrackerMessage)
local useTooltipDismissal = require(script.Parent.Parent.Hooks.useTooltipDismissal)

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local GetFFlagSelfieViewDontWaitForCharacter = require(SelfieViewModule.Flags.GetFFlagSelfieViewDontWaitForCharacter)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

local ICON_CONTAINER_HEIGHT: number = 44
local ICON_SIZE: number = 28
local BUTTON_PADDING: number = 10
local UNFOCUS_DELAY_MS: number = 2000
-- This should never be greater than UNFOCUS_DELAY_MS as that will
-- cause the tooltip to show when the icon is hidden
local HIDE_TOOLTIP_DELAY_MS = 2000

local FaceClone = require(script.Parent.FaceClone)

export type WindowProps = {
	windowSize: WindowSizeSignal.WindowSizeSignal,
	isDraggedOut: boolean,
}

local function Window(props: WindowProps): React.ReactNode
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local localized = useLocalization({
		robloxPermissionErrorHeader = "CoreScripts.TopBar.RobloxPermissionErrorHeader",
		robloxPermissionErrorBody = "CoreScripts.TopBar.RobloxPermissionErrorBody",
		dynamicAvatarMissingErrorHeader = "CoreScripts.TopBar.DynamicAvatarMissingErrorHeader",
		dynamicAvatarMissingErrorBody = "CoreScripts.TopBar.DynamicAvatarMissingErrorBody",
	})

	local cameraOn = useCameraOn()
	local trackerMessage = useTrackerMessage()

	local large = useWindowSizeIsLarge(props.windowSize)

	local frameSize: Vector2 = useSelector(function(state)
		return SizingUtils.getSize(state.displayOptions.screenSize :: Vector2, large)
	end)
	React.useEffect(function()
		props.windowSize:requestSize(frameSize.X, frameSize.Y)
	end, { frameSize })

	local player: Player = useLocalPlayer()

	local showCameraButton: boolean = React.useMemo(function(): boolean
		return FaceChatUtils.getPermissions().userCamEligible and FaceChatUtils.getPermissions().placeCamEnabled
	end)

	local tooltipHeaderText, tooltipBodyText, showTooltip, showError = useTooltipDismissal(HIDE_TOOLTIP_DELAY_MS)

	-- After no interaction for a specified time the UI becomes unfocused.
	-- This includes error messages.
	local focused: boolean, setFocused: (boolean) -> () = React.useState(true)
	local unfocusTimeoutID: { current: number? } = React.useRef(nil)
	local userInteracted = function()
		if unfocusTimeoutID.current then
			clearTimeout(unfocusTimeoutID.current)
		end
		setFocused(true)
		unfocusTimeoutID.current = (setTimeout(function()
			setFocused(false)
		end, UNFOCUS_DELAY_MS) :: any) :: number
	end
	React.useEffect(function()
		-- The window starts in the focused state.
		userInteracted()
		return function()
			if unfocusTimeoutID.current then
				clearTimeout(unfocusTimeoutID.current)
			end
		end
	end, {})

	local cameraButtonClicked: () -> () = React.useCallback(function()
		userInteracted()
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

	local onActivated = React.useCallback(function()
		if focused then
			props.windowSize:toggleIsLarge()
		end
		userInteracted()
	end)

	local frameRef: { current: Frame? } = React.useRef(nil :: Frame?)
	React.useEffect(function()
		-- SelfieView throws an error when running tests involving
		-- a cloned avatar. There may be a solution in the future
		-- to mock the clone in tests, but for now we are disabling
		-- the test.
		if _G.__TESTEZ_RUNNING_TEST__ then
			return
		end

		local unmount = FaceClone(player, frameRef.current)

		return function()
			if unmount then
				unmount()
			end
		end
	end, { frameRef })

	return React.createElement("Frame", {
		Name = "SelfieViewFrame",
		Active = true,
		Size = UDim2.fromScale(1, 1),
		-- TODO: UPDATE WITH DESIGN TOKENS
		BackgroundColor3 = Color3.new(0, 0, 0),
		BackgroundTransparency = 0,
		ref = frameRef,
	}, {}, {
		Corners = React.createElement("UICorner", {}),
		ControlMessage = React.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.new(0.5, 0, 1, -ICON_CONTAINER_HEIGHT),
			BackgroundColor3 = theme.BackgroundUIDefault.Color,
			AutomaticSize = Enum.AutomaticSize.XY,
			ZIndex = 2,
			BorderSizePixel = 0,
			Visible = trackerMessage.visible,
		}, {
			Corners = React.createElement("UICorner", {}),
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 4),
				PaddingRight = UDim.new(0, 8),
				PaddingBottom = UDim.new(0, 4),
				PaddingLeft = UDim.new(0, 8),
			}),
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
			}),
			Line1 = React.createElement(StyledTextLabel, {
				text = trackerMessage.text,
				fontStyle = font.Footer,
				colorStyle = theme.TextDefault,
				textXAlignment = Enum.TextXAlignment.Center,
				layoutOrder = 1,
				size = UDim2.fromOffset(46, 36),
				TextWrapped = true,
			}),
			Line2 = React.createElement(StyledTextLabel, {
				text = trackerMessage.status,
				fontStyle = font.Footer,
				colorStyle = theme.ContextualPrimaryContent,
				textXAlignment = Enum.TextXAlignment.Center,
				layoutOrder = 2,
				size = UDim2.fromOffset(46, 12),
				automaticSize = Enum.AutomaticSize.Y,
			}),
		}),
		IconFrame = focused and showCameraButton and React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, ICON_CONTAINER_HEIGHT),
			Position = UDim2.fromScale(0.5, 1),
			AnchorPoint = Vector2.new(0.5, 1),
			ZIndex = 2,
		}, {
			Tooltip = withTooltip({
				headerText = tooltipHeaderText,
				bodyText = tooltipBodyText,
				textXAlignment = Enum.TextXAlignment.Left,
			}, {
				guiTarget = CoreGui,
				active = showTooltip,
				DisplayOrder = 10,
				preferredOrientation = TooltipOrientation.Bottom,
			}, function(triggerPointChanged): React.ReactNode
				return React.createElement(Interactable, {
					Size = UDim2.fromOffset(ICON_SIZE + BUTTON_PADDING, ICON_SIZE + BUTTON_PADDING),
					BackgroundTransparency = 1,
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),

					[React.Change.AbsoluteSize] = triggerPointChanged,
					[React.Change.AbsolutePosition] = triggerPointChanged,
					[React.Event.Activated] = cameraButtonClicked,
				})
			end),
			CameraStatusIcon = React.createElement(CameraStatusIcon, {
				iconSize = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				transparency = not FaceChatUtils.getPermissions().userCamEnabled and 0.5 or 0,
			}),
		}) or nil,
		FocusDarken = focused and React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 0.7,
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			ZIndex = 2,
		}, {
			Corners = React.createElement("UICorner", {}),
		}) or nil,
		CameraStatusDot = cameraOn and React.createElement(CameraStatusDot, {
			Position = UDim2.new(1, -5, 0, 5),
			AnchorPoint = Vector2.new(1, 0),
			ZIndex = 2,
		}) or nil,
		Interactable = React.createElement(Interactable, {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			[React.Event.Activated] = onActivated,
		}),
	})
end

return Window
