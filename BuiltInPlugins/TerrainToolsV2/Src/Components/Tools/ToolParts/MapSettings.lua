--[[
	Creates a map settings panel.

Props
	LayoutOrder
	Position
	Size
	HeightMapValidation
	OnPositionChanged
	OnSizeChanged
	SetMapSettingsValid
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization

local ToolParts = script.Parent
local AssetIdSelector = require(ToolParts.AssetIdSelector)
local Panel = require(ToolParts.Panel)
local VectorTextInput = require(ToolParts.VectorTextInput)

local MIN_SIZE = 4
local MAX_SIZE = 16384

local MapSettings = Roact.PureComponent:extend(script.Name)

function MapSettings:init(props)
	self.validState = {
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
		for _, vectorState in pairs(self.validState) do
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
		self.validState[vector][axis] = isValid
		dispatchVectorChanged(vector, axis, text, isValid)
	end
end

function MapSettings:render()
	return withLocalization(function(localization)
		local heightMapValidation = self.props.HeightMapValidation
		local pos = self.props.Position
		local size = self.props.Size
		local layoutOrder = self.props.LayoutOrder
		local isSubsection = self.props.isSubsection

		return Roact.createElement(Panel, {
			LayoutOrder = layoutOrder,
			isSubsection = isSubsection,
			Title = localization:getText("MapSettings", "MapSettings"),
			Padding = UDim.new(0, 12),
		}, {
			Import = heightMapValidation and Roact.createElement(AssetIdSelector, {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, 60),
				Label = localization:getText("MapSettings", "HeightMap"),
				OnAssetIdValidated = heightMapValidation,
			}),

			PositionInput = pos ~= nil and Roact.createElement(VectorTextInput, {
				LayoutOrder = 2,
				Text = localization:getText("MapSettings", "Position"),
				Key = "Position",
				Vector = pos,
				Precisions = {X = 0, Y = 0, Z = 0},
				OnFocusLost = self.onVectorFocusLost,
				OnValueChanged = self.onVectorValueChanged,
			}),

			SizeInput = size ~= nil and Roact.createElement(VectorTextInput, {
				LayoutOrder = 3,
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
	end)
end

return MapSettings
