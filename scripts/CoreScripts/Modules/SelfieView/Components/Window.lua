--!strict
--[[
    Viewport for the SelfieView Module.

    Draggable display on the screen that shows the status of SelfieView as well
	as the current facial expression of the avatar.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Packages = CorePackages.Packages
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local React = require(Packages.React)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local useAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy).useAppPolicy
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector
local LuauPolyfill = require(Packages.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout
local WindowSizeSignal = require(script.Parent.Parent.Parent.Chrome.ChromeShared.Service.WindowSizeSignal)
local useWindowSizeIsLarge = require(script.Parent.Parent.Parent.Chrome.ChromeShared.Hooks.useWindowSizeIsLarge)

local UIBlox = require(Packages.UIBlox)
local Interactable = UIBlox.Core.Control.Interactable
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local ControlState = UIBlox.Core.Control.Enum.ControlState
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local CameraStatusIcon = require(script.Parent.CameraStatusIcon)
local CameraStatusDot = require(script.Parent.CameraStatusDot)
local SizingUtils = require(script.Parent.Parent.Utils.SizingUtils)
local FaceChatUtils = require(script.Parent.Parent.Utils.FaceChatUtils)
local ModelUtils = require(script.Parent.Parent.Utils.ModelUtils)
local useCameraOn = require(script.Parent.Parent.Hooks.useCameraOn)
local useLocalPlayer = require(script.Parent.Parent.Hooks.useLocalPlayer)
local useTrackerMessage = require(script.Parent.Parent.Hooks.useTrackerMessage)
local useTooltipDismissal = require(script.Parent.Parent.Hooks.useTooltipDismissal)
local useScreenSize = require(CoreGui.RobloxGui.Modules.Common.Hooks.useScreenSize)
local Constants = require(script.Parent.Parent.Parent.Chrome.ChromeShared.Unibar.Constants)
local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)
local ChromeService = if ChromeEnabled() then require(Chrome.Service) else nil
local UnibarStyle = require(Chrome.ChromeShared.Unibar.UnibarStyle)

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeScreenSize = CoreGuiCommon.Flags.FFlagTopBarSignalizeScreenSize
local FFlagReactDevtoolsFixTopbar = game:DefineFastFlag("ReactDevtoolsFixTopbar", true)

local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

local ICON_CONTAINER_HEIGHT: number = 44
local ICON_SIZE: number = 28
local BUTTON_SIZE: number = 36
local BUTTON_PADDING: number = 4
local UNFOCUS_DELAY_MS: number = 2000
-- This should never be greater than UNFOCUS_DELAY_MS as that will
-- cause the tooltip to show when the icon is hidden
local HIDE_TOOLTIP_DELAY_MS = 2000

local CLOSE_ICON = Images["icons/actions/previewShrink"]
local EXPAND_ICON = Images["icons/actions/previewExpand"]

local FaceClone = require(script.Parent.FaceClone)

export type WindowProps = {
	id: string,
	windowSize: WindowSizeSignal.WindowSizeSignal,
	isDraggedOut: boolean,
}

local function Window(props: WindowProps): React.ReactNode
	local id = props.id
	local style = useStyle()
	local unibarStyle
	local theme = style.Theme
	local font = style.Font

	local closeButtonFrame
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		closeButtonFrame = unibarStyle.CLOSE_BUTTON_FRAME
	else
		closeButtonFrame = Constants.CLOSE_BUTTON_FRAME
	end

	local showUpdatedCameraPath = useAppPolicy(function(appPolicy)
		return appPolicy.getShowUpdatedCameraPath()
	end)

	local localized = useLocalization({
		robloxPermissionErrorHeader = "CoreScripts.TopBar.RobloxPermissionErrorHeader",
		robloxPermissionErrorBody = if showUpdatedCameraPath
			then "CoreScripts.TopBar.RobloxPermissionErrorBodyTwo"
			else "CoreScripts.TopBar.RobloxPermissionErrorBody",
		dynamicAvatarMissingErrorHeader = "CoreScripts.TopBar.DynamicAvatarMissingErrorHeader",
		dynamicAvatarMissingErrorBody = "CoreScripts.TopBar.DynamicAvatarMissingErrorBody",
	})

	local cameraOn = useCameraOn()
	local trackerMessage = useTrackerMessage()

	local large = useWindowSizeIsLarge(props.windowSize)

	local screenSize = useScreenSize()
	local frameSize: Vector2 = if FFlagTopBarSignalizeScreenSize
		then SizingUtils.getSize(screenSize, large)
		else useSelector(function(state)
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
	local closeButtonHover, setCloseButtonHover = React.useState(false)
	local cameraButtonHover, setCameraButtonHover = React.useState(false)
	local expandButtonHover, setExpandButtonHover = React.useState(false)
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
	end, { unfocusTimeoutID } :: { any })

	local activateCamera = function(muteTooltip)
		userInteracted()
		if not FaceChatUtils.getPermissions().userCamEnabled and not muteTooltip then
			showError(localized.robloxPermissionErrorHeader, localized.robloxPermissionErrorBody)
			return
		end

		if player.Character and not ModelUtils.hasDynamicHead(player.Character) then
			-- We don't want to show this error when turning off the camera.
			if not FaceChatUtils.isCameraOn() and not muteTooltip then
				showError(localized.dynamicAvatarMissingErrorHeader, localized.dynamicAvatarMissingErrorBody)
			end
		end

		Analytics:setLastCtx("SelfView")
		FaceChatUtils.toggleVideoAnimation()
	end

	local cameraButtonClicked: () -> () = React.useCallback(function()
		activateCamera(false)
	end, { FaceChatUtils, ModelUtils, localized, player } :: { any })

	local onActivated = React.useCallback(function()
		userInteracted()
	end, { userInteracted, focused, props.windowSize } :: { any })

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
	end, { player, frameRef } :: { any })

	local cameraHoverState = React.useCallback(function(_, newState)
		setCameraButtonHover(newState == ControlState.Hover)
	end, { setCameraButtonHover })

	local closeHoverState = React.useCallback(function(_, newState)
		setCloseButtonHover(newState == ControlState.Hover)
	end, { setCloseButtonHover })

	local expandHoverState = React.useCallback(function(_, newState)
		setExpandButtonHover(newState == ControlState.Hover)
	end, { setExpandButtonHover })

	local tooltipCallback = React.useCallback(function(triggerPointChanged): React.ReactNode
		return React.createElement(Interactable, {
			Size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
			BackgroundColor3 = if cameraButtonHover and FaceChatUtils.getPermissions().userCamEnabled
				then style.Theme.BackgroundOnHover.Color
				else style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.Overlay.Transparency,
			onStateChanged = cameraHoverState,
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			[React.Change.AbsoluteSize] = triggerPointChanged,
			[React.Change.AbsolutePosition] = triggerPointChanged,
			[React.Event.Activated] = cameraButtonClicked,
		}, {
			Corner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
			CameraStatusIcon = React.createElement(CameraStatusIcon, {
				iconSize = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				transparency = not FaceChatUtils.getPermissions().userCamEnabled and 0.5 or 0,
			}),
		})
	end, { cameraHoverState, cameraButtonClicked } :: { any })

	return React.createElement("Frame", {
		Name = "SelfieViewFrame",
		Active = true,
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
		BackgroundTransparency = 0,
		[React.Event.MouseEnter] = userInteracted,
		[React.Event.MouseMoved] = userInteracted,
		ref = frameRef,
	}, {}, {

		CloseButtonWrapper = focused and React.createElement("Frame", {
			ZIndex = 2,
			BackgroundTransparency = 1,
			Size = closeButtonFrame,
		}, {

			CloseButtonLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
			CloseButtonInteractable = React.createElement(Interactable, {
				Size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
				BackgroundColor3 = if closeButtonHover
					then style.Theme.BackgroundOnHover.Color
					else style.Theme.BackgroundUIContrast.Color,
				BackgroundTransparency = 0.8,
				onStateChanged = closeHoverState,
				[React.Event.Activated] = if ChromeService
					then function()
						ChromeService:toggleWindow(id)
					end
					else nil,
			}, {
				Corner = React.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
				Fragment = React.createElement(React.Fragment, nil, {
					React.createElement("Frame", {
						Name = "X1",
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(0, 16, 0, 2),
						BorderSizePixel = 0,
						BackgroundColor3 = style.Theme.IconEmphasis.Color,
						BackgroundTransparency = 0,
						Rotation = 45,
					}, {
						Corner = React.createElement("UICorner", {
							CornerRadius = UDim.new(1, 0),
						}),
					}) :: any,
					React.createElement("Frame", {
						Name = "X2",
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(0, 16, 0, 2),
						BorderSizePixel = 0,
						BackgroundColor3 = style.Theme.IconEmphasis.Color,
						BackgroundTransparency = 0,
						Rotation = -45,
					}, {
						Corner = React.createElement("UICorner", {
							CornerRadius = UDim.new(1, 0),
						}),
					}) :: any,
				}),
			}),
		}),

		ExpandButtonWrapper = if focused
			then React.createElement("Frame", {
				ZIndex = 2,
				BackgroundTransparency = 1,
				Size = closeButtonFrame,
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
			}, {

				ExpandButtonLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				ExpandButtonPadding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, BUTTON_PADDING),
					PaddingLeft = UDim.new(0, BUTTON_PADDING),
					PaddingRight = UDim.new(0, BUTTON_PADDING),
					PaddingBottom = UDim.new(0, BUTTON_PADDING),
				}),
				ExpandButtonInteractable = React.createElement(Interactable, {
					Size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
					BackgroundColor3 = if expandButtonHover
						then style.Theme.BackgroundOnHover.Color
						else style.Theme.BackgroundUIContrast.Color,
					BackgroundTransparency = 0.8,
					onStateChanged = expandHoverState,
					[React.Event.Activated] = if ChromeService
						then function()
							props.windowSize:toggleIsLarge()
						end
						else nil,
				}, {
					Corner = React.createElement("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
					ExpandImage = React.createElement(ImageSetLabel, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Image = if large then CLOSE_ICON else EXPAND_ICON,
						ImageColor3 = theme.TextEmphasis.Color,
						ImageTransparency = theme.TextEmphasis.Transparency,
					}),
				}),
			})
			else nil,

		Corners = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
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
				TextWrapped = if FFlagReactDevtoolsFixTopbar then nil else true,
				textWrapped = if FFlagReactDevtoolsFixTopbar then true else nil,
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
			Size = closeButtonFrame,
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
				DisplayOrder = 101,
				preferredOrientation = TooltipOrientation.Bottom,
			}, tooltipCallback),
			Hover = React.createElement("Frame", {
				Size = UDim2.fromOffset(ICON_SIZE + BUTTON_PADDING, ICON_SIZE + BUTTON_PADDING),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = style.Theme.BackgroundOnHover.Transparency,
				BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
			}, {
				Corner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			}),
		}) or nil,
		CameraStatusDot = if cameraOn
			then React.createElement(CameraStatusDot, {
				Position = UDim2.new(1, -12, 1, -12),
				ZIndex = 2,
				Size = UDim2.fromOffset(8, 8),
			})
			else nil,
		Interactable = React.createElement(Interactable, {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			[React.Event.Activated] = onActivated,
		}),
	})
end

return Window
