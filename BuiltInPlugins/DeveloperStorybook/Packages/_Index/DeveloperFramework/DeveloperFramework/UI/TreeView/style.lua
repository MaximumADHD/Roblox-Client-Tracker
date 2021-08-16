local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local UI = require(Framework.UI)
local Decoration = UI.Decoration
local Style = Util.Style
local deepCopy = Util.deepCopy

local UIFolderData = require(Framework.UI.UIFolderData)
local ScrollingFrame = require(UIFolderData.ScrollingFrame.style)
local Pane = require(UIFolderData.Pane.style)
local RoundBox = require(UIFolderData.RoundBox.style)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local FFlagDevFrameworkTreeViewRow = game:GetFastFlag("DevFrameworkTreeViewRow")
local FFlagDevFrameworkFixTreeViewTheme = game:GetFastFlag("DevFrameworkFixTreeViewTheme")

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

if THEME_REFACTOR then
	if FFlagDevFrameworkTreeViewRow then
		if FFlagDevFrameworkFixTreeViewTheme then
			local pane = deepCopy(Pane)

			local default = {
				Padding = 2,
			}
			return join(default, pane)
		else
			return {
				Padding = 2
			}
		end
	else
		return {
			Background = Decoration.RoundBox,
			BackgroundStyle = RoundBox,
			ScrollingFrame = ScrollingFrame,
			Padding = 1
		}
	end
else
	return function(theme, getColor)
		local pane
		local roundBox = RoundBox(theme, getColor) -- Remove with FFlagDevFrameworkFixTreeViewTheme
		local scrollingFrame = ScrollingFrame(theme, getColor) -- Remove with FFlagDevFrameworkFixTreeViewTheme

		local Default

		if FFlagDevFrameworkTreeViewRow then
			Default = Style.new({
				Padding = 2
			})

			if FFlagDevFrameworkFixTreeViewTheme then
				pane = Pane(theme, getColor)

				return {
					Default = Default,
					Box = Style.extend(pane.Box, Default),
					RoundBox = Style.extend(pane.RoundBox, Default),
					BorderBox = Style.extend(pane.BorderBox, Default),
				}
			else
				return {
					Default = Default,
				}
			end
		else
			Default = Style.new({
				Background = Decoration.RoundBox,
				BackgroundStyle = roundBox.Default,
				ScrollingFrame = Style.extend(scrollingFrame.Default, {}),
				Padding = 1
			})

			return {
				Default = Default,
			}
		end
	end
end
