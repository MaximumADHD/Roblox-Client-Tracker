local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

local StyleKey = require(Framework.Style.StyleKey)

local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local export: any

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	export = {
		Color = StyleKey.Border,
		Image = "rbxasset://textures/StudioSharedUI/dropShadow.png",
		ImageSize = 16,
		Offset = Vector2.new(),
		Radius = 6,
		Transparency = 0,
	}
else
	export = function(theme, getColor)

		local Default = Style.new({
			Color = theme:GetColor("Border"),
			Image = "rbxasset://textures/StudioSharedUI/dropShadow.png",
			ImageSize = 16,
			Offset = Vector2.new(),
			Radius = 6,
			Transparency = 0
		})

		return {
			Default = Default,
		}
	end
end

return export
