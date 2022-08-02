local FFlagRemoveUILibraryCompatLocalization = game:GetFastFlag("RemoveUILibraryCompatLocalization")
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = if FFlagRemoveUILibraryCompatLocalization then nil else require(Plugin.Src.ContextItems)

local Constants = require(Plugin.Src.Util.Constants)

local ToolParts = script.Parent.Parent
local LabeledSlider = require(ToolParts.LabeledSlider)
local PropertyLock = require(ToolParts.PropertyLock)

local BrushBaseSizeSlider = Roact.PureComponent:extend("BrushBaseSizeSlider")

function BrushBaseSizeSlider:render()
	local localization = if FFlagRemoveUILibraryCompatLocalization then self.props.Localization else self.props.Localization:get()

	local layoutOrder = self.props.LayoutOrder
	local baseSize = self.props.baseSize
	local setBaseSize = self.props.setBaseSize

	local showLock = self.props.ShowLock
	local isLocked = self.props.IsLocked
	local toggleLock = self.props.ToggleLock

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
end

BrushBaseSizeSlider = withContext({
	Localization = if FFlagRemoveUILibraryCompatLocalization then ContextServices.Localization else ContextItems.UILibraryLocalization,
})(BrushBaseSizeSlider)

return BrushBaseSizeSlider
