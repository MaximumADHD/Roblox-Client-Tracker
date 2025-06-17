local Foundation = script:FindFirstAncestor("Foundation")
local Flags = require(Foundation.Utility.Flags)

if Flags.FoundationUpdateBadgeDesign then
	return require(script.Badge)
end

return require(script.Badge_DEPRECATED)
