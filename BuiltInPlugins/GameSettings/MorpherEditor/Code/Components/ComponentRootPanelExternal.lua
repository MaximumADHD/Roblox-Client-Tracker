local paths = require(script.Parent.Parent.Paths)
paths.requireAll(script.Parent.Parent.Parent.Parent, script.Parent.Parent.Parent.Parent)

local fastFlags = require(script.Parent.Parent.FastFlags)

local RootPanelExternal = paths.Roact.Component:extend("ComponentRootPanelExternal")

local sendUpdates = nil

function RootPanelExternal:render()
	local templates = {templates={paths.StateModelTemplate.fromUniverseData(self.props)}}
	local themeInfo = self.props.ThemeData

	return paths.Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BackgroundTransparency = 1
	}, {
		paths.Roact.createElement(paths.ComponentMorpherTemplateContainer, {
			ThemeData = {theme=themeInfo},
			StateTemplates = templates,
			IsEnabled = self.props.IsEnabled,

			IsGameShutdownRequired = self.props.IsGameShutdownRequired,
			AssetOverrideErrors = self.props.AssetOverrideErrors,
			Mouse = self.props.Mouse,

			IsPlacePublished = (function() if fastFlags.isPlaceFilesGameSettingsSerializationOn() then return self.props.IsPlacePublished else return nil end end)(),

			clobberTemplate = function(templateId, newTemplateModel)
				sendUpdates(self, newTemplateModel)
			end,

			ContentHeightChanged = self.props.ContentHeightChanged
		}),
		paths.Roact.createElement(paths.ComponentAvatarUpdater, {
			StateTemplates = templates
		})
	})
end

sendUpdates = function(self, morpherTemplate)
	if morpherTemplate and self.props.IsEnabled then
		local originalMorpherTemplate = paths.StateModelTemplate.fromUniverseData(self.props)

		if not morpherTemplate:isAvatarTypeEqualTo(originalMorpherTemplate) then
			self.props.OnAvatarTypeChanged(morpherTemplate.RigTypeValue)
		end

		if not morpherTemplate:isAnimationEqualTo(originalMorpherTemplate) then
			self.props.OnAvatarAnimationChanged(morpherTemplate.AnimationValue)
		end

		if not morpherTemplate:isCollisionEqualTo(originalMorpherTemplate) then
			self.props.OnAvatarCollisionChanged(morpherTemplate.CollisionValue)
		end

		if not morpherTemplate:areAssetsEqualTo(originalMorpherTemplate) then
			self.props.OnAvatarAssetOverridesChanged(morpherTemplate:extractAssetOverridesForSaving())
		end

		if not morpherTemplate:areMinScalesEqualTo(originalMorpherTemplate) then
			self.props.OnAvatarScalingMinChanged(morpherTemplate:extractScalingMinForSaving())
		end

		if not morpherTemplate:areMaxScalesEqualTo(originalMorpherTemplate) then
			self.props.OnAvatarScalingMaxChanged(morpherTemplate:extractScalingMaxForSaving())
		end
	end
end

return RootPanelExternal