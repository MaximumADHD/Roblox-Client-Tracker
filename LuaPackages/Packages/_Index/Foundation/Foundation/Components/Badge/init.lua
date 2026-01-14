local Foundation = script:FindFirstAncestor("Foundation")
local Flags = require(Foundation.Utility.Flags)

local Badge = require(script.Badge)
local Badge_DEPRECATED = require(script.Badge_DEPRECATED)

export type BadgeProps = Badge.BadgeProps

if Flags.FoundationUpdateBadgeDesign then
	return Badge
end

return Badge_DEPRECATED
