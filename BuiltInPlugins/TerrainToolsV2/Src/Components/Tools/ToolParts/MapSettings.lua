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

local WARN_INVALID_INPUT = "Must be a valid number."
local WARN_MINIMUM_SIZE = "Size cannot be less than 2."
local MAX_GRAPHENES = 12

local MapSettings = Roact.Component:extend(script.Name)

function MapSettings:init()
	self.onPositionChanged = function(key)
		return function(text)
			local number = tonumber(text)
			if number then
				return text, nil
			else
				if self.props.onTextEnter then
					self.props.onTextEnter(text, key)
				end
				return text, WARN_INVALID_INPUT
			end
		end
	end

	self.onSizeChanged = function(key)
		return function(text)
			local number = tonumber(text)
			if number then
				if number < 2 then
					return text, WARN_MINIMUM_SIZE
				end
				return text, nil
			else
				-- used to let the tool keep track or number of errors
				if self.props.onTextEnter then
					self.props.onTextEnter(text, key)
				end
				return text, WARN_INVALID_INPUT
			end
		end
	end
end

function MapSettings:render()
	local heightMapValidation = self.props.HeightMapValidation
	local pos = self.props.Position and self.props.Position or {X = "", Y = "", Z = ""}
	local size = self.props.Size and self.props.Size or {X = "", Y = "", Z = ""}
	local onTextEnter = self.props.onTextEnter
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

					OnFocusLost = function(enterPressed, text)
						onTextEnter(text, "Position.X")
					end,

					ValidateText = self.onPositionChanged("Position.X"),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Y",
					Text = pos.Y,
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 2,

					OnFocusLost = function(enterPressed, text)
						onTextEnter(text, "Position.Y")
					end,

					ValidateText = self.onPositionChanged("Position.Y"),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Z",
					Text = pos.Z,
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 3,

					OnFocusLost = function(enterPressed, text)
						onTextEnter(text, "Position.Z")
					end,

					ValidateText = self.onPositionChanged("Position.Z"),
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

					OnFocusLost = function(enterPressed, text)
						onTextEnter(text, "Size.X")
					end,

					ValidateText = self.onSizeChanged("Size.X"),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Y",
					Text = size.Y,
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 2,

					OnFocusLost = function(enterPressed, text)
						onTextEnter(text, "Size.Y")
					end,

					ValidateText = self.onSizeChanged("Size.Y"),
				}),

				Roact.createElement(LabeledTextInput, {
					Width = UDim.new(0, 136),
					Label = "Z",
					Text = size.Z,
					MaxGraphenes = MAX_GRAPHENES,
					LayoutOrder = 3,

					OnFocusLost = function(enterPressed, text)
						onTextEnter(text, "Size.Z")
					end,

					ValidateText = self.onSizeChanged("Size.Z"),
				}),
			}),
		})
	end)
end

return MapSettings