local paths = require(script.Parent.Parent.Paths)
local FFlagWorldAvatarLocalization = game:GetFastFlag("WorldAvatarLocalization")

local PresetsPanel = paths.Roact.Component:extend("ComponentPresetsPanel")

local createDefaultModel = nil
local createClassicModel1 = nil
local createClassicModel2 = nil
local createRthroModel = nil
local createPlayerChoiceModel = nil

function PresetsPanel:render()
	local localizedContent = FFlagWorldAvatarLocalization and self.props.LocalizedContent or nil
	return paths.Roact.createElement(paths.StudioWidgetButtonBar, {
		Padding = 10,
		Buttons = {
			{ Name=FFlagWorldAvatarLocalization and localizedContent.Presets.Default or "Default", Enabled=self.props.IsEnabled, Value=self.createDefaultModel, ShowPressed=true, Mouse=self.props.Mouse },
			{ Name=FFlagWorldAvatarLocalization and localizedContent.Presets.ClassicScale or "Classic Scale", Enabled=self.props.IsEnabled, Value=self.createClassicModel1, ShowPressed=true, Mouse=self.props.Mouse },
			{ Name=FFlagWorldAvatarLocalization and localizedContent.Presets.FullClassic or "Full Classic", Enabled=self.props.IsEnabled, Value=self.createClassicModel2, ShowPressed=true, Mouse=self.props.Mouse },
			{ Name=FFlagWorldAvatarLocalization and localizedContent.Presets.Rthro or "Rthro", Enabled=self.props.IsEnabled, Value=self.createRthroModel, ShowPressed=true, Mouse=self.props.Mouse },
			{ Name=FFlagWorldAvatarLocalization and localizedContent.Presets.PlayerChoice or "Player Choice", Enabled=self.props.IsEnabled, Value=self.createPlayerChoiceModel, ShowPressed=true, Mouse=self.props.Mouse }
		},
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Title = FFlagWorldAvatarLocalization and localizedContent.Title.Presets or "Presets",
		ButtonClicked = function(functionToCall)
			self.props.clobberTemplate(self.props.template, functionToCall(self.props.boundaries))
		end,
		ShowPressed = true
	})
end

function PresetsPanel:init()
	self.createDefaultModel = function(boundaries)
		local newTemplateModel = paths.StateModelTemplate.new(boundaries)

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
		local newTemplateModel = paths.StateModelTemplate.new(boundaries)
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
		local newTemplateModel = paths.StateModelTemplate.new(boundaries)
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

		newTemplateModel:setAsset(paths.ConstantAvatar.AssetTypes.Head, 2432102561, false)

		return newTemplateModel
	end

	self.createRthroModel = function(boundaries)
		local newTemplateModel = paths.StateModelTemplate.new(boundaries)
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
		return paths.StateModelTemplate.new(boundaries)
	end
end

PresetsPanel = paths.RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			boundaries = state.StateMorpher.StateSettings.scaleBoundaries.boundaries
		}
	end
)(PresetsPanel)

return PresetsPanel