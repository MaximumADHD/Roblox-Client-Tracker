local FFlagTerrainToolsFixLabeledElementPairWidth = game:GetFastFlag("TerrainToolsFixLabeledElementPairWidth")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

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

function OtherGenerateSettings:render()
	local localization = self.props.Localization:get()

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
				Width = not FFlagTerrainToolsFixLabeledElementPairWidth and UDim.new(0, 136) or nil,
				MaxGraphemes = 12,
				IgnoreNumFormatting = true,
				Text = self.props.seed,
				OnFocusLost = self.onSeedFocusLost,
			}),
		}),
	})
end

ContextServices.mapToProps(OtherGenerateSettings, {
	Localization = ContextItems.UILibraryLocalization,
})

return OtherGenerateSettings
