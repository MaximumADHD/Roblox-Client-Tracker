local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	return {
		StartColor = StyleKey.DimmedText,
		EndColor = StyleKey.DialogMainButtonSelected,
	}
else
	return function(theme, getColor)
		local Default = Style.new({
			StartColor = theme:GetColor("DimmedText"),
			EndColor = theme:GetColor("DialogMainButton", "Selected")
		})

		return {
			Default = Default,
		}
	end
end