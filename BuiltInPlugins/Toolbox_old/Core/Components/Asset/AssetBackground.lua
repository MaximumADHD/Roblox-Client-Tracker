local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local Background = require(Plugin.Core.Types.Background)

local Images = require(Plugin.Core.Util.Images)

local withTheme = ContextHelper.withTheme

local function AssetBackground(props)
	return withTheme(function(theme)
		local tileCount = 8

		local isDarkerTheme = theme.isDarkerTheme
		local iconTheme = theme.asset.icon

		local backgroundColor = Color3.fromRGB(255, 255, 255)
		local image = ""
		local hasBorder = false

		local backgroundIndex = props.backgroundIndex

		if backgroundIndex == Background.BLACK then
			backgroundColor = Color3.fromRGB(0, 0, 0)

		elseif backgroundIndex == Background.NONE then
			if isDarkerTheme then
				backgroundColor = theme.toolbox.backgroundColor
				hasBorder = true
			else
				image = Images.NO_BACKGROUND_ICON
			end
		end

		props = Cryo.Dictionary.join(props, {
			BackgroundColor3 = backgroundColor,
			Image = image,
			BorderColor3 = iconTheme.borderColor,
			BorderSizePixel = hasBorder and 1 or 0,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.new(1 / tileCount, 0, 1 / tileCount, 0),

			backgroundIndex = Cryo.None,
		})

		return Roact.createElement("ImageLabel", props)
	end)
end

return AssetBackground
