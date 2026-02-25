local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local DialogSize = require(Foundation.Enums.DialogSize)
local React = require(Packages.React)
type DialogSize = DialogSize.DialogSize

return React.createContext({
	size = DialogSize.Small,
	responsiveSize = DialogSize.Small,
	setResponsiveSize = function(_size: DialogSize) end,
	hasHeroMedia = false,
	setHasHeroMedia = function(_hasHeroMedia: boolean) end,
	testId = "",
})
