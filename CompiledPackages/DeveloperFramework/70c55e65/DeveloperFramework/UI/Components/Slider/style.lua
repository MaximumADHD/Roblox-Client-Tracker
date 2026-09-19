local Framework = script:FindFirstAncestor("UI").Parent

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RangeSlider = require(UIFolderData.RangeSlider.style)

local Util = require(Framework.Util)
local deepCopy = Util.deepCopy

return deepCopy(RangeSlider)
