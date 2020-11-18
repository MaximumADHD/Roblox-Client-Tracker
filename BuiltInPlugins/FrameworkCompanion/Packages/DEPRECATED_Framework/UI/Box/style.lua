local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local Util = require(Framework.Util)
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local export: any

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	export = {
		Color = StyleKey.MainBackground,
		Transparency = 0,
		BorderSize = 0,
	}
else
	export = function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.Background, {
			Transparency = 0,
			BorderSize = 0,
		})

		return {
			Default = Default,
		}
	end
end

return export
