local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local VRService = game:GetService("VRService")

local ReactOtter = require(CorePackages.Packages.ReactOtter)
local Signals = require(CorePackages.Packages.Signals)
local Display = require(CorePackages.Workspace.Packages.Display)
local getUIScale = Display.GetDisplayStore(false).getUIScale

local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)
local Interactable = UIBlox.Core.Control.Interactable
local useStyleSheet = Foundation.Hooks.useStyleSheet

local MouseIconOverrideService = require(CorePackages.Workspace.Packages.CoreScriptsCommon).MouseIconOverrideService
local Symbol = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol
local INGAME_SELFVIEW_CURSOR_OVERRIDE_KEY = Symbol.named("SelfieViewCursorOverride")

local debounce = require(Root.Utility.debounce)
local ChromeService = require(Root.Service)
local Constants = require(Root.Unibar.Constants)
local ChromeTypes = require(Root.Service.Types)
local ChromeAnalytics = require(Root.Analytics.ChromeAnalytics)
local shouldRejectMultiTouch = require(Root.Utility.shouldRejectMultiTouch)

local SettingsShowSignal = require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen

local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
-- APPEXP-2053 TODO: Remove all use of RobloxGui from ChromeShared
local FIntChromeWindowLayoutOrder = game:DefineFastInt("ChromeWindowLayoutOrder", 2)
local FFlagWindowDragDetection = game:DefineFastFlag("WindowDragDetection", false)
local FIntWindowMinDragDistance = game:DefineFastInt("WindowMinDragDistance", 25)

local FFlagFixWindowStyleSheets = game:DefineFastFlag("FixWindowStyleSheets", false)
local FFlagFixWindowDragError = game:DefineFastFlag("FixWindowDragError", false)

