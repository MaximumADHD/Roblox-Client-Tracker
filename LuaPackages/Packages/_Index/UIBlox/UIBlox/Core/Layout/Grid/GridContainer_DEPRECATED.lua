local Grid = script.Parent
local Responsive = Grid.Parent.Responsive
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local bind = require(UIBlox.Utility.bind)

local ResponsiveLayoutContext = require(Responsive.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader = require(Responsive.ResponsiveLayoutConfigReader)

local GridContainer_DEPRECATED = Roact.PureComponent:extend("GridContainer_DEPRECATED")

GridContainer_DEPRECATED.validateProps = t.strictInterface({
	-- Grid configuration, see below for details
	config = t.optional(t.table),
	-- Order of the row in its container
	layoutOrder = t.optional(t.integer),
	-- Vertical padding between rows, relative to container height
	padding = t.optional(t.UDim),
	[Roact.Children] = t.optional(t.table),
})

GridContainer_DEPRECATED.defaultProps = {
	config = {
		columns = 1,
		margin = 0,
		gutter = 0,
	},
}

function GridContainer_DEPRECATED:init()
	self:setState({
		breakpoint = ResponsiveLayoutConfigReader.findBreakpoint(self.props.config, -1),
	})
	self.frameRef = Roact.createRef()

	self.updateBreakpoint = bind(self.updateBreakpoint, self)
end

function GridContainer_DEPRECATED:updateBreakpoint(rbx)
	local width = rbx.AbsoluteSize.X
	local current = self.state.breakpoint
	if width < current.min or width > current.max then
		local newBreakpoint = ResponsiveLayoutConfigReader.findBreakpoint(self.props.config, width)
		if newBreakpoint ~= self.state.breakpoint then
			self:setState({
				breakpoint = newBreakpoint,
			})
		end
	end
end

function GridContainer_DEPRECATED:render()
	return Roact.createElement(ResponsiveLayoutContext.Provider, {
		value = {
			config = self.props.config,
			breakpoint = self.state.breakpoint.name,
		},
	}, {
		GridContainer_DEPRECATED = Roact.createElement(
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

function GridContainer_DEPRECATED:didMount()
	self:updateBreakpoint(self.frameRef:getValue())
end

function GridContainer_DEPRECATED:didUpdate(previousProps)
	-- a change in config can mean a new breakpoint, event if the container was not resized
	if previousProps.config ~= self.props.config then
		self:updateBreakpoint(self.frameRef:getValue())
	end
end

return GridContainer_DEPRECATED
