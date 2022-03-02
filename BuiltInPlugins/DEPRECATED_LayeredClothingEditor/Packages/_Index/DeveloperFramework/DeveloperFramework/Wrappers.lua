--[[
	Wrappers are higher-order components for reusable behaviour & interactions that can be shared
	between components.
]]
local FFlagDevFrameworkForwardRef = game:GetFastFlag("DevFrameworkForwardRef")

local strict = require(script.Parent.Util.strict)

return strict({
	withAbsoluteSize = require(script.withAbsoluteSize),
	withControl = require(script.withControl),
	withForwardRef = if FFlagDevFrameworkForwardRef then require(script.withForwardRef) else nil,
})
