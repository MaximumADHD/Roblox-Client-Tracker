--[[
	Creates a map settings panel.

]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local ToolParts = script.Parent
local Panel = require(ToolParts.Panel)
local LabeledTextInput = require(ToolParts.LabeledTextInput)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local AssetIdSelector = require(ToolParts.AssetIdSelector)
local VectorTextInput = require(ToolParts.VectorTextInput)

local MIN_SIZE = 4
local MAX_SIZE = 16384
local MAX_GRAPHEMES = 12

local MapSettings = Roact.PureComponent:extend(script.Name)

local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

if FFlagTerrainToolsRefactor then
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

		return Roact.createElement(Panel, {
			LayoutOrder = layoutOrder,
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

else
function MapSettings:init()
	self.validState = {
		PositionX = true,
		PositionY = true,
		PositionZ = true,
		SizeX = true,
		SizeY = true,
		SizeZ = true,
	}

	self.onPositionChanged = function(key, localization)
		return function(text)
			self.validState[key] = false
			local number = tonumber(text)
			if number then
				self.validState[key] = true
				return text, nil
			else
				if self.props.OnTextEnter then
					self.props.OnTextEnter(text, key)
				end
				return text, localization:getText("Warning", "InvalidNumber")
			end
		end
	end

	self.onSizeChanged = function(key, localization)
		return function(text)
			self.validState[key] = false
			local number = tonumber(text)
			if number then
				if number < MIN_SIZE then
					return text, localization:getText("Warning", "MinimumSize", MIN_SIZE)
				elseif number > MAX_SIZE then
					return text, localization:getText("Warning", "MaximumSize", MAX_SIZE)
				end
				self.validState[key] = true
				return text, nil
			else
				-- used to let the tool keep track or number of errors
				if self.props.OnTextEnter then
					self.props.OnTextEnter(text, key)
				end
				return text, localization:getText("Warning", "InvalidNumber")
			end
		end
	end

	self.verifyFields = function()
		local result = true
		for _,v in pairs(self.validState) do
			if not v then
				result = false
			end
		end
		if self.props.IsMapSettingsValid then
			self.props.IsMapSettingsValid(result)
		end

		return result
	end

	self.getOnFocusLost = function(key)
		return function(enterPressed, text)
			if self.props.OnTextEnter then
				if self.verifyFields() then
					self.props.OnTextEnter(text, key)
				end
			end
		end
	end
end

function MapSettings:render()
	local heightMapValidation = self.props.HeightMapValidation
	local pos = self.props.Position and self.props.Position or {X = "", Y = "", Z = ""}
	local size = self.props.Size and self.props.Size or {X = "", Y = "", Z = ""}
	local layoutOrder = self.props.LayoutOrder

	return withLocalization(function(localization)
		return Roact.createElement(Panel, {
			Title = localization:getText("MapSettings", "MapSettings"),
			Padding = UDim.new(0, 12),
			LayoutOrder = layoutOrder,
		}, {
			Import = heightMapValidation and Roact.createElement(AssetIdSelector, {
				Size = UDim2.new(1, 0, 0, 60),
				LayoutOrder = 1,
				Label = localization:getText("MapSettings", "HeightMap"),

				OnAssetIdValidated = heightMapValidation,
			}),

			Roact.createElement(LabeledElementPair, {
				Text = localization:getText("MapSettings", "Position"),
				Size = UDim2.new(1, 0, 0, 60),
				Padding = UDim.new(0, 3),
				SizeToContent = true,
				LayoutOrder = 2,
			}, {
				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "X",
					Text = pos.X,
					MaxGraphemes = MAX_GRAPHEMES,
					LayoutOrder = 1,

					OnFocusLost = self.getOnFocusLost("PositionX"),
					ValidateText = self.onPositionChanged("PositionX", localization),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Y",
					Text = pos.Y,
					MaxGraphemes = MAX_GRAPHEMES,
					LayoutOrder = 2,

					OnFocusLost = self.getOnFocusLost("PositionY"),
					ValidateText = self.onPositionChanged("PositionY", localization),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Z",
					Text = pos.Z,
					MaxGraphemes = MAX_GRAPHEMES,
					LayoutOrder = 3,

					OnFocusLost = self.getOnFocusLost("PositionZ"),
					ValidateText = self.onPositionChanged("PositionZ", localization),
				}),
			}),

			Roact.createElement(LabeledElementPair, {
				Text = localization:getText("MapSettings", "Size"),
				Size = UDim2.new(1, 0, 0, 60),
				Padding = UDim.new(0, 3),
				SizeToContent = true,
				LayoutOrder = 3,
			}, {
				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "X",
					Text = size.X,
					MaxGraphemes = MAX_GRAPHEMES,
					LayoutOrder = 1,

					OnFocusLost = self.getOnFocusLost("SizeX"),
					ValidateText = self.onSizeChanged("SizeX", localization),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Y",
					Text = size.Y,
					MaxGraphemes = MAX_GRAPHEMES,
					LayoutOrder = 2,

					OnFocusLost = self.getOnFocusLost("SizeY"),
					ValidateText = self.onSizeChanged("SizeY", localization),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Z",
					Text = size.Z,
					MaxGraphemes = MAX_GRAPHEMES,
					LayoutOrder = 3,

					OnFocusLost = self.getOnFocusLost("SizeZ"),
					ValidateText = self.onSizeChanged("SizeZ", localization),
				}),
			}),
		})
	end)
end

return MapSettings
end
