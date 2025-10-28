local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local DialogSize = require(Foundation.Enums.DialogSize)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local Constants = require(Foundation.Constants)
local Types = require(Foundation.Components.Types)

type DialogSize = DialogSize.DialogSize
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason

export type DialogProps = {
	onClose: ((reason: OnCloseCallbackReason?) -> ())?,
	size: DialogSize?,
	disablePortal: boolean?,
	hasBackdrop: boolean?,
	children: React.ReactNode,
	testId: string?,
} & Types.NativeCallbackProps

return {
	nonSelectable = Constants.MODAL.DISABLE_SELECTION,
	isolatedSelectionGroup = Constants.MODAL.TRAP_FOCUS,
}
