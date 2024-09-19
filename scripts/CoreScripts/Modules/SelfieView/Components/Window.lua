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
local Constants = require(script.Parent.Parent.Parent.Chrome.Unibar.Constants)
local GetFFlagFixChromeReferences = require(RobloxGui.Modules.Flags.GetFFlagFixChromeReferences)
local Chrome = script.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)
local ChromeService = if GetFFlagFixChromeReferences()
	then if ChromeEnabled() then require(Chrome.Service) else nil
	else require(script.Parent.Parent.Parent.Chrome.Service)

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local GetFFlagSelfieViewPreviewShrinkIcon = require(SelfieViewModule.Flags.GetFFlagSelfieViewPreviewShrinkIcon)
local GetFFlagSelfieViewDontWaitForCharacter = require(SelfieViewModule.Flags.GetFFlagSelfieViewDontWaitForCharacter)
local GetFFlagSelfieViewDontStartOnOpen = require(SelfieViewModule.Flags.GetFFlagSelfieViewDontStartOnOpen)
local GetFFlagSelfieViewHideCameraStatusDot = require(SelfieViewModule.Flags.GetFFlagSelfieViewHideCameraStatusDot)
local GetFFlagSelfieViewV4 = require(RobloxGui.Modules.Flags.GetFFlagSelfieViewV4)

local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

local ICON_CONTAINER_HEIGHT: number = 44
local ICON_SIZE: number = 28
local BUTTON_SIZE: number = 36
local BUTTON_PADDING: number = if GetFFlagSelfieViewV4() then 4 else 10
local UNFOCUS_DELAY_MS: number = 2000
-- This should never be greater than UNFOCUS_DELAY_MS as that will
-- cause the tooltip to show when the icon is hidden
local HIDE_TOOLTIP_DELAY_MS = 2000

local CLOSE_ICON = Images["icons/actions/previewShrink"]
local EXPAND_ICON = Images["icons/actions/previewExpand"]
local CLOSE_BUTTON_HOVER_PADDING = 2
local CLOSE_BUTTON_PADDING = 4
local CLOSE_BUTTON_POSITION = UDim2.fromOffset(14, 14)
local CLOSE_BUTTON_HOVER = Constants.CLOSE_BUTTON_SIZE
	+ UDim2.fromOffset(CLOSE_BUTTON_PADDING * 2, CLOSE_BUTTON_PADDING * 2)

local FaceClone = require(script.Parent.FaceClone)

export type WindowProps = {
	id: string,
	windowSize: WindowSizeSignal.WindowSizeSignal,
	isDraggedOut: boolean,
}

