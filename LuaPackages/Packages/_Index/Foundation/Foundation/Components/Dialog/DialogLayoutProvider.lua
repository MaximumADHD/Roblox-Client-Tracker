local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local DialogLayoutContext = require(script.Parent.DialogLayoutContext)

export type DialogLayoutProps = {
	size: DialogSize,
	responsiveSize: DialogSize?,
	setResponsiveSize: ((size: DialogSize) -> ())?,
	setSize: ((size: DialogSize) -> ())?,
	hasHeroMedia: boolean?,
	children: React.ReactNode,
}

local function DialogLayoutProvider(props: DialogLayoutProps)
	local responsiveSize, setResponsiveSize = React.useState(props.responsiveSize)
	local hasHeroMedia, setHasHeroMedia = React.useState(props.hasHeroMedia)

	return React.createElement(DialogLayoutContext.Provider, {
		value = {
			size = props.size,
			responsiveSize = responsiveSize,
			setResponsiveSize = setResponsiveSize,
			hasHeroMedia = hasHeroMedia,
			setHasHeroMedia = setHasHeroMedia,
		},
	}, props.children)
end

return DialogLayoutProvider
