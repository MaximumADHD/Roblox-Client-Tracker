local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ButtonStack = require(AppRoot.Button.ButtonStack)

local FitFrame = require(Packages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical

local ModalTitle = require(ModalRoot.ModalTitle)
local ModalWindow = require(ModalRoot.ModalWindow)

local PartialPageModal = Roact.PureComponent:extend("PartialPageModal")

local MARGIN = 24

local validateProps = t.strictInterface({
	screenSize = t.Vector2,
	[Roact.Children] = t.table,

	position = t.optional(t.UDim2),
	title = t.optional(t.string),

	buttonStackProps = t.optional(t.table), -- Button stack validates the contents

	onCloseClicked = t.optional(t.callback),
})

function PartialPageModal:render()
	assert(validateProps(self.props))

	return Roact.createElement(ModalWindow, {
		isFullHeight = false,
		screenSize = self.props.screenSize,
		position = self.props.position,
	}, {
		TitleContainer = Roact.createElement(ModalTitle, {
			title = self.props.title,
			onCloseClicked = self.props.onCloseClicked,
		}),
		Content = Roact.createElement(FitFrameVertical, {
			Position = UDim2.new(0, 0, 0, ModalTitle.TITLE_HEIGHT),
			width = UDim.new(1, 0),
			margin = {
				top = 0,
				bottom = MARGIN,
				left = MARGIN,
				right = MARGIN,
			},
			BackgroundTransparency = 1,
		}, {
			MiddlContent = Roact.createElement(FitFrameVertical, {
				width = UDim.new(1, 0),
				BackgroundTransparency = 1,
			}, self.props[Roact.Children]),
			Buttons = self.props.buttonStackProps and Roact.createElement(ButtonStack, self.props.buttonStackProps),
		})
	})
end

return PartialPageModal