local function Window(props: WindowProps): React.ReactNode
	local id = props.id
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

		if GetFFlagSelfieViewDontWaitForCharacter() then
			if player.Character and not ModelUtils.hasDynamicHead(player.Character) then
				-- We don't want to show this error when turning off the camera.
				if not FaceChatUtils.isCameraOn() and not muteTooltip then
					showError(localized.dynamicAvatarMissingErrorHeader, localized.dynamicAvatarMissingErrorBody)
				end
			end
		else
			if not ModelUtils.hasDynamicHead(player.Character or player.CharacterAdded:Wait()) then
				-- We don't want to show this error when turning off the camera.
				if not FaceChatUtils.isCameraOn() and not muteTooltip then
					showError(localized.dynamicAvatarMissingErrorHeader, localized.dynamicAvatarMissingErrorBody)
				end
			end
		end

		Analytics:setLastCtx("SelfView")
		FaceChatUtils.toggleVideoAnimation()
	end

	local cameraButtonClicked: () -> () = React.useCallback(function()
		activateCamera(false)
	end, { FaceChatUtils, ModelUtils, localized, player } :: { any })

	local onActivated = React.useCallback(function()
		if not GetFFlagSelfieViewV4() and focused then
			props.windowSize:toggleIsLarge()
		end
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
		if not FaceChatUtils.isCameraOn() and not props.isDraggedOut then
			if not GetFFlagSelfieViewDontStartOnOpen() then
				activateCamera(true)
			end
		end

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

	local expandHoverState = if GetFFlagSelfieViewV4()
		then React.useCallback(function(_, newState)
			setExpandButtonHover(newState == ControlState.Hover)
		end, { setExpandButtonHover })
		else nil

	local tooltipCallback = React.useCallback(function(triggerPointChanged): React.ReactNode
		return React.createElement(
			Interactable,
			{
				Size = if GetFFlagSelfieViewV4()
					then UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE)
					else UDim2.fromOffset(ICON_SIZE + BUTTON_PADDING, ICON_SIZE + BUTTON_PADDING),
				BackgroundColor3 = if GetFFlagSelfieViewV4()
					then if cameraButtonHover and FaceChatUtils.getPermissions().userCamEnabled
						then style.Theme.BackgroundOnHover.Color
						else style.Theme.BackgroundUIContrast.Color
					else nil,
				BackgroundTransparency = if GetFFlagSelfieViewV4() then style.Theme.Overlay.Transparency else 1,
				onStateChanged = cameraHoverState,
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				[React.Change.AbsoluteSize] = triggerPointChanged,
				[React.Change.AbsolutePosition] = triggerPointChanged,
				[React.Event.Activated] = cameraButtonClicked,
			},
			if GetFFlagSelfieViewV4()
				then {
					Corner = React.createElement("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
					CameraStatusIcon = React.createElement(CameraStatusIcon, {
						iconSize = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
						transparency = not FaceChatUtils.getPermissions().userCamEnabled and 0.5 or 0,
					}),
				}
				else {}
		)
	end, { cameraHoverState, cameraButtonClicked } :: { any })

	return React.createElement("Frame", {
		Name = "SelfieViewFrame",
		Active = true,
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = if GetFFlagSelfieViewV4()
			then style.Theme.BackgroundUIDefault.Color
			else Color3.new(0, 0, 0),
		BackgroundTransparency = 0,
		[React.Event.MouseEnter] = userInteracted,
		[React.Event.MouseMoved] = userInteracted,
		ref = frameRef,
	}, {}, {

		CloseButtonWrapper = focused and React.createElement("Frame", {
			ZIndex = 2,
			BackgroundTransparency = 1,
			Size = Constants.CLOSE_BUTTON_FRAME,
		}, {

			CloseButtonLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
			CloseButtonPadding = if GetFFlagSelfieViewPreviewShrinkIcon() and not GetFFlagSelfieViewV4()
				then React.createElement(
					"UIPadding",
					if GetFFlagSelfieViewV4()
						then {
							PaddingTop = UDim.new(0, BUTTON_PADDING),
							PaddingLeft = UDim.new(0, BUTTON_PADDING),
							PaddingRight = UDim.new(0, BUTTON_PADDING),
							PaddingBottom = UDim.new(0, BUTTON_PADDING),
						}
						else {
							PaddingTop = UDim.new(0, CLOSE_BUTTON_PADDING),
							PaddingLeft = UDim.new(0, CLOSE_BUTTON_PADDING),
							PaddingRight = UDim.new(0, CLOSE_BUTTON_PADDING),
							PaddingBottom = UDim.new(0, CLOSE_BUTTON_PADDING),
						}
				)
				else nil,
			CloseButtonInteractable = React.createElement(Interactable, {
				Size = if GetFFlagSelfieViewV4()
					then UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE)
					else Constants.CLOSE_BUTTON_FRAME,
				BackgroundColor3 = if GetFFlagSelfieViewV4()
					then if closeButtonHover
						then style.Theme.BackgroundOnHover.Color
						else style.Theme.BackgroundUIContrast.Color
					else nil,
				BackgroundTransparency = if GetFFlagSelfieViewV4() then 0.8 else 1,
				onStateChanged = closeHoverState,
				[React.Event.Activated] = if ChromeService
					then function()
						ChromeService:toggleWindow(id)
					end
					else nil,
			}, {
				Corner = if GetFFlagSelfieViewV4()
					then React.createElement("UICorner", {
						CornerRadius = UDim.new(1, 0),
					})
					else nil,
				CloseImage = if GetFFlagSelfieViewPreviewShrinkIcon() and not GetFFlagSelfieViewV4()
					then React.createElement(ImageSetLabel, {
						AnchorPoint = if GetFFlagSelfieViewV4() then Vector2.new(0.5, 0.5) else nil,
						BackgroundTransparency = 1,
						Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
						Position = if GetFFlagSelfieViewV4()
							then UDim2.new(0.5, 0, 0.5, 0)
							else UDim2.fromOffset(CLOSE_BUTTON_HOVER_PADDING, CLOSE_BUTTON_HOVER_PADDING),
						Image = CLOSE_ICON,
						ImageColor3 = theme.TextEmphasis.Color,
						ImageTransparency = theme.TextEmphasis.Transparency,
					})
					else nil,
				Fragment = if not GetFFlagSelfieViewPreviewShrinkIcon() or GetFFlagSelfieViewV4()
					then React.createElement(React.Fragment, nil, {
						React.createElement("Frame", {
							Name = "X1",
							Position = if GetFFlagSelfieViewV4()
								then UDim2.new(0.5, 0, 0.5, 0)
								else CLOSE_BUTTON_POSITION,
							AnchorPoint = if GetFFlagSelfieViewV4() then Vector2.new(0.5, 0.5) else Vector2.new(0.5, 0),
							Size = UDim2.new(0, 16, 0, 2),
							BorderSizePixel = 0,
							BackgroundColor3 = style.Theme.IconEmphasis.Color,
							BackgroundTransparency = 0,
							Rotation = 45,
						}, {
							Corner = React.createElement(
								"UICorner",
								if GetFFlagSelfieViewV4()
									then {
										CornerRadius = UDim.new(1, 0),
									}
									else nil
							),
						}) :: any,
						React.createElement("Frame", {
							Name = "X2",
							Position = if GetFFlagSelfieViewV4()
								then UDim2.new(0.5, 0, 0.5, 0)
								else CLOSE_BUTTON_POSITION,
							AnchorPoint = if GetFFlagSelfieViewV4() then Vector2.new(0.5, 0.5) else Vector2.new(0.5, 0),
							Size = UDim2.new(0, 16, 0, 2),
							BorderSizePixel = 0,
							BackgroundColor3 = style.Theme.IconEmphasis.Color,
							BackgroundTransparency = 0,
							Rotation = -45,
						}, {
							Corner = React.createElement(
								"UICorner",
								if GetFFlagSelfieViewV4()
									then {
										CornerRadius = UDim.new(1, 0),
									}
									else nil
							),
						}) :: any,
					})
					else nil,
				Hover = not GetFFlagSelfieViewV4() and React.createElement("Frame", {
					Size = CLOSE_BUTTON_HOVER,

					Position = if GetFFlagSelfieViewPreviewShrinkIcon() and not GetFFlagSelfieViewV4()
						then UDim2.fromOffset(CLOSE_BUTTON_HOVER_PADDING / 2, CLOSE_BUTTON_HOVER_PADDING / 2)
						else nil,
					Visible = closeButtonHover,
					BackgroundTransparency = style.Theme.BackgroundOnHover.Transparency,
					BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
				}, {
					Corner = React.createElement("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
				}),
			}),
		}),

		ExpandButtonWrapper = if GetFFlagSelfieViewV4() and focused
			then React.createElement("Frame", {
				ZIndex = 2,
				BackgroundTransparency = 1,
				Size = Constants.CLOSE_BUTTON_FRAME,
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
						Image = if GetFFlagSelfieViewV4() and large then CLOSE_ICON else EXPAND_ICON,
						ImageColor3 = theme.TextEmphasis.Color,
						ImageTransparency = theme.TextEmphasis.Transparency,
					}),
				}),
			})
			else nil,

		Corners = React.createElement("UICorner", {
			CornerRadius = if GetFFlagSelfieViewV4() then UDim.new(0, 20) else nil,
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
			Size = if GetFFlagSelfieViewV4()
				then Constants.CLOSE_BUTTON_FRAME
				else UDim2.new(1, 0, 0, ICON_CONTAINER_HEIGHT),
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
			CameraStatusIcon = if not GetFFlagSelfieViewV4()
				then React.createElement(CameraStatusIcon, {
					iconSize = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
					transparency = not FaceChatUtils.getPermissions().userCamEnabled and 0.5 or 0,
				})
				else nil,
		}) or nil,
		FocusDarken = if not GetFFlagSelfieViewV4() and focused
			then React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.7,
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				ZIndex = 2,
			}, {
				Corners = React.createElement("UICorner", {}),
			})
			else nil,
		CameraStatusDot = if GetFFlagSelfieViewV4()
			then cameraOn and React.createElement(CameraStatusDot, {
				Position = UDim2.new(1, -12, 1, -12),
				ZIndex = 2,
				Size = UDim2.fromOffset(8, 8),
			})
			elseif GetFFlagSelfieViewHideCameraStatusDot() then nil
			else cameraOn and React.createElement(CameraStatusDot, {
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
