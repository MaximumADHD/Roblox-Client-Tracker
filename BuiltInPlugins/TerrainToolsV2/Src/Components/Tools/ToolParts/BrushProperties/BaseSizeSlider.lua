local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local Constants = require(Plugin.Src.Util.Constants)

local ToolParts = script.Parent.Parent
local LabeledSlider = require(ToolParts.LabeledSlider)
local PropertyLock = require(ToolParts.PropertyLock)

local function BrushBaseSizeSlider(props)
	return withLocalization(function(localization)
		local layoutOrder = props.LayoutOrder
		local baseSize = props.baseSize
		local setBaseSize = props.setBaseSize

		local showLock = props.ShowLock
		local isLocked = props.IsLocked
		local toggleLock = props.ToggleLock

		return Roact.createElement(LabeledSlider, {
			LayoutOrder = layoutOrder,
			Text = localization:getText("BrushSettings", "BaseSize"),
			Min = Constants.MIN_BRUSH_SIZE,
			Max = Constants.MAX_BRUSH_SIZE,
			SnapIncrement = 1,
			Value = baseSize,
			SetValue = setBaseSize,
		}, {
			SizeHeightLock = showLock and Roact.createElement(PropertyLock, {
				Locked = isLocked,
				Clicked = toggleLock,
			}),
		})
	end)
end

return BrushBaseSizeSlider
