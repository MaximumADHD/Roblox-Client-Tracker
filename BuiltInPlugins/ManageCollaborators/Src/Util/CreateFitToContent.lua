--[[

This component generates a list of elements and resizes the container so that it fits the size of the list.

Call the function createFitToContent and pass in the container, the layout of the elements, and any properties
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local function createFitToContent(containerComponent, layoutComponent, layoutProps)
	local name = ("FitComponent(%s, %s)"):format(containerComponent, layoutComponent)
	local FitComponent = Roact.Component:extend(name)

	function FitComponent:init()
		self.layoutRef = Roact.createRef()
		self.containerRef = Roact.createRef()

		self.layoutProps = Cryo.Dictionary.join(layoutProps, {
			[Roact.Ref] = self.layoutRef,
			[Roact.Change.AbsoluteContentSize] = function()
				if self.layoutRef.current ~= nil and self.containerRef.current ~= nil then
					self:resizeContainer()
				end
			end,
		})
	end

	function FitComponent:render()
		assert(self.props.Size == nil, "Size must not be specified!")

		local children

		-- Check if user passed a table as children. If so, then join the table
		if #self.props[Roact.Children] == 1 and typeof(self.props[Roact.Children][1] == "table") then
			children = Cryo.Dictionary.join({
				["Layout"] = Roact.createElement(layoutComponent, self.layoutProps),
			}, self.props[Roact.Children][1])
		else
			children = Cryo.Dictionary.join({
				["Layout"] = Roact.createElement(layoutComponent, self.layoutProps),
			}, self.props[Roact.Children])
		end



		local props = Cryo.Dictionary.join(self.props, {
			[Roact.Children] = children,
			[Roact.Ref] = self.containerRef,
		})

		return Roact.createElement(containerComponent, props)
	end

	function FitComponent:didMount()
		self:resizeContainer()
	end

	function FitComponent:didUpdate()
		self:resizeContainer()
	end

	function FitComponent:resizeContainer()
		local layout = self.layoutRef.current
		if layout then
			local layoutSize = layout.AbsoluteContentSize
			self.containerRef.current.Size = UDim2.new(1, 0, 0, layoutSize.Y)
		end
	end

	return FitComponent
end

return createFitToContent