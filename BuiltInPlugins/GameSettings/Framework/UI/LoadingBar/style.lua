local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Cryo = Util.Cryo
local deepCopy = Util.deepCopy
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local UI = require(Framework.UI)
local Decoration = UI.Decoration

local UIFolderData = require(Framework.UI.UIFolderData)
local RoundBox = require(UIFolderData.RoundBox.style)

local export: any

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	local roundBox = deepCopy(RoundBox)
	export = {
		Background = Decoration.RoundBox,
		Foreground = Decoration.RoundBox,
		BackgroundStyle = Cryo.Dictionary.join(roundBox, {
			Color = StyleKey.Button,
		}),
		ForegroundStyle = Cryo.Dictionary.join(roundBox, {
			Color = StyleKey.DialogMainButtonSelected,
		}),
	}
else
	export = function(theme, getColor)
		local roundBox = RoundBox(theme, getColor)

		local Default = Style.new({
			Background = Decoration.RoundBox,
			Foreground = Decoration.RoundBox,
			BackgroundStyle = Style.extend(roundBox.Default, {
				Color = theme:GetColor("Button"),
			}),
			ForegroundStyle = Style.extend(roundBox.Default, {
				Color = theme:GetColor("DialogMainButton", "Selected"),
			}),
		})

		return {
			Default = Default,
		}
	end
end

return export
