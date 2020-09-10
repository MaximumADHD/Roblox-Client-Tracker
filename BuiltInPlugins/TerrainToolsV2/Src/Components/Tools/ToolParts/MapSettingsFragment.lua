local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

--[[
	Fragment containing a Position and Size input field.

Props:
	InitialLayoutOrder : number = 1
	Position : {X: number, Y: number, Z: number}
	Size : {X: number, Y: number, Z: number}
	OnPositionChanged : (vector : string, axis : string, value : string, isValid : bool) -> void
		e.g.: props.OnPositionChanged("Position", "X", "123", true)
	OnSizeChanged : (vector : string, axis : string, value : string, isValid : bool) -> void
	SetMapSettingsValid : (bool) -> void
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

local ToolParts = script.Parent
local VectorTextInput = require(ToolParts.VectorTextInput)

local MIN_SIZE = 4
local MAX_SIZE = 16384

local MapSettingsFragment = Roact.PureComponent:extend(script.Name)

function MapSettingsFragment:init(props)
	self.validFieldState = {
		Position = {
			X = true,
			Y = true,
			Z = true,
		},
		Size = {
			X = true,
			Y = true,
			Z = true,
		}
	}

	local function verifyFields()
		local result = true
		for _, vectorState in pairs(self.validFieldState) do
			for _, isValid in pairs(vectorState) do
				if not isValid then
					result = false
					break
				end
			end
		end

		if self.props.SetMapSettingsValid then
			self.props.SetMapSettingsValid(result)
		end

		return result
	end

	local function dispatchVectorChanged(vector, axis, text, isValid)
		if vector == "Position" then
			if self.props.OnPositionChanged then
				self.props.OnPositionChanged(vector, axis, text, isValid)
			end
		elseif vector == "Size" then
			if self.props.OnSizeChanged then
				self.props.OnSizeChanged(vector, axis, text, isValid)
			end
		else
			warn("MapSettings dispatchVectorChanged unknown vector", vector)
		end
	end

	self.onVectorFocusLost = function(vector, axis, enterPressed, text, isValid)
		if verifyFields() then
			dispatchVectorChanged(vector, axis, text, isValid)
		end
	end

	self.onVectorValueChanged = function(vector, axis, text, isValid)
		self.validFieldState[vector][axis] = isValid
		dispatchVectorChanged(vector, axis, text, isValid)
	end
end

function MapSettingsFragment:_render(localization)
	local pos = self.props.Position
	local size = self.props.Size
	local initialLayoutOrder = self.props.InitialLayoutOrder or 1

	local showPositionSelector = pos ~= nil
	local showSizeSelector = size ~= nil

	local positionLayoutOrder = initialLayoutOrder
	local sizeLayoutOrder = initialLayoutOrder + (showPositionSelector and 1 or 0)

	return Roact.createFragment({
		PositionInput = showPositionSelector and Roact.createElement(VectorTextInput, {
			LayoutOrder = positionLayoutOrder,
			Text = localization:getText("MapSettings", "Position"),
			Key = "Position",
			Vector = pos,
			Precisions = {X = 0, Y = 0, Z = 0},
			OnFocusLost = self.onVectorFocusLost,
			OnValueChanged = self.onVectorValueChanged,
		}),

		SizeInput = showSizeSelector and Roact.createElement(VectorTextInput, {
			LayoutOrder = sizeLayoutOrder,
			Text = localization:getText("MapSettings", "Size"),
			Key = "Size",
			Vector = size,
			MinValues = {X = MIN_SIZE, Y = MIN_SIZE, Z = MIN_SIZE},
			MaxValues = {X = MAX_SIZE, Y = MAX_SIZE, Z = MAX_SIZE},
			Precisions = {X = 0, Y = 0, Z = 0},
			OnFocusLost = self.onVectorFocusLost,
			OnValueChanged = self.onVectorValueChanged,
		}),
	})
end

function MapSettingsFragment:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Localization:get())
	else
		return withLocalization(function(localization)
			return self:_render(localization)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(MapSettingsFragment, {
		Localization = ContextItems.UILibraryLocalization,
	})
end

return MapSettingsFragment
