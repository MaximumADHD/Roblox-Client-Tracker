local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
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
	theme = props.Stylizer
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
		backgroundColor = theme.asset.background.color
		borderSize = theme.asset.background.borderSize
		image = theme.asset.background.image
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

local AssetBackground = Roact.Component:extend("AssetBackground1")

function AssetBackground:render()
	return renderContent(self.props, nil)
end

AssetBackground = withContext({
	Stylizer = ContextServices.Stylizer,
})(AssetBackground)

return AssetBackground
