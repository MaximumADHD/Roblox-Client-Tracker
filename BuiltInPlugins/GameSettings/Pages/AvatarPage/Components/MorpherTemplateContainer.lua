local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local MorpherTemplate = require(Page.Components.MorpherTemplate)

local MorpherTemplateContainer = Roact.Component:extend("ComponentMorpherTemplateContainer")

function MorpherTemplateContainer:init()
	self.frameRef = Roact.createRef()
end

function MorpherTemplateContainer:render()
	local children = {}

	children.UIListLayoutVertical = Roact.createElement("UIListLayout", {
		[Roact.Change.AbsoluteContentSize] = function(rbx)
			self.frameRef.current.Size = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.y)
		end
	})

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
			})
			break -- temporary, while we only want the first template
		end
	end

	return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,

			[Roact.Ref] = self.frameRef,
		},
		children
	)
end

return MorpherTemplateContainer