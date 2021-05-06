local FFlagToolboxDefaultBackgroundMatches = game:GetFastFlag("ToolboxDefaultBackgroundMatches")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Colors = require(Plugin.Core.Util.Colors)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local isCli = require(Plugin.Core.Util.isCli)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Images = require(Plugin.Core.Util.Images)
local Immutable = require(Plugin.Core.Util.Immutable)

local withTheme = ContextHelper.withTheme

local Background = {}

Background.BACKGROUNDS = {
	{
		name = "White",
		color = "White",
	},
	{
		name = "Black",
		color = "Black",
	},
	{
		name = "None",
		color = "None",
	}
}

-- Indices from the above table so we don't use magic numbers elsewhere
Background.WHITE = 1
Background.BLACK = 2
Background.NONE = 3

if FFlagToolboxDefaultBackgroundMatches then
	function Background.getBackgroundForStudioTheme()
		if isCli() then
			return Background.NONE
		end
		
		local themeName = settings().Studio.Theme.Name

		if themeName == "Light" then
			return Background.WHITE
		elseif themeName == "Dark" then
			-- This is intentional - the transparent background looks better in Dark mode
			return Background.NONE
		else
			return Background.NONE
		end	
	end
end

if not FFlagToolboxDefaultBackgroundMatches then
	function Background.DEPRECATED_renderIcon(background, props)
		local elementType = "Frame"

		if background == Background.WHITE then
			props = Immutable.JoinDictionaries(props, {
				BackgroundColor3 = Colors.WHITE,
				BorderColor3 = Colors.GRAY_3,
			})

		elseif background == Background.BLACK then
			props = Immutable.JoinDictionaries(props, {
				BackgroundColor3 = Colors.GRAY_1,
				BorderColor3 = Colors.GRAY_1,
			})

		elseif background == Background.NONE then
			elementType = "ImageLabel"
			props = Immutable.JoinDictionaries(props, {
				BackgroundColor3 = Colors.WHITE,
				BorderColor3 = Colors.GRAY_3,
				Image = Images.NO_BACKGROUND_ICON,
			})

		else
			if DebugFlags.shouldDebugWarnings() then
				warn(("Toolbox background %s is not valid"):format(tostring(background)))
			end

			return nil
		end

		return Roact.createElement(elementType, props)
	end

	function Background.DEPRECATED_renderBackground(background, props, children)
		return withTheme(function(theme)
			local tileCount = 8

			local isDarkerTheme = theme.isDarkerTheme
			local iconTheme = theme.asset.icon

			local backgroundColor = Color3.fromRGB(255, 255, 255)
			local image = ""
			local hasBorder = false

			if background == Background.BLACK then
				backgroundColor = Color3.fromRGB(0, 0, 0)

			elseif background == Background.NONE then
				if isDarkerTheme then
					backgroundColor = theme.toolbox.backgroundColor
					hasBorder = true
				else
					image = Images.NO_BACKGROUND_ICON
				end
			end

			props = Immutable.JoinDictionaries(props, {
				BackgroundColor3 = backgroundColor,
				Image = image,
				BorderColor3 = iconTheme.borderColor,
				BorderSizePixel = hasBorder and 1 or 0,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.new(1 / tileCount, 0, 1 / tileCount, 0),
			})

			return Roact.createElement("ImageLabel", props, children)
		end)
	end
end

return Background
