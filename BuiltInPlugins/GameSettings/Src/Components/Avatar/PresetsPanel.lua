local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local RoactStudioWidgets = Plugin.RoactStudioWidgets
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local ConstantAvatar = require(Plugin.Src.Util.ConstantAvatar)
local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)

local ButtonBar = require(RoactStudioWidgets.ButtonBar)

local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")

local PresetsPanel = Roact.Component:extend("ComponentPresetsPanel")

function PresetsPanel:render()
	return withLocalization(function(localized)
		return Roact.createElement(ButtonBar, {
			Padding = 10,
			Buttons = {
				{ Name=localized.Morpher.Presets.Default, Enabled=self.props.IsEnabled, Value=self.createDefaultModel, ShowPressed=true, Mouse=self.props.Mouse },
				{ Name=localized.Morpher.Presets.ClassicScale, Enabled=self.props.IsEnabled, Value=self.createClassicModel1, ShowPressed=true, Mouse=self.props.Mouse },
				{ Name=localized.Morpher.Presets.FullClassic, Enabled=self.props.IsEnabled, Value=self.createClassicModel2, ShowPressed=true, Mouse=self.props.Mouse },
				{ Name=localized.Morpher.Presets.Rthro, Enabled=self.props.IsEnabled, Value=self.createRthroModel, ShowPressed=true, Mouse=self.props.Mouse },
				{ Name=localized.Morpher.Presets.PlayerChoice, Enabled=self.props.IsEnabled, Value=self.createPlayerChoiceModel, ShowPressed=true, Mouse=self.props.Mouse }
			},
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Title = localized.Morpher.Title.Presets,
			ButtonClicked = function(functionToCall)
				self.props.clobberTemplate(self.props.template, functionToCall(self.props.boundaries))
			end,
			ShowPressed = true,
			LayoutOrder = FFlagAvatarSizeFixForReorganizeHeaders and self.props.LayoutOrder or nil,
		})
	end)
end

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

PresetsPanel = RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			boundaries = state.MorpherEditorRoot.StateMorpher.StateSettings.scaleBoundaries.boundaries
		}
	end
)(PresetsPanel)

return PresetsPanel