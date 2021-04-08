local Container = script.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local getPageMargin = require(script.Parent.getPageMargin)

local PageMargin = Roact.Component:extend("PageMargin")
PageMargin.defaultProps = {
	anchorPoint = Vector2.new(0, 0),
	position = UDim2.new(),
	size = UDim2.fromScale(1, 1),
	backgroundTransparency = 0,
	layoutOrder = 0,
}
PageMargin.validateProps = t.interface({
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	backgroundColor3 = t.Color3,
	backgroundTransparency = t.optional(t.number),
	layoutOrder = t.optional(t.number),
	size = t.optional(t.UDim2),
})

function PageMargin:init()
	self.ref = Roact.createRef()
	self.onResize = function(rbx)
		self:setState({
			margin = getPageMargin(rbx.AbsoluteSize.X),
		})
	end
end

function PageMargin:render()
	return Roact.createElement("Frame", {
		AnchorPoint = self.props.anchorPoint,
		BackgroundColor3 = self.props.backgroundColor3,
		BackgroundTransparency = self.props.backgroundTransparency,
		BorderSizePixel = 0,
		Position = self.props.position,
		Size = self.props.size,
		[Roact.Change.AbsoluteSize] = self.onResize,
		[Roact.Ref] = self.ref,
		LayoutOrder = self.props.layoutOrder,
	}, Cryo.Dictionary.join(self.props[Roact.Children], {
		padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, self.state.margin),
			PaddingRight = UDim.new(0, self.state.margin),
		}),
	}))
end

function PageMargin:didMount()
	if self.ref.current then
		self.onResize(self.ref.current)
	end
end

return PageMargin
