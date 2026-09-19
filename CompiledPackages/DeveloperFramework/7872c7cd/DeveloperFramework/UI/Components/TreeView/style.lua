local Framework = script:FindFirstAncestor("UI").Parent

local Util = require(Framework.Util)
local deepCopy = Util.deepCopy

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local Pane = require(UIFolderData.Pane.style)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local pane = deepCopy(Pane)

local default = {
	Padding = 2,
	RowHeight = 24,
}
return join(default, pane)
