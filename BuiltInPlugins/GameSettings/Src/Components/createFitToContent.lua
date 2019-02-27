local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

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

		local children = Cryo.Dictionary.join({
			["Layout"] = Roact.createElement(layoutComponent, self.layoutProps),
		}, self.props[Roact.Children])

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
		local layoutSize = self.layoutRef.current.AbsoluteContentSize
		self.containerRef.current.Size = UDim2.new(1, 0, 0, layoutSize.Y)
	end

	return FitComponent
end

return createFitToContent