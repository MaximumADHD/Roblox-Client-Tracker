local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local getResponsiveSize = require(script.Parent.getResponsiveSize)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useTokens = require(Foundation.Providers.Style.useTokens)

local DialogContext = require(script.Parent.DialogContext)

export type DialogProviderProps = {
	size: DialogSize,
	responsiveSize: DialogSize?,
	hasHeroMedia: boolean?,
	children: React.ReactNode,
	testId: string?,
}

local function DialogProvider(props: DialogProviderProps)
	local overlay = useOverlay()
	local tokens = useTokens()

	local responsiveSize, setResponsiveSize = React.useState(function()
		if overlay then
			return getResponsiveSize(overlay.AbsoluteSize.X, props.size, tokens)
		end

		return props.responsiveSize or props.size
	end)

	local hasHeroMedia, setHasHeroMedia = React.useState(props.hasHeroMedia)

	local closeAffordanceRef = React.useRef(nil) :: React.Ref<GuiObject>
	local contentStartRef, setContentStartRef = React.useState(nil :: React.Ref<GuiObject>?)

	return React.createElement(DialogContext.Provider, {
		value = {
			size = props.size,
			responsiveSize = responsiveSize,
			setResponsiveSize = setResponsiveSize,
			hasHeroMedia = hasHeroMedia,
			setHasHeroMedia = setHasHeroMedia,
			testId = props.testId,
			closeAffordanceRef = closeAffordanceRef,
			contentStartRef = contentStartRef,
			setContentStartRef = setContentStartRef,
		},
	}, props.children)
end

return DialogProvider
