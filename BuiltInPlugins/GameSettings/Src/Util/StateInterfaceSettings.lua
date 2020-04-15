-- singleton

local Plugin = script.Parent.Parent.Parent

local ConstantScaleBoundaries = require(Plugin.Src.Util.ConstantScaleBoundaries)

local Settings = {}

local getBoundaries = nil

function Settings.getHeightBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).height or ConstantScaleBoundaries.Height
end

function Settings.getWidthBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).width or ConstantScaleBoundaries.Width
end

function Settings.getHeadBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).head or ConstantScaleBoundaries.Head
end

function Settings.getBodyTypeBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).bodyType or ConstantScaleBoundaries.BodyType
end

function Settings.getProportionBoundaries(props)
	return getBoundaries(props) and getBoundaries(props).proportion or ConstantScaleBoundaries.Proportion
end

getBoundaries = function(props)
	return props.StateSettings and props.StateSettings.scaleBoundaries.boundaries
end

return Settings