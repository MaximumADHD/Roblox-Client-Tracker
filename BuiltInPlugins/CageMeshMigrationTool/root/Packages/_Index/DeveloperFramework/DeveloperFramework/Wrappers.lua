--[[
	Wrappers are higher-order components for reusable behaviour & interactions that can be shared
	between components.
]]
local FFlagDevFrameworkForwardRef = game:GetFastFlag("DevFrameworkForwardRef")
local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization2")

local strict = require(script.Parent.Util.strict)

return strict({
	withAbsoluteSizeAndPosition = if FFlagToolboxAssetCategorization then require(script.withAbsoluteSizeAndPosition) else nil,
	withAbsoluteSize = require(script.withAbsoluteSize),
	withControl = require(script.withControl),
	withForwardRef = if FFlagDevFrameworkForwardRef then require(script.withForwardRef) else nil,
})
