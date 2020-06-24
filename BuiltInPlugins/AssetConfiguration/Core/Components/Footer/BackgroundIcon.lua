local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)

local Colors = require(Plugin.Core.Util.Colors)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Background = require(Plugin.Core.Types.Background)

local Images = require(Plugin.Core.Util.Images)

local function BackgroundIcon(props)
	local backgroundIndex = props.backgroundIndex

	local elementType = "Frame"

	if backgroundIndex == Background.WHITE then
		props = Cryo.Dictionary.join(props, {
			BackgroundColor3 = Colors.WHITE,
			BorderColor3 = Colors.GRAY_3,
		})

	elseif backgroundIndex == Background.BLACK then
		props = Cryo.Dictionary.join(props, {
			BackgroundColor3 = Colors.GRAY_1,
			BorderColor3 = Colors.GRAY_1,
		})

	elseif backgroundIndex == Background.NONE then
		elementType = "ImageLabel"
		props = Cryo.Dictionary.join(props, {
			BackgroundColor3 = Colors.WHITE,
			BorderColor3 = Colors.GRAY_3,
			Image = Images.NO_BACKGROUND_ICON,
		})

	else
		if DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox background %s is not valid"):format(tostring(backgroundIndex)))
		end

		return nil
	end

	props = Cryo.Dictionary.join(props, {
		backgroundIndex = Cryo.None,
	})

	return Roact.createElement(elementType, props)
end

return BackgroundIcon
