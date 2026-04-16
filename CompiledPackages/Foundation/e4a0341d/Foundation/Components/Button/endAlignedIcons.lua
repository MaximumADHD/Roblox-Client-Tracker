local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)

local endAlignedIcons: { [string]: true } = {
	[BuilderIcons.Icon.ArrowUpRightFromSquare] = true,
}

return endAlignedIcons
