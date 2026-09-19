local Framework = script:FindFirstAncestor("UI").Parent
local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local StyleKey = require(Framework.Style.StyleKey)

local StyleModifier = require(Framework.Util.StyleModifier)

local Image = require(Framework.UI.Components.Image)

local toggle = {
	Size = UDim2.fromOffset(40, 24),
	Background = Image,
	BackgroundStyle = {
		Image = StyleKey.ToggleOffImage,
	},
	[StyleModifier.Selected] = {
		BackgroundStyle = {
			Image = StyleKey.ToggleOnImage,
		},
	},
	[StyleModifier.Disabled] = {
		BackgroundStyle = {
			Image = StyleKey.ToggleDisabledImage,
		},
	},
}

toggle[StyleModifier.DisabledAndSelected] = {
	BackgroundStyle = {
		Image = StyleKey.ToggleDisabledAndSelectedImage,
	},
}

local checkboxSize = UDim2.new(0, 16, 0, 16)

local checkbox = {
	Background = Image,
	BackgroundStyle = {
		Image = StyleKey.CheckboxUncheckedImage,
		Size = checkboxSize,
	},
	[StyleModifier.Selected] = {
		BackgroundStyle = {
			Image = StyleKey.CheckboxCheckedImage,
			Size = checkboxSize,
		},
	},
	[StyleModifier.Indeterminate] = {
		BackgroundStyle = {
			Image = StyleKey.CheckboxIndeterminateImage,
			Size = checkboxSize,
		},
	},
	[StyleModifier.Disabled] = {
		BackgroundStyle = {
			Image = StyleKey.CheckboxDisabledImage,
			Size = checkboxSize,
		},
	},
}

local eyeIconSize = UDim2.new(0, 16, 0, 16)

local eyeIcon = {
	Background = Image,
	BackgroundStyle = {
		Image = StyleKey.EyeIconOffImage,
		Size = eyeIconSize,
	},
	[StyleModifier.Selected] = {
		BackgroundStyle = {
			Image = StyleKey.EyeIconOnImage,
			Size = eyeIconSize,
		},
	},
}

return join(toggle, {
	["&Checkbox"] = checkbox,
	["&EyeIcon"] = eyeIcon,
})
