local Grid = script.Parent
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local bind = require(UIBlox.Utility.bind)

local GridContext = require(Grid.GridContext)
local GridConfigReader = require(Grid.GridConfigReader)

local GridContainer = Roact.PureComponent:extend("GridContainer")

GridContainer.validateProps = t.strictInterface({
	config = t.optional(t.table),
	layoutOrder = t.optional(t.integer),
	padding = t.optional(t.UDim),
	[Roact.Children] = t.optional(t.table),
})

GridContainer.defaultProps = {
	config = {
		columns = 1,
		margin = 0,
		gutter = 0,
	},
}

function GridContainer:init()
	self:setState({
		breakpoint = GridConfigReader.findBreakpoint(self.props.config, -1),
	})
	self.frameRef = Roact.createRef()

	self.updateBreakpoint = bind(self.updateBreakpoint, self)
end

function GridContainer:updateBreakpoint(rbx)
	local width = rbx.AbsoluteSize.X
	local current = self.state.breakpoint
	if width < current.min or width > current.max then
		local newBreakpoint = GridConfigReader.findBreakpoint(self.props.config, width)
		if newBreakpoint ~= self.state.breakpoint then
			self:setState({
				breakpoint = newBreakpoint,
			})
		end
	end
end

function GridContainer:render()
	return Roact.createElement(GridContext.Provider, {
		value = {
			config = self.props.config,
			breakpoint = self.state.breakpoint.name,
		},
	}, {
		GridContainer = Roact.createElement(
			"Frame",
			{
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = self.props.layoutOrder,
				[Roact.Ref] = self.frameRef,
				[Roact.Change.AbsoluteSize] = self.updateBreakpoint,
			},
			Object.assign({
				_uiblox_grid_layout_ = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = self.props.padding,
				}),
			}, self.props[Roact.Children])
		),
	})
end

function GridContainer:didMount()
	self:updateBreakpoint(self.frameRef:getValue())
end

function GridContainer:didUpdate(previousProps)
	-- a change in config can mean a new breakpoint, event if the container was not resized
	if previousProps.config ~= self.props.config then
		self:updateBreakpoint(self.frameRef:getValue())
	end
end

return GridContainer
