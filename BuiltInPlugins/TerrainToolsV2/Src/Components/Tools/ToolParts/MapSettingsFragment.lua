--[[
	Fragment containing a Position and Size input field.

Props:
	InitialLayoutOrder : number = 1
	Position : {X: number, Y: number, Z: number}
	Size : {X: number, Y: number, Z: number}
	MaxVolume : number optional : Maximum volume the size can occupy. If nil then it's not checked, otherwise can show an
		error icon next to size
	OnPositionChanged : (vector : string, axis : string, value : string, isValid : bool) -> void
		e.g.: props.OnPositionChanged("Position", "X", "123", true)
	OnSizeChanged : (vector : string, axis : string, value : string, isValid : bool) -> void
	SetMapSettingsValid : (bool) -> void
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local ToolParts = script.Parent
local VectorTextInput = require(ToolParts.VectorTextInput)

local Constants = require(Plugin.Src.Util.Constants)

local function checkVolume(size, maxVolume)
	if not maxVolume then
		return true
	end

	local volume = 1
	for _, maybeValue in pairs(size) do
		local value = tonumber(maybeValue)
		if value then
			volume = volume * value
		end
	end

	return volume <= maxVolume
end

local function checkFields(position, size, maxVolume, validFieldState)
	for _, vectorState in pairs(validFieldState) do
		for _, isValid in pairs(vectorState) do
			if not isValid then
				return false
			end
		end
	end

	if not checkVolume(size, maxVolume) then
		return false
	end

	return true
end

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

	local function locallyApplyChangeAndVerify(vector, axis, text)
		-- We want to check the most up-to-date version of position/size given what the user typed
		-- But normally won't get that until the next render call
		-- So here we fake applying the change to the struct
		local position = self.props.Position
		local size = self.props.Size
		if vector == "Position" then
			position = Cryo.Dictionary.join(position, {[axis] = text})
		elseif vector == "Size" then
			size = Cryo.Dictionary.join(size, {[axis] = text})
		end

		local result = checkFields(position, size, self.props.MaxVolume, self.validFieldState)

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
		if locallyApplyChangeAndVerify(vector, axis, text) then
			dispatchVectorChanged(vector, axis, text, isValid)
		end
	end

	self.onVectorValueChanged = function(vector, axis, text, isValid)
		self.validFieldState[vector][axis] = isValid
		locallyApplyChangeAndVerify(vector, axis, text)
		dispatchVectorChanged(vector, axis, text, isValid)
	end
end

function MapSettingsFragment:render()
	local localization = self.props.Localization:get()

	local pos = self.props.Position
	local size = self.props.Size
	local initialLayoutOrder = self.props.InitialLayoutOrder or 1

	local showPositionSelector = pos ~= nil
	local showSizeSelector = size ~= nil

	local positionLayoutOrder = initialLayoutOrder
	local sizeLayoutOrder = initialLayoutOrder + (showPositionSelector and 1 or 0)

	local showVolumeError = not checkVolume(size, self.props.MaxVolume)

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
			MinValues = {X = Constants.REGION_MIN_SIZE, Y = Constants.REGION_MIN_SIZE, Z = Constants.REGION_MIN_SIZE},
			MaxValues = {X = Constants.REGION_MAX_SIZE, Y = Constants.REGION_MAX_SIZE, Z = Constants.REGION_MAX_SIZE},
			Precisions = {X = 0, Y = 0, Z = 0},
			OnFocusLost = self.onVectorFocusLost,
			OnValueChanged = self.onVectorValueChanged,
			ErrorMessage = showVolumeError and localization:getText("Warning", "VolumeTooLarge"),
		}),
	})
end

ContextServices.mapToProps(MapSettingsFragment, {
	Localization = ContextItems.UILibraryLocalization,
})

return MapSettingsFragment
