local paths = require(script.Parent.Parent.Paths)

local RootPanel = paths.Roact.Component:extend("ComponentRootPanel")

function RootPanel:init()
	self.canvasRef = paths.Roact.createRef()
	self.contentHeightChanged = function(newheight)
		local canvas = self.canvasRef.current
		if canvas then
			canvas.CanvasSize = UDim2.new(1, 0, 0, newheight)
		end
	end
end

function RootPanel:didMount()
    self.props.addTemplates()
end

function RootPanel:render()
	return paths.Roact.createElement(paths.StudioWidgetStyledScrollingFrame, {
		[paths.Roact.Ref] = self.canvasRef,
	}, {
		paths.Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1
		}, {
			MorpherTemplateContainer = paths.Roact.createElement(paths.ComponentMorpherTemplateContainer, {
				ThemeData = self.props.StateTheme,
				StateTemplates = self.props.StateTemplates,
				IsEnabled = true,
				Mouse = self.props.Mouse,

				clobberTemplate = self.props.clobberTemplate,
				ContentHeightChanged = self.contentHeightChanged
			}),
			RigUpdater = paths.Roact.createElement(paths.ComponentAvatarUpdater, {
				StateTemplates = self.props.StateTemplates
			})
		})
	})
end

RootPanel = paths.RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			StateTemplates = state.StateMorpher.StateTemplates,
			StateTheme = state.StateMorpher.StateTheme
		}
	end,

	function(dispatch)
		return {
			addTemplates = function()
				return dispatch(paths.ActionTemplatesAdd())
			end,

			clobberTemplate = function(templateId, newTemplateModel)
				dispatch(paths.ActionTemplatesClobberTemplate(templateId, newTemplateModel))
			end
		}
	end
)(RootPanel)


return RootPanel