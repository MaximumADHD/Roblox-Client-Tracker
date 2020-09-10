local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

local Constants = require(Plugin.Src.Util.Constants)

local ToolParts = script.Parent.Parent
local LabeledSlider = require(ToolParts.LabeledSlider)
local PropertyLock = require(ToolParts.PropertyLock)

local function BrushBaseSizeSlider_render(props, localization)
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
end

if FFlagTerrainToolsUseDevFramework then
	local BrushBaseSizeSlider = Roact.PureComponent:extend("BrushBaseSizeSlider")

	function BrushBaseSizeSlider:render()
		local localization = self.props.Localization:get()

		return BrushBaseSizeSlider_render(self.props, localization)
	end

	ContextServices.mapToProps(BrushBaseSizeSlider, {
		Localization = ContextItems.UILibraryLocalization,
	})

	return BrushBaseSizeSlider

else
	local function BrushBaseSizeSlider(props)
		return withLocalization(function(localization)
			return BrushBaseSizeSlider_render(props, localization)
		end)
	end

	return BrushBaseSizeSlider
end
