--[[
	An element with rounded corners
	Supports different background and border colors
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)

local Constants = require(Plugin.Core.Util.Constants)
local Colors = require(Plugin.Core.Util.Colors)
local Images = require(Plugin.Core.Util.Images)

local function RoundElement(isButton)
	local elementType = isButton and "ImageButton" or "ImageLabel"

	return function(props)
		local backgroundProps = {
			-- Necessary to make the rounded background as it uses an image
			BackgroundTransparency = 1,
			Image = Images.ROUNDED_BACKGROUND_IMAGE,
			ImageTransparency = 0,
			ImageColor3 = Colors.WHITE,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Constants.ROUNDED_FRAME_SLICE,

			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
		}

		local removedProps = Cryo.Dictionary.join(props, {
			[Roact.Children] = Cryo.None,
			BackgroundColor3 = Cryo.None,
			BackgroundTransparency = Cryo.None,
			BorderColor3 = Cryo.None,
		})
		backgroundProps = Cryo.Dictionary.join(backgroundProps, removedProps)

		-- Because the roundness is achieved through images, we need to set the ImageColor3 and ImageTransparency instead
		if props.BackgroundColor3 then
			backgroundProps.ImageColor3 = props.BackgroundColor3
		end
		if props.BackgroundTransparency then
			backgroundProps.ImageTransparency = props.BackgroundTransparency
		end

		local borderColor3 = props.BorderColor3 or Colors.GRAY_3

		return Roact.createElement(elementType, backgroundProps, {
			Border = Roact.createElement("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = Images.ROUNDED_BORDER_IMAGE,
				ImageColor3 = borderColor3,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Constants.ROUNDED_FRAME_SLICE,
			}, props[Roact.Children])
		})
	end
end

return RoundElement
