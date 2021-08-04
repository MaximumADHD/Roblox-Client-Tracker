local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")
local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local RoactStudioWidgets = Plugin.RoactStudioWidgets

local ContextServices = require(Plugin.Framework.ContextServices)
local withContext = ContextServices.withContext

local ConstantAvatar = require(Page.Util.ConstantAvatar)
local StateModelTemplate = require(Page.Util.StateModelTemplate)

local ButtonBar = require(RoactStudioWidgets.ButtonBar)

local PresetsPanel = Roact.Component:extend("ComponentPresetsPanel")

function PresetsPanel:init()
	self.createDefaultModel = function(boundaries)
		local newTemplateModel = StateModelTemplate.new(boundaries)

		newTemplateModel:setScaleHeightMin(1, boundaries)
		newTemplateModel:setScaleHeightMax(1, boundaries)

		newTemplateModel:setScaleWidthMin(1, boundaries)
		newTemplateModel:setScaleWidthMax(1, boundaries)

		newTemplateModel:setScaleHeadMin(1, boundaries)
		newTemplateModel:setScaleHeadMax(1, boundaries)

		newTemplateModel:setScaleBodyTypeMin(0, boundaries)
		newTemplateModel:setScaleBodyTypeMax(0, boundaries)

		newTemplateModel:setScaleProportionMin(0, boundaries)
		newTemplateModel:setScaleProportionMax(0, boundaries)

		newTemplateModel:setRigTypeR15()

		return newTemplateModel
	end

	self.createClassicModel1 = function(boundaries)
		local newTemplateModel = StateModelTemplate.new(boundaries)
		newTemplateModel:setScaleHeightMin(1, boundaries)
		newTemplateModel:setScaleHeightMax(1, boundaries)

		newTemplateModel:setScaleWidthMin(1, boundaries)
		newTemplateModel:setScaleWidthMax(1, boundaries)

		newTemplateModel:setScaleHeadMin(1, boundaries)
		newTemplateModel:setScaleHeadMax(1, boundaries)

		newTemplateModel:setScaleBodyTypeMin(0, boundaries)
		newTemplateModel:setScaleBodyTypeMax(0, boundaries)

		newTemplateModel:setScaleProportionMin(0, boundaries)
		newTemplateModel:setScaleProportionMax(0, boundaries)

		newTemplateModel:setRigTypeR15()

		return newTemplateModel
	end

	self.createClassicModel2 = function(boundaries)
		local newTemplateModel = StateModelTemplate.new(boundaries)
		newTemplateModel:setScaleHeightMin(1, boundaries)
		newTemplateModel:setScaleHeightMax(1, boundaries)

		newTemplateModel:setScaleWidthMin(1, boundaries)
		newTemplateModel:setScaleWidthMax(1, boundaries)

		newTemplateModel:setScaleHeadMin(1, boundaries)
		newTemplateModel:setScaleHeadMax(1, boundaries)

		newTemplateModel:setScaleBodyTypeMin(0, boundaries)
		newTemplateModel:setScaleBodyTypeMax(0, boundaries)

		newTemplateModel:setScaleProportionMin(0, boundaries)
		newTemplateModel:setScaleProportionMax(0, boundaries)

		newTemplateModel:setRigTypeR15()

		newTemplateModel:setAsset(ConstantAvatar.AssetTypes.Head, 2432102561, false)

		return newTemplateModel
	end

	self.createRthroModel = function(boundaries)
		local newTemplateModel = StateModelTemplate.new(boundaries)
		newTemplateModel:setScaleHeightMin(1, boundaries)
		newTemplateModel:setScaleHeightMax(1, boundaries)

		newTemplateModel:setScaleWidthMin(1, boundaries)
		newTemplateModel:setScaleWidthMax(1, boundaries)

		newTemplateModel:setScaleHeadMin(1, boundaries)
		newTemplateModel:setScaleHeadMax(1, boundaries)

		newTemplateModel:setScaleBodyTypeMin(1, boundaries)
		newTemplateModel:setScaleBodyTypeMax(1, boundaries)

		newTemplateModel:setScaleProportionMin(0, boundaries)
		newTemplateModel:setScaleProportionMax(0, boundaries)

		newTemplateModel:setRigTypeR15()

		return newTemplateModel
	end

	self.createPlayerChoiceModel = function(boundaries)
		return StateModelTemplate.new(boundaries)
	end
end

function PresetsPanel:render()
	local props = self.props
	local localization = props.Localization
	local mouse = props.Mouse:get()

	local isEnabled = props.IsEnabled

	return Roact.createElement(ButtonBar, {
		Padding = 10,
		Buttons = {
			{ Name=localization:getText("General", "PresetDefault"), Enabled=isEnabled, Value=self.createDefaultModel, ShowPressed=true, Mouse=mouse },
			{ Name=localization:getText("General", "PresetClassicScale"), Enabled=isEnabled, Value=self.createClassicModel1, ShowPressed=true, Mouse=mouse },
			{ Name=localization:getText("General", "PresetFullClassic"), Enabled=isEnabled, Value=self.createClassicModel2, ShowPressed=true, Mouse=mouse },
			{ Name=localization:getText("General", "PresetRthro"), Enabled=isEnabled, Value=self.createRthroModel, ShowPressed=true, Mouse=mouse },
			{ Name=localization:getText("General", "PresetPlayerChoice"), Enabled=isEnabled, Value=self.createPlayerChoiceModel, ShowPressed=true, Mouse=mouse }
		},
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Title = localization:getText("General", "TitlePresets"),
		ButtonClicked = function(functionToCall)
			self.props.clobberTemplate(self.props.template, functionToCall(self.props.boundaries))
		end,
		ShowPressed = true,
		LayoutOrder = self.props.LayoutOrder,
	})
end

if FFlagGameSettingsWithContext then
	PresetsPanel = withContext({
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})(PresetsPanel)
else
	ContextServices.mapToProps(PresetsPanel, {
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})
end


PresetsPanel = RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			boundaries = state.MorpherEditorRoot.StateMorpher.StateSettings.scaleBoundaries.boundaries
		}
	end
)(PresetsPanel)

return PresetsPanel