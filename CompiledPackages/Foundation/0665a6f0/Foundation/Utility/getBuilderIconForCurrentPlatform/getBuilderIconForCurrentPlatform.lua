local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)

local getBuilderIconForCurrentPlatform = BuilderIcons.getBuilderIconForCurrentPlatform

return getBuilderIconForCurrentPlatform
