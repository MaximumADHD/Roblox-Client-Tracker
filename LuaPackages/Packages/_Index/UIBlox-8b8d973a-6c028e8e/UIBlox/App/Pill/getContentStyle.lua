local Pill = script.Parent
local Apps = Pill.Parent
local UIBlox = Apps.Parent

local ControlState = require(UIBlox.Core.Control.Enum.ControlState)

-- Copied from GenericButton. TODO: factor it out
return function(contentMap, controlState, style)
	local contentThemeClass = contentMap[controlState]
		or contentMap[ControlState.Default]

	local contentStyle = {
		Color = style.Theme[contentThemeClass].Color,
		Transparency = style.Theme[contentThemeClass].Transparency,
	}

	--Based on the design specs, the disabled and pressed state is 0.5 * alpha value
	if controlState == ControlState.Disabled or
		controlState == ControlState.Pressed then
			contentStyle.Transparency = 0.5 * contentStyle.Transparency + 0.5
	end
	return contentStyle
end