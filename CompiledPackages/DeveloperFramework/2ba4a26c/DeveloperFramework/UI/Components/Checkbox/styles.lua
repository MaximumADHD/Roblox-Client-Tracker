local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-Checkbox", {}, {
	rule(">> ImageLabel", {
		Image = "$CheckboxUncheckedImage",
	}),
	rule(".Checked >> ImageLabel", {
		Image = "$CheckboxCheckedImage",
	}),
	rule(".Indeterminate >> ImageLabel", {
		Image = "$CheckboxIndeterminateImage",
	}),
	rule(".Disabled >> ImageLabel", {
		Image = "$CheckboxDisabledImage",
	}),
})
