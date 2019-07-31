local paths = require(script.Parent.Parent.Paths)
local fastFlags = require(script.Parent.Parent.FastFlags)

local MorpherTemplateContainer = paths.Roact.Component:extend("ComponentMorpherTemplateContainer")

function MorpherTemplateContainer:render()
	local children = {}
	if self.props.StateTemplates and self.props.StateTemplates.templates then
		for stateTemplate, _ in pairs(self.props.StateTemplates.templates) do
			children[tostring(stateTemplate)] = paths.Roact.createElement(paths.ComponentMorpherTemplate, {
				ThemeData = self.props.ThemeData,
				template = stateTemplate,
				StateTemplates = self.props.StateTemplates,
				IsEnabled = self.props.IsEnabled,

				IsGameShutdownRequired = self.props.IsGameShutdownRequired,
				AssetOverrideErrors = self.props.AssetOverrideErrors,
				Mouse = self.props.Mouse,
				IsPlacePublished = (function() if fastFlags.isPlaceFilesGameSettingsSerializationOn() then return self.props.IsPlacePublished else return nil end end)(),

				clobberTemplate = self.props.clobberTemplate,

				ContentHeightChanged = function(height)
					if nil ~= self.props.ContentHeightChanged then
						self.props.ContentHeightChanged(height)
					end
				end
			})
			break -- temporary, while we only want the first template
		end
	end

	return paths.Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1
		},
		children
	)
end

return MorpherTemplateContainer