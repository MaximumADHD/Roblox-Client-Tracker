local UIBloxRoot = script.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)

local ImageSetProvider = Roact.Component:extend("ImageSetProvider")

local imageSetPropsValid = t.interface({
	imageSetData = t.table,
	imageSetScale = t.optional(t.number),
})
function ImageSetProvider:init()
	assert(imageSetPropsValid(self.props))
	
	self._context.imageSetProps = {
		imageSetData = self.props.imageSetData,
		imageSetScale = self.props.imageSetScale,
	}
end

function ImageSetProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return ImageSetProvider
