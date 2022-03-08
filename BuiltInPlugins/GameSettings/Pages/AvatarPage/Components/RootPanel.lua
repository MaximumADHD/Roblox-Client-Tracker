local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local RoactStudioWidgets = Plugin.Packages.RoactStudioWidgets

local TemplatesAdd = require(Page.Actions.TemplatesAdd)
local TemplatesClobberTemplate = require(Page.Actions.TemplatesClobberTemplate)

local AvatarUpdater = require(Page.Components.AvatarUpdater)
local MorpherTemplateContainer = require(Page.Components.MorpherTemplateContainer)
local StyledScrollingFrame = require(RoactStudioWidgets.StyledScrollingFrame)

local RootPanel = Roact.Component:extend("ComponentRootPanel")

function RootPanel:init()
	self.canvasRef = Roact.createRef()
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
	return Roact.createElement(StyledScrollingFrame, {
		[Roact.Ref] = self.canvasRef,
	}, {
		Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1
		}, {
			MorpherTemplateContainer = Roact.createElement(MorpherTemplateContainer, {
				ThemeData = self.props.StateTheme,
				StateTemplates = self.props.StateTemplates,
				IsEnabled = true,
				Mouse = self.props.Mouse,

				clobberTemplate = self.props.clobberTemplate,
				ContentHeightChanged = self.contentHeightChanged
			}),
			RigUpdater = Roact.createElement(AvatarUpdater, {
				StateTemplates = self.props.StateTemplates
			})
		})
	})
end

RootPanel = RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			StateTemplates = state.MorpherEditorRoot.StateMorpher.StateTemplates,
			StateTheme = state.MorpherEditorRoot.StateMorpher.StateTheme
		}
	end,

	function(dispatch)
		return {
			addTemplates = function()
				return dispatch(TemplatesAdd())
			end,

			clobberTemplate = function(templateId, newTemplateModel)
				dispatch(TemplatesClobberTemplate(templateId, newTemplateModel))
			end
		}
	end
)(RootPanel)


return RootPanel