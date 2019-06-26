local UIBloxRoot = script.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)

local ImageSetConsumer = Roact.Component:extend("ImageSetConsumer")

local imageSetPropsValid = t.strictInterface({
	imageSetData = t.table,
	imageSetScale = t.optional(t.number),
})
function ImageSetConsumer:init()
	assert(t.table(self._context.imageSetProps), "imageSetProps has not been set, make sure that ImageSetProvider has been called.")
	assert(imageSetPropsValid(self._context.imageSetProps))
end

function ImageSetConsumer:render()
	return self.props.render(self._context.imageSetProps)
end

return ImageSetConsumer