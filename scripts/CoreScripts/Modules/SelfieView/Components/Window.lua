--!strict
--[[
    Viewport for the SelfieView Module. 

    Draggable display on the screen that shows the status of SelfieView as well
	as the current facial expression of the avatar.
]]
local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector
local LuauPolyfill = require(Packages.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout
local WindowSizeSignal = require(script.Parent.Parent.Parent.Chrome.Service.WindowSizeSignal)

local FaceAnimatorService = game:GetService("FaceAnimatorService")

local UIBlox = require(Packages.UIBlox)
local Interactable = UIBlox.Core.Control.Interactable
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle

local CameraStatusIcon = require(script.Parent.CameraStatusIcon)
local CameraStatusDot = require(script.Parent.CameraStatusDot)
local SizingUtils = require(script.Parent.Parent.Utils.SizingUtils)
local useCameraOn = require(script.Parent.Parent.Hooks.useCameraOn)
local useTrackerMessage = require(script.Parent.Parent.Hooks.useTrackerMessage)

local ICON_CONTAINER_HEIGHT: number = 44
local ICON_SIZE: number = 28
local BUTTON_PADDING: number = 10
local UNFOCUS_DELAY_MS: number = 2000

local Players = game:GetService("Players")
local FaceClone = require(script.Parent.FaceClone)

local function toggleClone()
	if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
		return
	end

	FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled
end

export type WindowProps = {
	windowSize: WindowSizeSignal.WindowSizeSignal,
}

local function Window(props: WindowProps): React.ReactNode
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local cameraOn = useCameraOn()
	local trackerMessage = useTrackerMessage()
	local large: boolean, setLarge: (boolean) -> () = React.useState(false)
	local frameSize: Vector2 = useSelector(function(state)
		return SizingUtils.getSize(state.displayOptions.screenSize :: Vector2, large)
	end)
	React.useEffect(function()
		props.windowSize:requestSize(frameSize.X, frameSize.Y)
	end, { frameSize })

	-- After no interaction for a specified time the UI becomes unfocused
	local focused: boolean, setFocused: (boolean) -> () = React.useState(true)
	local timeoutID: { current: number? } = React.useRef(nil)
	local userInteracted = function()
		if timeoutID.current then
			clearTimeout(timeoutID.current)
		end
		setFocused(true)
		timeoutID.current = (setTimeout(function()
			setFocused(false)
		end, UNFOCUS_DELAY_MS) :: any) :: number
	end
	React.useEffect(function()
		userInteracted()
		return function()
			if timeoutID.current then
				clearTimeout(timeoutID.current)
			end
		end
	end, {})

	local frameRef = React.useRef(nil :: Frame?)
	React.useEffect(function()
		-- SelfieView throws an error when running tests involving
		-- a cloned avatar. There may be a solution in the future
		-- to mock the clone in tests, but for now we are disabling
		-- the test.
		if Players.LocalPlayer and not _G.__TESTEZ_RUNNING_TEST__ then
			local unmount = FaceClone(Players.LocalPlayer, frameRef.current)
			return function()
				if unmount then
					unmount()
				end
			end
		end
		return function() end
	end, { frameRef })

	local cameraButtonClicked = React.useCallback(function()
		toggleClone()
		userInteracted()
	end)
	local backgroundClicked = React.useCallback(function()
		if focused then
			setLarge(not large)
		end
		userInteracted()
	end)

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
		IconFrame = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, ICON_CONTAINER_HEIGHT),
			Position = UDim2.fromScale(0.5, 1),
			AnchorPoint = Vector2.new(0.5, 1),
			ZIndex = 2,
			Visible = focused,
		}, {
			Interactable = React.createElement(Interactable, {
				Size = UDim2.fromOffset(ICON_SIZE + BUTTON_PADDING, ICON_SIZE + BUTTON_PADDING),
				BackgroundTransparency = 1,
				[React.Event.Activated] = cameraButtonClicked,
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
			}),
			CameraStatusIcon = React.createElement(CameraStatusIcon, {
				iconSize = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				dotPosition = UDim2.fromScale(0.7, 0.8),
			}),
		}),
		FocusDarken = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 0.7,
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			Visible = focused,
			ZIndex = 2,
		}, {
			Corners = React.createElement("UICorner", {}),
		}),
		CameraStatusDot = React.createElement(CameraStatusDot, {
			Visible = cameraOn and not focused,
			Position = UDim2.new(1, -5, 0, 5),
			AnchorPoint = Vector2.new(1, 0),
			ZIndex = 2,
		}),
		Interactable = React.createElement(Interactable, {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			[React.Event.Activated] = backgroundClicked,
		}),
	})
end

return Window
