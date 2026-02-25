local ReactUtils = script:FindFirstAncestor("ReactUtils")

local SafeFlags = require(ReactUtils.Parent.SafeFlags)

return SafeFlags.createGetFFlag("UseToggleStateImprovements")
