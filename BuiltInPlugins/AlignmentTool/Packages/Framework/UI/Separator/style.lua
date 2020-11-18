local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local export: any

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	export = {
		Color = StyleKey.Border,
		StretchMargin = 0,
		Weight = 1
	}
else
	export = function(theme, getColor)

		local Default = Style.new({
			Color = theme:GetColor("Border"),
			StretchMargin = 0,
			Weight = 1
		})

		return {
			Default = Default,
		}
	end
end

return export
