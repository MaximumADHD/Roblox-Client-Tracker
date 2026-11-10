local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-DragBar", {
	BackgroundColor3 = "$ForegroundMain",
}, {
	rule(":hover", {
		BackgroundColor3 = "$ActionHover",
	}),
	rule(":press", {
		BackgroundColor3 = "$ActionSelected",
	}),
	rule(".Transparent", {
		BackgroundTransparency = 1,
	}),
}, {
	Weight = 5,
})
