local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)
local rule = Framework.Styling.createStyleRule
local createStyleSheet = Framework.Styling.createStyleSheet

return createStyleSheet(Main.Name, {
	rule(".Plugin-Footer", {
		Size = UDim2.new(1, 0, 0, 42),
	}),
	rule(".Plugin-TopBar", {
		Size = UDim2.new(1, 0, 0, 42),
	}),
	rule(".Plugin-Content", {
		Size = UDim2.new(1, 0, 1, -42),
	}),
})
