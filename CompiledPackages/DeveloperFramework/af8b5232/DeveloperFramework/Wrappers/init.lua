--[[
	Wrappers are higher-order components for reusable behaviour & interactions that can be shared
	between components.
]]

local strict = require(script.Parent.Util.strict)

return strict({
	withAbsoluteSizeAndPosition = require(script.withAbsoluteSizeAndPosition),
	withAbsoluteSize = require(script.withAbsoluteSize),
	withControl = require(script.withControl),
	withForwardRef = require(script.withForwardRef),
})
