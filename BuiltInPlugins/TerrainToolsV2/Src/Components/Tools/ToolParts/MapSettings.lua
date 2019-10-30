--[[
	Creates a map settings panel.

]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(Plugin.Packages.UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local TexturePath = "rbxasset://textures/TerrainTools/"

local ToolParts = script.Parent
local Panel = require(ToolParts.Panel)
local LabeledTextInput = require(ToolParts.LabeledTextInput)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local AssetIdSelector = require(ToolParts.AssetIdSelector)

local MIN_SIZE = 4 
local MAX_SIZE = 16384
local MAX_GRAPHENES = 12

local MapSettings = Roact.Component:extend(script.Name)

function MapSettings:init()
	self.validState = {
		PositionX = true,
		PositionY = true,
		PositionZ = true,
		SizeX = true,
		SizeY = true,
		SizeZ = true,
	}

	self.onPositionChanged = function(key)
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
				return text, WARN_INVALID_INPUT
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
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 1,

					OnFocusLost = self.getOnFocusLost("PositionX"),
					ValidateText = self.onPositionChanged("PositionX"),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Y",
					Text = pos.Y,
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 2,

					OnFocusLost = self.getOnFocusLost("PositionY"),
					ValidateText = self.onPositionChanged("PositionY"),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Z",
					Text = pos.Z,
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 3,

					OnFocusLost = self.getOnFocusLost("PositionZ"),
					ValidateText = self.onPositionChanged("PositionZ"),
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
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 1,

					OnFocusLost = self.getOnFocusLost("SizeX"),
					ValidateText = self.onSizeChanged("SizeX", localization),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Y",
					Text = size.Y,
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 2,

					OnFocusLost = self.getOnFocusLost("SizeY"),
					ValidateText = self.onSizeChanged("SizeY", localization),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Z",
					Text = size.Z,
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 3,

					OnFocusLost = self.getOnFocusLost("SizeZ"),
					ValidateText = self.onSizeChanged("SizeZ", localization),
				}),
			}),
		})
	end)
end

return MapSettings