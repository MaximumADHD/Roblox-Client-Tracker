local paths = require(script.Parent.Parent.Paths)
local FFlagWorldAvatarLocalization = game:GetFastFlag("WorldAvatarLocalization")
local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders") and
	settings():GetFFlag("GameSettingsReorganizeHeaders")

local MorpherTemplateContainer = paths.Roact.Component:extend("ComponentMorpherTemplateContainer")

if FFlagAvatarSizeFixForReorganizeHeaders then
	function MorpherTemplateContainer:init()
		self.frameRef = paths.Roact.createRef()
	end
end

function MorpherTemplateContainer:render()
	local children = {}

	if FFlagAvatarSizeFixForReorganizeHeaders then
		children.UIListLayoutVertical = paths.Roact.createElement("UIListLayout", {
			[paths.Roact.Change.AbsoluteContentSize] = function(rbx)
				self.frameRef.current.Size = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.y)
			end
		})
	end

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
				IsPlacePublished = self.props.IsPlacePublished,
				LocalizedContent = FFlagWorldAvatarLocalization and self.props.LocalizedContent or nil,

				clobberTemplate = self.props.clobberTemplate,

				ContentHeightChanged = (not FFlagAvatarSizeFixForReorganizeHeaders) and function(height)
					if nil ~= self.props.ContentHeightChanged then
						self.props.ContentHeightChanged(height)
					end
				end or nil
			})
			break -- temporary, while we only want the first template
		end
	end

	return paths.Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,

			[paths.Roact.Ref] = FFlagAvatarSizeFixForReorganizeHeaders and self.frameRef or nil,
		},
		children
	)
end

return MorpherTemplateContainer