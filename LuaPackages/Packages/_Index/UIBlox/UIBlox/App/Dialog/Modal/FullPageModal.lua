local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local FitFrame = require(Packages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical

local ButtonStack = require(AppRoot.Button.ButtonStack)

local ModalTitle = require(ModalRoot.ModalTitle)
local ModalWindow = require(ModalRoot.ModalWindow)

local FullPageModal = Roact.PureComponent:extend("FullPageModal")

local MARGIN = 24

FullPageModal.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	[Roact.Children] = t.table,

	position = t.optional(t.UDim2),
	title = t.optional(t.string),
	marginSize = t.optional(t.number),

	buttonStackProps = t.optional(t.table), -- Button stack validates the contents

	onCloseClicked = t.optional(t.callback),
	distanceFromTop = t.optional(t.number),
})

FullPageModal.defaultProps = {
	marginSize = MARGIN,
	distanceFromTop = 0,
}

function FullPageModal:init()
	self.state = {
		buttonFrameSize = Vector2.new(0, 0),
	}

	self.changeButtonFrameSize = function(rbx)
		if self.state.buttonFrameSize ~= rbx.AbsoluteSize then
			self:setState({
				buttonFrameSize = rbx.AbsoluteSize,
			})
		end
	end
end

function FullPageModal:render()
	return Roact.createElement(ModalWindow, {
		isFullHeight = true,
		screenSize = self.props.screenSize,
		position = self.props.position,
		distanceFromTop = self.props.distanceFromTop,
	}, {
		TitleContainer = Roact.createElement(ModalTitle, {
			title = self.props.title,
			onCloseClicked = self.props.onCloseClicked,
		}),
		Content = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, -ModalTitle:GetHeight()),
			Position = UDim2.new(0, 0, 0, ModalTitle:GetHeight()),
			BackgroundTransparency = 1,
		}, {
			Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
			Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 0),
				PaddingRight = UDim.new(0, 0),
				PaddingBottom = UDim.new(0, MARGIN),
			}),
			MiddleContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, -2 * self.props.marginSize, 1, -self.state.buttonFrameSize.Y),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, self.props[Roact.Children]),
			Buttons = self.props.buttonStackProps and Roact.createElement(FitFrameVertical, {
				BackgroundTransparency = 1,
				width = UDim.new(1, 0),
				LayoutOrder = 2,
				[Roact.Change.AbsoluteSize] = self.changeButtonFrameSize,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, MARGIN),
					PaddingRight = UDim.new(0, MARGIN),
				}),
				Roact.createElement(ButtonStack, self.props.buttonStackProps),
			}),
		}),
	})
end

return FullPageModal
