local Framework = script:FindFirstAncestor("UI").Parent

local Cryo = require(Framework.Parent.Cryo)
local UIFolderData = require(Framework.UI.Components.UIFolderData)
local DropShadow = require(UIFolderData.DropShadow.style)

local dropShadow = DropShadow
return {
	Padding = 5,
	MaxWidth = 200,
	ShowDelay = 0.3,
	Offset = Vector2.new(10, 5),
	DropShadow = Cryo.Dictionary.join(dropShadow, {
		Radius = 3,
	}),
}
