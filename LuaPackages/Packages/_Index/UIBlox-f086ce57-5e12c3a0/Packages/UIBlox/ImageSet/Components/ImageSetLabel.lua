local UIBloxRoot = script.Parent.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)

local ImageSetFunctions = require(UIBloxRoot.ImageSet.ImageSetFunctions)
local withImageSet = require(UIBloxRoot.ImageSet.withImageSet)

local ImageSetLabel = Roact.PureComponent:extend("ImageSetLabel")

function ImageSetLabel:render()
	local renderWithImageSet = function(imageSetProps)
		local newProps = ImageSetFunctions.transformProps(self.props, imageSetProps.imageSetData, imageSetProps.imageSetScale)
		return Roact.createElement("ImageLabel", newProps)
	end

	return withImageSet(renderWithImageSet)
end

return ImageSetLabel