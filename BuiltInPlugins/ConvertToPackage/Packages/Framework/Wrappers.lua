--[[
	Wrappers are higher-order components for reusable behaviour & interactions that can be shared
	between components.
]]
local FFlagDevFrameworkForwardRef = game:GetFastFlag("DevFrameworkForwardRef")
local FFlagToolboxAssetCategorization3 = game:GetFastFlag("ToolboxAssetCategorization3")

local strict = require(script.Parent.Util.strict)

return strict({
	withAbsoluteSizeAndPosition = if FFlagToolboxAssetCategorization3
		then require(script.withAbsoluteSizeAndPosition)
		else nil,
	withAbsoluteSize = require(script.withAbsoluteSize),
	withControl = require(script.withControl),
	withForwardRef = if FFlagDevFrameworkForwardRef then require(script.withForwardRef) else nil,
})