local ChromeSharedFlags = require(Root.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local useWindowSize = require(Root.Hooks.useWindowSize)

export type WindowHostProps = {
	integration: ChromeTypes.IntegrationComponentProps,
	position: UDim2?,
}

local RESIZE_DEBOUNCE_TIME = 0.2
local MOTOR_OPTIONS = {
	dampingRatio = 1,
	frequency = 3,
}
local COMPONENT_ZINDEX = {
	INTEGRATION = 1,
	CLOSE_BUTTON = 2,
	INPUT_SHIELD = 3,
	INPUT_WRAPPER = 4,
}

local POSITION_TWEEN_TIME_SECONDS = 0.35

local didOverrideMouse = false

local WindowHost = function(props: WindowHostProps)
	local windowSize = useWindowSize(props.integration.integration)
	local windowRef: { current: Frame? } = React.useRef(nil)
	local connection: { current: RBXScriptConnection? } = React.useRef(nil)
	local dragging, setDragging = React.useBinding(false)
	local dragDistance = 0
	local positionTween: Tween? = React.useMemo(function()
		return nil
	end, {})

	local tiltMenuOpen, setTiltMenuOpen = React.useBinding(false)
	local inspectMenuOpen, setInspectMenuOpen = React.useBinding(false)

	local menuOpenBinding = if FFlagTopBarSignalizeMenuOpen
		then React.joinBindings({ tiltMenuOpen, inspectMenuOpen }):map(function(values)
			return values[1] or values[2]
		end)
		else nil

	local isMenuOpen = if not FFlagTopBarSignalizeMenuOpen
		then useSelector(function(state)
			return state.displayOptions.menuOpen or state.displayOptions.inspectMenuOpen
		end)
		else nil

	-- When a reposition tween is playing, momentarily disallow dragging the window
	local isRepositioning, updateIsRepositioning = React.useBinding(false)

	local frameWidth, setFrameWidth = ReactOtter.useAnimatedBinding(windowSize.X.Offset)
	local frameHeight, setFrameHeight = ReactOtter.useAnimatedBinding(windowSize.Y.Offset)

	local calculateAnchorPoint = React.useCallback(function()
		return Vector2.new(frameWidth:getValue(), frameHeight:getValue())
			* (props.integration.integration.windowAnchorPoint or Vector2.zero)
	end, { frameWidth, frameHeight, props.integration } :: { unknown })

	React.useEffect(function()
		if frameWidth:getValue() == 0 then
			setFrameWidth(ReactOtter.instant(windowSize.X.Offset) :: any)
		else
			setFrameWidth(ReactOtter.spring(windowSize.X.Offset, MOTOR_OPTIONS))
		end
	end, { windowSize.X.Offset })

	React.useEffect(function()
		if frameHeight:getValue() == 0 then
			setFrameHeight(ReactOtter.instant(windowSize.Y.Offset) :: any)
		else
			setFrameHeight(ReactOtter.spring(windowSize.Y.Offset, MOTOR_OPTIONS))
		end
	end, { windowSize.Y.Offset })

	if FFlagTopBarSignalizeMenuOpen then
		React.useEffect(function()
			local dispose = Signals.createEffect(function(scope)
				local isOpen = CoreGuiCommon.Stores.GetInspectAndBuyStore(scope).getInspectAndBuyOpen(scope)
				setInspectMenuOpen(isOpen)
			end)

			SettingsShowSignal:connect(function(isOpen)
				setTiltMenuOpen(isOpen)
			end)

			return function()
				dispose()
			end
		end, {})
	end

	-- This effect is responsible for ultimately assigning the window position to the window host frame.
	-- Check whether the window was opened as a result of a drag from IconHost, when
	-- a connection is active drive the window frame position with the input object and
	-- adjust the size of the window to expand as if it was scaling up from the icon
	React.useEffect(function()
		local storedConnection: { current: RBXScriptConnection? }? = nil
		local originalInputObj: InputObject? = nil
		local dragConnection: any = ChromeService:dragConnection(props.integration.id)

		if dragConnection then
			storedConnection = dragConnection.connection
			originalInputObj = dragConnection.inputObject
		end
		assert(windowRef.current ~= nil)
		assert(windowRef.current.Parent ~= nil)

		local frame = windowRef.current
		local frameParent = windowRef.current:FindFirstAncestorWhichIsA("ScreenGui") :: ScreenGui
		local parentScreenSize = frameParent.AbsoluteSize

		if storedConnection ~= nil then
			connection = storedConnection
			setDragging(true)

			if connection then
				setFrameWidth(ReactOtter.instant(Constants.WINDOW_ICON_SIZE) :: any)
				setFrameHeight(ReactOtter.instant(Constants.WINDOW_ICON_SIZE) :: any)

				task.defer(setFrameWidth, ReactOtter.spring(windowSize.X.Offset, MOTOR_OPTIONS))
				task.defer(setFrameHeight, ReactOtter.spring(windowSize.Y.Offset, MOTOR_OPTIONS))

				local frameStartPosition =
					Vector3.new(windowRef.current.AbsolutePosition.X, windowRef.current.AbsolutePosition.Y, 0)
				local dragStartPosition = frameStartPosition
				ChromeAnalytics.default:setWindowDefaultPosition(
					props.integration.id,
					Vector2.new(frameStartPosition.X, frameStartPosition.Y)
				)

				connection.current = UserInputService.InputChanged:Connect(function(inputChangedObj: InputObject, _)
					local inputPosition = inputChangedObj.Position

					if shouldRejectMultiTouch(originalInputObj, inputChangedObj) then
						return
					end

					local delta = inputPosition - dragStartPosition
					local newPosition = {
						X = math.clamp((delta + frameStartPosition).X, 0, parentScreenSize.X),
						Y = math.clamp((delta + frameStartPosition).Y, 0, parentScreenSize.Y),
					}

					frame.Position = UDim2.fromOffset(newPosition.X, newPosition.Y)
				end)
			end
		else
			-- If the position signal is available consume it
			-- Always translate the position to absolute coordinates accounting for X scale
			local defaultPosition: UDim2
			if FFlagTokenizeUnibarConstantsWithStyleProvider and props.position then
				local UIScale = getUIScale(false)
				local positionXOffset = UIScale * props.position.X.Offset
				local positionYOffset = UIScale * props.position.Y.Offset
				defaultPosition =
					UDim2.new(props.position.X.Scale, positionXOffset, props.position.Y.Scale, positionYOffset)
			else
				defaultPosition = props.position or UDim2.new()
			end
			if props.integration.integration.cachePosition then
				local cachedPosition = ChromeService:windowPosition(props.integration.id) or UDim2.new()
				local leftSideOffset = if cachedPosition.X.Scale == 1 then parentScreenSize.X else 0
				cachedPosition = UDim2.new(0, leftSideOffset + cachedPosition.X.Offset, 0, cachedPosition.Y.Offset)
				frame.Position = cachedPosition
			else
				local leftSideOffset = if defaultPosition.X.Scale == 1 then parentScreenSize.X else 0
				frame.Position = UDim2.new(0, leftSideOffset + defaultPosition.X.Offset, 0, defaultPosition.Y.Offset)
			end
		end
	end, {})

	local cachePosition = React.useCallback(function(position: UDim2)
		if props.integration.integration.cachePosition then
			ChromeService:updateWindowPosition(props.integration.id, position)
		end
	end, { props.integration })

	local mouseEntered = React.useCallback(function()
		if not VRService.VREnabled then
			didOverrideMouse = true
			MouseIconOverrideService.push(INGAME_SELFVIEW_CURSOR_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
		end
	end)

	local mouseLeft = React.useCallback(function()
		if didOverrideMouse then
			didOverrideMouse = false
			MouseIconOverrideService.pop(INGAME_SELFVIEW_CURSOR_OVERRIDE_KEY)
		end
	end)

	local touchBegan = React.useCallback(function(_: Frame, inputObj: InputObject)
		assert(windowRef.current ~= nil)
		assert(windowRef.current.Parent ~= nil)

		local frame = windowRef.current
		local frameParent = windowRef.current:FindFirstAncestorWhichIsA("ScreenGui") :: ScreenGui
		local parentScreenSize = frameParent.AbsoluteSize

		local anchorPosition = calculateAnchorPoint()

		-- Input Objects are reused across different connections
		-- therefore cache the value of the start position
		local dragStartPosition = inputObj.Position
		local frameStartPosition = Vector3.new(
			windowRef.current.AbsolutePosition.X + anchorPosition.X,
			windowRef.current.AbsolutePosition.Y + anchorPosition.Y,
			0
		)

		if
			inputObj.UserInputType == Enum.UserInputType.MouseButton1
			or inputObj.UserInputType == Enum.UserInputType.Touch
		then
			ChromeAnalytics.default:onWindowTouchBegan(
				props.integration.id,
				Vector2.new(windowRef.current.AbsolutePosition.X, windowRef.current.AbsolutePosition.Y)
			)

			-- Handle dragging
			if not connection.current and not isRepositioning:getValue() then
				-- The dragging callback might never be called when a single tap is registered
				-- Assign the position to the frame ref itself to ensure we have the most current
				local newPosition = {
					X = math.clamp(
						(frameStartPosition).X,
						0,
						if FFlagFixWindowDragError
							then math.max(0, parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X))
							else parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X)
					),
					Y = math.clamp(
						(frameStartPosition).Y,
						0,
						if FFlagFixWindowDragError
							then math.max(0, parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y))
							else parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y)
					),
				}
				frame.Position = UDim2.fromOffset(newPosition.X, newPosition.Y)
				connection.current = UserInputService.InputChanged:Connect(function(inputChangedObj: InputObject, _)
					if shouldRejectMultiTouch(inputObj, inputChangedObj) then
						return
					end

					local inputPosition = inputChangedObj.Position
					local delta = inputPosition - dragStartPosition
					if FFlagWindowDragDetection then
						dragDistance += delta.Magnitude
					end

					if not FFlagWindowDragDetection or dragDistance > FIntWindowMinDragDistance then
						setDragging(true)

						local newPosition = {
							X = math.clamp(
								(delta + frameStartPosition).X,
								anchorPosition.X,
								if FFlagFixWindowDragError
									then math.max(
										anchorPosition.X,
										parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X)
									)
									else parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X)
							),
							Y = math.clamp(
								(delta + frameStartPosition).Y,
								anchorPosition.Y,
								if FFlagFixWindowDragError
									then math.max(
										anchorPosition.Y,
										parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y)
									)
									else parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y)
							),
						}

						frame.Position = UDim2.fromOffset(newPosition.X, newPosition.Y)
						ChromeAnalytics.default:onWindowDrag(props.integration.id, inputPosition)
					end
				end)
			end
		end
	end, { calculateAnchorPoint })

	local requiresRepositioning = function(frame: Frame)
		local frameParent = frame.Parent :: ScreenGui

		local xPosition = frame.Position.X.Offset
		local yPosition = frame.Position.Y.Offset

		local anchorPosition = calculateAnchorPoint()

		local parentScreenSize = frameParent.AbsoluteSize

		return xPosition < anchorPosition.X
			or xPosition > parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X)
			or yPosition < anchorPosition.Y
			or yPosition > parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y)
	end

	-- When the drag ends and the window frame is clipped, reposition it within the screen bounds
	local repositionWindowWithinScreenBounds = React.useCallback(function(instant: boolean?)
		-- Don't reposition if the window was closed within the debounce or umount
		if windowRef == nil or windowRef.current == nil then
			return
		end
		assert(windowRef.current ~= nil)
		assert(windowRef.current.Parent ~= nil)

		local frame = windowRef.current

		local xPosition = frame.Position.X.Offset
		local yPosition = frame.Position.Y.Offset

		if positionTween and positionTween.PlaybackState == Enum.PlaybackState.Playing then
			positionTween:Cancel()
		end

		if requiresRepositioning(frame) then
			if frame == nil then
				return
			end

			local frameParent = windowRef.current.Parent :: ScreenGui

			local anchorPosition = calculateAnchorPoint()

			local parentScreenSize = frameParent.AbsoluteSize

			local x = 0
			local y = 0
			if parentScreenSize.X > frameWidth:getValue() then
				x = math.clamp(
					xPosition,
					anchorPosition.X,
					parentScreenSize.X - (frameWidth:getValue() - anchorPosition.X)
				)
			end
			if parentScreenSize.Y > frameHeight:getValue() then
				y = math.clamp(
					yPosition,
					anchorPosition.Y,
					parentScreenSize.Y - (frameHeight:getValue() - anchorPosition.Y)
				)
			end

			local positionTarget = UDim2.new(0, x, 0, y)

			cachePosition(positionTarget)
			if not instant then
				updateIsRepositioning(true)
				local tweenStyle =
					TweenInfo.new(POSITION_TWEEN_TIME_SECONDS, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
				positionTween = TweenService:Create(frame, tweenStyle, { Position = positionTarget })
				assert(positionTween ~= nil)
				positionTween.Completed:Connect(function(_)
					updateIsRepositioning(false)
					positionTween = nil
				end)
				positionTween:Play()
			else
				frame.Position = positionTarget
			end
		else
			cachePosition(UDim2.new(0, xPosition, 0, yPosition))
		end
	end, { calculateAnchorPoint })

	local touchEnded = React.useCallback(function(_: Frame, inputObj: InputObject)
		if FFlagWindowDragDetection then
			dragDistance = 0
		end
		if
			inputObj.UserInputType == Enum.UserInputType.MouseButton1
			or inputObj.UserInputType == Enum.UserInputType.Touch
		then
			if windowRef.current then
				ChromeAnalytics.default:onWindowTouchEnded(
					props.integration.id,
					Vector2.new(windowRef.current.AbsolutePosition.X, windowRef.current.AbsolutePosition.Y),
					requiresRepositioning(windowRef.current)
				)
			end

			-- Handle dragging
			if connection.current then
				connection.current:Disconnect()
				connection.current = nil
				setDragging(false)
				ChromeService:gesture(props.integration.id, nil)
				repositionWindowWithinScreenBounds()
			end
		end
	end, {})

	local windowDisplayOrder = FIntChromeWindowLayoutOrder

	local styleSheet = useStyleSheet()

	return ReactRoblox.createPortal({
		Name = React.createElement("ScreenGui", {
			Name = Constants.WINDOW_HOST_GUI_NAME .. ":" .. props.integration.id,
			-- TODO manage display ordering
			[React.Change.AbsoluteSize] = debounce(function()
				repositionWindowWithinScreenBounds()
			end, RESIZE_DEBOUNCE_TIME),
			DisplayOrder = if FFlagTopBarSignalizeMenuOpen and menuOpenBinding
				then menuOpenBinding:map(function(value)
					return if value then -1 else windowDisplayOrder
				end)
				elseif isMenuOpen then -1
				else windowDisplayOrder,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			WindowFrame = React.createElement("Frame", {
				Size = React.joinBindings({ frameWidth, frameHeight }):map(function(sizes)
					repositionWindowWithinScreenBounds(true)
					return UDim2.fromOffset(sizes[1], sizes[2])
				end),
				LayoutOrder = 1,
				ref = windowRef,
				BorderSizePixel = 0,
				AnchorPoint = if props.integration.integration.windowAnchorPoint
					then props.integration.integration.windowAnchorPoint
					else nil,
				BackgroundTransparency = 1,
			}, {
				WindowWrapper = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				}, {
					Integration = props.integration.component(props) or nil,
					-- This prevents onActivated (taps/clicks) from propagating
					-- to the integration whenever the user is trying to drag.
					InputShield = React.createElement(Interactable, {
						ZIndex = COMPONENT_ZINDEX.INPUT_SHIELD,
						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = 1,
						Visible = dragging,
					}),
					InputWrapper = React.createElement("Frame", {
						ZIndex = COMPONENT_ZINDEX.INPUT_WRAPPER,
						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = 1,
						[React.Event.InputBegan] = touchBegan,
						[React.Event.InputEnded] = touchEnded,
						[React.Event.MouseEnter] = mouseEntered,
						[React.Event.MouseLeave] = mouseLeft,
						[React.Event.Destroying] = mouseLeft,
					}),
				}),
			}),
			FoundationStyleLink = if FFlagFixWindowStyleSheets
				then React.createElement("StyleLink", {
					StyleSheet = styleSheet,
				})
				else nil,
		}),
	}, CoreGui)
end

return WindowHost
