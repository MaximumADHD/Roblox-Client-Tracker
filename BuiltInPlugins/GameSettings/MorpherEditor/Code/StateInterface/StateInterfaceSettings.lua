-- singleton

local paths = require(script.Parent.Parent.Paths)

local Settings = {}

local getBoundaries = nil

function Settings.getHeightBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).height or paths.ConstantScaleBoundaries.Height
end

function Settings.getWidthBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).width or paths.ConstantScaleBoundaries.Width
end

function Settings.getHeadBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).head or paths.ConstantScaleBoundaries.Head
end

function Settings.getBodyTypeBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).bodyType or paths.ConstantScaleBoundaries.BodyType
end

function Settings.getProportionBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).proportion or paths.ConstantScaleBoundaries.Proportion
end

getBoundaries = function(props)
	return props.StateSettings and props.StateSettings.scaleBoundaries.boundaries
end

return Settings