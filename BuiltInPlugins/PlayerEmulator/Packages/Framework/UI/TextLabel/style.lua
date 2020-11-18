local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local StyleModifier = Util.StyleModifier

local export: any

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	export = {
		[StyleModifier.Disabled] = {
			TextTransparency = 0.5,
		},
		["&Bold"] = {
			Font = Enum.Font.SourceSansBold
		},
	}
else
	export = function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.MainText, {
			[StyleModifier.Disabled] = {
				TextTransparency = 0.5,
			},
		})

		local Bold = Style.extend(Default, {
			Font = Enum.Font.SourceSansBold
		})

		return {
			Bold = Bold,
			Default = Default,
		}
	end
end

return export
