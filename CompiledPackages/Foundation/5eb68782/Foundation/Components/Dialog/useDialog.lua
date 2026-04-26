local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local DialogContext = require(script.Parent.DialogContext)

type DialogConfiguration = {
	size: DialogSize,
	responsiveSize: DialogSize,
	setResponsiveSize: (size: DialogSize) -> (),
	hasHeroMedia: boolean,
	setHasHeroMedia: (has: boolean) -> (),
	testId: string,
	closeAffordanceRef: React.Ref<GuiObject>?,
	contentStartRef: React.Ref<GuiObject>?,
	setContentStartRef: (ref: React.Ref<GuiObject>) -> (),
}

local function useDialog(): DialogConfiguration
	return React.useContext(DialogContext)
end

return useDialog
