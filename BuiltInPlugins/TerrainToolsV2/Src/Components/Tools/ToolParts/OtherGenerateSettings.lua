local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

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
	return withLocalization(function(localization)
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
	end)
end

return OtherGenerateSettings
