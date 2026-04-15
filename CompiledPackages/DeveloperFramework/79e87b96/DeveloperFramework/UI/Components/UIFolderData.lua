local Framework = script:FindFirstAncestor("UI").Parent
local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign
local createFolderDataLookup = require(Framework.Util.createFolderDataLookup)

return assign(createFolderDataLookup(Framework.UI.Components:GetChildren()), {
	Button = {
		name = "Button",
		story = Framework.UI.Components.DEPRECATED_Button:FindFirstChild("DEPRECATED_Button.story"),
		style = Framework.UI.Components.DEPRECATED_Button:FindFirstChild("style"),
		test = Framework.UI.Components.DEPRECATED_Button:FindFirstChild("init.test"),
	},
})
