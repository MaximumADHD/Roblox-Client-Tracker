--[[
	Top frame of main editor window containing buttons to go back/forward in the screen flow.

	Required Props:
		callback GoToNext: request to go to next screen in flow.
		callback GoToPrevious: request to go to previous screen in flow.
		boolean inBounds: determines if the item is within the preset accessory bounding box
	Optional Props:
		table Localization: A Localization ContextItem, which is provided via withContext.
]]
local FFlagLayeredClothingEditorWithContext = game:GetFastFlag("LayeredClothingEditorWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local FlowScreenLayout = require(Plugin.Src.Components.Screens.FlowScreenLayout)

local EditAndPreviewFrame = Roact.PureComponent:extend("EditAndPreviewFrame")

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(EditAndPreviewFrame, script)

function EditAndPreviewFrame:render()
	local props = self.props

	local inBounds = props.InBounds

	local goToNext = props.GoToNext
	local goToPrevious = props.GoToPrevious
	local localization = props.Localization

	return Roact.createElement(FlowScreenLayout, {
		Title = localization:getText("Editor", "EditAndPreview"),
		PromptText = localization:getText("EditAndPreview", "Prompt"),
		NextButtonText = localization:getText("Flow", "Next"),
		BackButtonText = localization:getText("Flow", "Back"),
		NextButtonEnabled = inBounds,
		BackButtonEnabled = true,
		HasBackButton = true,
		GoToNext = goToNext,
		GoToPrevious = goToPrevious,
	})
end

if FFlagLayeredClothingEditorWithContext then
	EditAndPreviewFrame = withContext({
		Localization = ContextServices.Localization,
	})(EditAndPreviewFrame)
else
	ContextServices.mapToProps(EditAndPreviewFrame,{
		Localization = ContextServices.Localization,
	})
end


local function mapStateToProps(state, props)
	local selectItem = state.selectItem

	return {
		InBounds = selectItem.inBounds
	}
end

return RoactRodux.connect(mapStateToProps)(EditAndPreviewFrame)