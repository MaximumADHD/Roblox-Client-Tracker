local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local export: any

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	export = {
		Color = Color3.new(1, 1, 1), -- Full white so image is uncolored
	}
else
	export = function(theme, getColor)
		local Default = Style.new({
			Color = Color3.new(1, 1, 1), -- Full white so image is uncolored
		})

		return {
			Default = Default,
		}
	end
end

return export
