local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

local ToolParts = script.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledTextInput = require(ToolParts.LabeledTextInput)
local Panel = require(ToolParts.Panel)

local OtherGenerateSettings = Roact.PureComponent:extend(script.Name)

function OtherGenerateSettings:init()
	self.onSeedFocusLost = function(enterPressed, text)
		self.props.setSeed(text)
	end
end

function OtherGenerateSettings:_render(localization)
	return Roact.createElement(Panel, {
		Title = localization:getText("Generate", "OtherSettings"),
		LayoutOrder = self.props.LayoutOrder,
	}, {
		Seed = Roact.createElement(LabeledElementPair, {
			Size = UDim2.new(1, 0, 0, 60),
			Text = localization:getText("Generate", "Seed"),
			SizeToContent = true,
		}, {
			SeedTextBox = Roact.createElement(LabeledTextInput, {
				Width = UDim.new(0, 136),
				MaxGraphemes = 12,
				IgnoreNumFormatting = true,
				Text = self.props.seed,
				OnFocusLost = self.onSeedFocusLost,
			}),
		}),
	})
end

function OtherGenerateSettings:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Localization:get())
	else
		return withLocalization(function(localization)
			return self:_render(localization)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(OtherGenerateSettings, {
		Localization = ContextItems.UILibraryLocalization,
	})
end

return OtherGenerateSettings
