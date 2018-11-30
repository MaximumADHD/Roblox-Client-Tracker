--[[
	Info banner

	Props:
		UDim2 Position = UDim2.new(0, 0, 0, 0)
		UDim2 Size = UDim2.new(1, 0, 0, 42)
		number ZIndex = 0
		boolean Visible = true
		string Text = ""
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withTheme = ContextHelper.withTheme

local function InfoBanner(props)
	return withTheme(function(theme)
		local fontSize = Constants.FONT_SIZE_LARGE
		local height = fontSize + (2 * Constants.INFO_BANNER_PADDING)

		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local size = props.Size or UDim2.new(1, 0, 0, height)
		local zindex = props.ZIndex or 0
		local visible = (props.Visible ~= nil and props.Visible) or (props.Visible == nil)
		local text = props.Text or ""

		local infoBannerTheme = theme.infoBanner

		return Roact.createElement("TextLabel", {
			Position = position,
			Size = size,
			BorderSizePixel = 0,
			BackgroundColor3 = infoBannerTheme.backgroundColor,
			ZIndex = zindex,
			Visible = visible,
			Text = text,
			TextColor3 = infoBannerTheme.textColor,
			Font = Constants.FONT,
			TextSize = fontSize,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextWrapped = true,
			ClipsDescendants = true,
		})
	end)
end

return InfoBanner
