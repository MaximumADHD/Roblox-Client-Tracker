local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local deepCopy = Util.deepCopy

local RoundBox = require(Framework.UI.Components.RoundBox)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBoxStyle = require(UIFolderData.RoundBox.style)

local roundBox = deepCopy(RoundBoxStyle)
return {
	Background = RoundBox,
	Foreground = RoundBox,
	BackgroundStyle = Cryo.Dictionary.join(roundBox, {
		Color = StyleKey.Button,
	}),
	ForegroundStyle = Cryo.Dictionary.join(roundBox, {
		Color = StyleKey.DialogMainButtonSelected,
	}),
}
