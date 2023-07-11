--!strict
--[[ 
    Wrapper for the SelfieView Module. Injected into Chrome module Unibar.
]]
local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local CoreGui = game:GetService("CoreGui")

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local useSignal = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.useSignal

local UIBlox = require(Packages.UIBlox)
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local Chrome = script.Parent.Parent.Parent.Chrome
local IconSize = require(Chrome.Unibar.Constants).ICON_SIZE

local Viewport = require(script.Parent.Viewport)
local toggleSelfieViewVisibleSignal = require(script.Parent.Parent.toggleSelfieViewVisibleSignal)

local function SelfieView(props: {})
	local minimized, setMinimized = React.useState(true)
	local cameraOn, setCameraOn = React.useState(false)

	-- Allows for integration with Unibar "onActivated" callback option.
	useSignal(toggleSelfieViewVisibleSignal, function()
		setMinimized(not minimized)
	end)

	return React.createElement("Frame", {
		Size = UDim2.fromOffset(IconSize, IconSize),
		BackgroundTransparency = 1,
	}, {
		StatusIcon = React.createElement(ImageSetLabel, {
			Image = cameraOn and Images["icons/controls/video"] or Images["icons/controls/videoOff"],
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(IconSize, IconSize),
		}),
		SelfieView = ReactRoblox.createPortal({
			SelfieView = React.createElement(Viewport, {
				minimized = minimized,
				setMinimized = setMinimized,
				cameraOn = cameraOn,
				setCameraOn = setCameraOn,
			}),
		}, CoreGui),
	})
end

return SelfieView
