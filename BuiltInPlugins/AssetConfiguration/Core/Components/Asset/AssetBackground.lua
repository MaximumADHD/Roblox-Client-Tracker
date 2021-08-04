local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)
local Framework = require(Libs.Framework)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local Background = require(Plugin.Core.Types.Background)

local Images = require(Plugin.Core.Util.Images)

local withTheme = ContextHelper.withTheme
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local function renderContent(props, theme)
	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end
	local tileCount = 8

	local isDarkerTheme = theme.isDarkerTheme
	local iconTheme = theme.asset.icon

	local backgroundColor = Color3.fromRGB(255, 255, 255)
	local image = ""
	local hasBorder = false

	local backgroundIndex = props.backgroundIndex

	local borderSize = 0
	if backgroundIndex == Background.BLACK then
		backgroundColor = Color3.fromRGB(0, 0, 0)
	elseif backgroundIndex == Background.NONE then
		if FFlagToolboxRemoveWithThemes then
			backgroundColor = theme.asset.background.color
			borderSize = theme.asset.background.borderSize
			image = theme.asset.background.image
		else
			if isDarkerTheme then
				backgroundColor = theme.toolbox.backgroundColor
				hasBorder = true
			else
				image = Images.NO_BACKGROUND_ICON
			end
		end
	end

	if (not FFlagToolboxRemoveWithThemes) then
		borderSize = hasBorder and 1 or 0
	end

	props = Cryo.Dictionary.join(props, {
		BackgroundColor3 = backgroundColor,
		Image = image,
		BorderColor3 = iconTheme.borderColor,
		BorderSizePixel = borderSize,
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.new(1 / tileCount, 0, 1 / tileCount, 0),

		backgroundIndex = Cryo.None,
		Stylizer = Cryo.None,
	})

	return Roact.createElement("ImageLabel", props)
end

if FFlagToolboxRemoveWithThemes then
	local AssetBackground = Roact.Component:extend("AssetBackground1")

	function AssetBackground:render()
		return renderContent(self.props, nil)
	end

	AssetBackground = withContext({
		Stylizer = ContextServices.Stylizer,
	})(AssetBackground)

	return AssetBackground
else
	local function AssetBackground(props)
		return withTheme(function(theme)
			return renderContent(props, theme)
		end)
	end
	return AssetBackground
end

