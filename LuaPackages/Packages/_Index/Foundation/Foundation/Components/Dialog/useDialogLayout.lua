local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local DialogLayoutContext = require(script.Parent.DialogLayoutContext)

type DialogLayout = {
	size: DialogSize,
	responsiveSize: DialogSize,
	setResponsiveSize: (size: DialogSize) -> (),
	hasHeroMedia: boolean,
	setHasHeroMedia: (has: boolean) -> (),
}

return function(): DialogLayout
	return React.useContext(DialogLayoutContext)
end
