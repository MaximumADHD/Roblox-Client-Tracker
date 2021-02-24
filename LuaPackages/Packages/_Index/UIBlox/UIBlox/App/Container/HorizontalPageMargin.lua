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
	size = UDim2.fromScale(1, 1),
}
PageMargin.validateProps = t.interface({
	backgroundColor3 = t.Color3,
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
		BackgroundColor3 = self.props.backgroundColor3,
		Size = self.props.size,
		[Roact.Change.AbsoluteSize] = self.onResize,
		[Roact.Ref] = self.ref,
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
