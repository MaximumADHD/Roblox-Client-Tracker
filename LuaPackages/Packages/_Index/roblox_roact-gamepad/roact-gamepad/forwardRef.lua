-- TODO: Consider contributing this to Roact itself
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)

--[[
	Passed a provided ref to given render callback. Can be used to treat class
	components as host components and assign the passed-in ref to the underlying
	host component
]]
local function forwardRef(render)
	local ForwardRefComponent = Roact.Component:extend("ForwardRefContainer")

	function ForwardRefComponent:init()
		self.defaultRef = Roact.createRef()
	end

	function ForwardRefComponent:render()
		return render(self.props, self.props[Roact.Ref] or self.defaultRef)
	end

	return ForwardRefComponent
end

return forwardRef