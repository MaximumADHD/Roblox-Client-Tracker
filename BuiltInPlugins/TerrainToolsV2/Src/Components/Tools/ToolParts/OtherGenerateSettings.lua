local FFlagRemoveUILibraryCompatLocalization = game:GetFastFlag("RemoveUILibraryCompatLocalization")
local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = if FFlagRemoveUILibraryCompatLocalization then nil else require(Plugin.Src.ContextItems)

local ToolParts = script.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledTextInput = require(ToolParts.LabeledTextInput)
local Panel = require(ToolParts.Panel)

local OtherGenerateSettings = Roact.PureComponent:extend(script.Name)

function OtherGenerateSettings:init()
	self.onSeedFocusLost = function(enterPressed, text)
		if utf8.len(text) == 0 then
			self.props.setSeed(self.props.seed)

			return self.props.seed
		else
			self.props.setSeed(text)
			return
		end
	end
end

function OtherGenerateSettings:render()
	local localization = if FFlagRemoveUILibraryCompatLocalization then self.props.Localization else self.props.Localization:get()

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
				MaxGraphemes = 12,
				IgnoreNumFormatting = true,
				Text = self.props.seed,
				OnFocusLost = self.onSeedFocusLost,
			}),
		}),
	})
end

OtherGenerateSettings = withContext({
	Localization = if FFlagRemoveUILibraryCompatLocalization then ContextServices.Localization else ContextItems.UILibraryLocalization,
})(OtherGenerateSettings)

return OtherGenerateSettings
