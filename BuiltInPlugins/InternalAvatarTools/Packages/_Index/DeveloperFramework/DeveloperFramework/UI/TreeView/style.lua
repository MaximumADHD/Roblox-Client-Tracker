local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local deepCopy = Util.deepCopy

local UIFolderData = require(Framework.UI.UIFolderData)
local Pane = require(UIFolderData.Pane.style)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

if THEME_REFACTOR then
	local pane = deepCopy(Pane)

	local default = {
		Padding = 2,
	}
	return join(default, pane)
else
	return function(theme, getColor)
		local pane

		local Default = Style.new({
			Padding = 2
		})

		pane = Pane(theme, getColor)

		return {
			Default = Default,
			Box = Style.extend(pane.Box, Default),
			RoundBox = Style.extend(pane.RoundBox, Default),
			BorderBox = Style.extend(pane.BorderBox, Default),
		}
	end
end
