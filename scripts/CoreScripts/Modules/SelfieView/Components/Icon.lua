--!strict
--[[ 
    Wrapper for the SelfieView Module. Injected into Chrome module Unibar.
]]
local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)
local Players = game:GetService("Players")
local LuauPolyfill = require(Packages.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout

local Chrome = script.Parent.Parent.Parent.Chrome
local IconSize = require(Chrome.Unibar.Constants).ICON_SIZE

local CameraStatusIcon = require(script.Parent.CameraStatusIcon)
local CameraStatusDot = require(script.Parent.CameraStatusDot)
local FaceClone = require(script.Parent.FaceClone)
local useCameraOn = require(script.Parent.Parent.Hooks.useCameraOn)

local HIDE_ICON_TIMEOUT_MS: number = 600

local function Icon(props: {}): React.ReactNode
	local showClone: boolean, setShowClone: (boolean) -> () = React.useState(true)
	local cameraOn = useCameraOn()
	local timeoutID: { current: number? } = React.useRef(nil)
	React.useEffect(function()
		if timeoutID.current then
			clearTimeout(timeoutID)
		end
		setShowClone(false)
		timeoutID.current = (setTimeout(function()
			setShowClone(true)
		end, HIDE_ICON_TIMEOUT_MS) :: any) :: number
		return function()
			if timeoutID.current then
				clearTimeout(timeoutID)
			end
		end
	end, { cameraOn })

	local frameRef = React.useRef(nil :: Frame?)
	React.useEffect(function()
		local unmount: () -> ()?
		-- SelfieView throws an error when running tests involving
		-- a cloned avatar. There may be a solution in the future
		-- to mock the clone in tests, but for now we are disabling
		-- the test.
		if Players.LocalPlayer and not _G.__TESTEZ_RUNNING_TEST__ then
			unmount = FaceClone(Players.LocalPlayer, frameRef.current)
		end
		return function()
			if unmount then
				unmount()
			end
		end
	end, { frameRef })

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, {
		CameraStatusDot = showClone and cameraOn and React.createElement(CameraStatusDot, {
			Position = UDim2.fromScale(0.8, 0.7),
			ZIndex = 2,
		}) or nil,
		WrapperFrame = React.createElement("Frame", {
			ref = frameRef,
			Visible = showClone,
			Size = UDim2.fromOffset(IconSize, IconSize),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundColor3 = Color3.fromHex("#DEEBF1"),
		}, {
			Corner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),
		CameraStatusIcon = not showClone and React.createElement(CameraStatusIcon, {
			iconSize = UDim2.fromOffset(IconSize, IconSize),
			dotPosition = UDim2.fromScale(0.8, 0.7),
		}) or nil,
	})
end

return Icon
