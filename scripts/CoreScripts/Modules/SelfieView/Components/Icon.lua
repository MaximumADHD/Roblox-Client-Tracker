--!strict
--[[ 
    Wrapper for the SelfieView Module. Injected into Chrome module Unibar.
]]
local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)

local Chrome = script.Parent.Parent.Parent.Chrome
local IconSize = require(Chrome.Unibar.Constants).ICON_SIZE

local CameraStatusIcon = require(script.Parent.CameraStatusIcon)

local function Icon(props: {}): React.ReactNode
	-- TODO: Make Icon temporary (fade after 600ms) and show FaceClone
	-- in all other situations
	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, {

		CameraStatusIcon = React.createElement(CameraStatusIcon, {
			iconSize = UDim2.fromOffset(IconSize, IconSize),
			dotPosition = UDim2.fromScale(0.8, 0.7),
		}),
	})
end

return Icon
