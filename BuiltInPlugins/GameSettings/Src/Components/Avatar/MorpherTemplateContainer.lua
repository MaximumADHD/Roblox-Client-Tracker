local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local MorpherTemplate = require(Plugin.Src.Components.Avatar.MorpherTemplate)

local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")

local MorpherTemplateContainer = Roact.Component:extend("ComponentMorpherTemplateContainer")

if FFlagAvatarSizeFixForReorganizeHeaders then
	function MorpherTemplateContainer:init()
		self.frameRef = Roact.createRef()
	end
end

function MorpherTemplateContainer:render()
	local children = {}

	if FFlagAvatarSizeFixForReorganizeHeaders then
		children.UIListLayoutVertical = Roact.createElement("UIListLayout", {
			[Roact.Change.AbsoluteContentSize] = function(rbx)
				self.frameRef.current.Size = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.y)
			end
		})
	end

	if self.props.StateTemplates and self.props.StateTemplates.templates then
		for stateTemplate, _ in pairs(self.props.StateTemplates.templates) do
			children[tostring(stateTemplate)] = Roact.createElement(MorpherTemplate, {
				ThemeData = self.props.ThemeData,
				template = stateTemplate,
				StateTemplates = self.props.StateTemplates,
				IsEnabled = self.props.IsEnabled,

				IsGameShutdownRequired = self.props.IsGameShutdownRequired,
				AssetOverrideErrors = self.props.AssetOverrideErrors,
				Mouse = self.props.Mouse,
				IsPlacePublished = self.props.IsPlacePublished,

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

	return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,

			[Roact.Ref] = FFlagAvatarSizeFixForReorganizeHeaders and self.frameRef or nil,
		},
		children
	)
end

return MorpherTemplateContainer