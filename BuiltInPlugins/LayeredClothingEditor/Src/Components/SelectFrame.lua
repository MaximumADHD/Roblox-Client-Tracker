--[[
	Main frame containing Select components

	Required Props:
		boolean ButtonEnabled: if the next button is interactable or not.
		string PartName: name of the valid selected part.
		callback OnConfirmSelection: callback for when the next button is clicked and selection is confirmed.
	Optional Props:
		table Localization: A Localization ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]
local FFlagLayeredClothingEditorWithContext = game:GetFastFlag("LayeredClothingEditorWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local GetFFlagDebugLCEditAvatarCage = require(Plugin.Src.Flags.GetFFlagDebugLCEditAvatarCage)

local FlowScreenLayout = require(Plugin.Src.Components.Screens.FlowScreenLayout)

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local TextInput = UI.TextInput
local Pane = UI.Pane

local SelectFrame = Roact.PureComponent:extend("SelectFrame")

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(SelectFrame, script)

function SelectFrame:init()
	self.renderContent = function(order)
		local props = self.props

		local partName = props.PartName
		local theme = props.Stylizer
		local localization = props.Localization

		local text = localization:getText("Select", "Part")
		if GetFFlagDebugLCEditAvatarCage() then
			text = localization:getText("Select", "Selection")
		end

		return Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, theme.TextBoxHeight),
			LayoutOrder = order,
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Spacing = theme.MainPadding,
		}, {
			TextBoxLabel = Roact.createElement(TextLabel, {
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				Size = UDim2.new(0, theme.LabelWidth, 1, 0),
				Text = text,
				LayoutOrder = order + 1,
			}),

			SelectedPartBox = Roact.createElement(TextInput, {
				Enabled = false,
				ShouldFocus = false,
				Text = partName,
				Size = UDim2.new(0.5, 0, 1, 0),
				LayoutOrder = order + 2,
				Style = "FilledRoundedBorder",
			}),
		})
	end
end

function SelectFrame:render()
	local props = self.props

	local buttonEnabled = props.ButtonEnabled
	local onConfirmSelection = props.OnConfirmSelection
	local localization = props.Localization

	local promptText = localization:getText("Select", "Prompt")
	if GetFFlagDebugLCEditAvatarCage() then
		promptText = localization:getText("Select", "PromptGeneric")
	end

	return Roact.createElement(FlowScreenLayout, {
		Title = localization:getText("Editor", "Select"),
		PromptText = promptText,
		NextButtonText = localization:getText("Flow", "Next"),
		BackButtonText = "",
		NextButtonEnabled = buttonEnabled,
		HasBackButton = false,
		GoToNext = onConfirmSelection,
		RenderContent = self.renderContent,
	})
end

if FFlagLayeredClothingEditorWithContext then
	SelectFrame = withContext({
		Stylizer = ContextServices.Stylizer,
		Localization = ContextServices.Localization,
	})(SelectFrame)
else
	ContextServices.mapToProps(SelectFrame,{
		Stylizer = ContextServices.Stylizer,
		Localization = ContextServices.Localization,
	})
end


return SelectFrame