--[[
	An entry in an InfoPanel that renders a component's example,
	or nothing if the component does not have an example.

	Required Props:
		string Name: The name of the component to render an example for.

	Optional Props:
		number LayoutOrder: The sort order of this component.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local Render = require(Plugin.Packages.Framework).Examples.Render

local UI = require(Plugin.Packages.Framework).UI
local Container = UI.Container
local Decoration = UI.Decoration

local PanelEntry = require(Plugin.Src.Components.PanelEntry)

local RenderExample = Roact.PureComponent:extend("RenderExample")

function RenderExample:init()
	self.state = {
		extents = Vector2.new(),
		ExampleComponent = nil,
	}

	self.updateExtents = function(extents)
		self:setState({
			extents = extents,
		})
	end
end

function RenderExample:loadExampleComponent()
	-- Fallback to None: if there is no Name prop provided, or if there is no result returned from Render
	self:setState({
		ExampleComponent = self.props.Name and Render(self.props.Name) or Roact.None
	})
end

function RenderExample:didMount()
	self:loadExampleComponent()
end

function RenderExample:didUpdate(prevProps)
	if prevProps.Name ~= self.props.Name then
		self:loadExampleComponent()
	end
end

function RenderExample:render()
	local props = self.props
	local state = self.state

	local extents = state.extents
	local ExampleComponent = state.ExampleComponent

	local layoutOrder = props.LayoutOrder
	local sizes = props.Theme:get("Sizes")

	if not ExampleComponent then
		return nil
	end

	return Roact.createElement(PanelEntry, {
		Header = "Example",
		LayoutOrder = layoutOrder,
	}, {
		Container = Roact.createElement(Container, {
			Size = UDim2.new(1, 0, 0, extents.Y + (sizes.OuterPadding * 2)),
			Background = Decoration.RoundBox,
			BackgroundStyle = "__Example",
			Padding = sizes.OuterPadding,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				[Roact.Change.AbsoluteContentSize] = function(rbx)
					self.updateExtents(rbx.AbsoluteContentSize)
				end,
			}),

			Example = Roact.createElement(ExampleComponent),
		})
	})
end

ContextServices.mapToProps(RenderExample, {
	Theme = ContextServices.Theme,
})

return RenderExample
