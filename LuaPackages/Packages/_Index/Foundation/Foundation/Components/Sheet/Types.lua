local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Constants = require(Foundation.Constants)
local DialogSize = require(Foundation.Enums.DialogSize)
local React = require(Packages.React)
type DialogSize = DialogSize.DialogSize

export type SheetRef = {
	close: () -> (),
}

export type SheetProps = {
	-- Whether the sheet is open, false does not mean the sheet is finished closing, use `onClose` to know when the sheet is closed
	isOpen: boolean?,
	-- Ref containing a `close` method to close the sheet
	sheetRef: React.Ref<SheetRef>?,
	-- Prefer using center sheet over side sheet
	preferCenterSheet: boolean?,
	-- The size of the sheet, only applies to center sheets
	size: DialogSize?,
	-- Callback fired when the sheet is closed
	onClose: () -> (),
	-- List of snap points for bottom sheets, values should be between 0 and 1 representing the percentage of the screen height or absolute pixel values (e.g. 300) make sure to scale pixel values with `useScaledValue`. If omitted, the bottom sheet will size to fit its contents.
	snapPoints: { number }?,
	-- The default snap point index to open the sheet to, defaults to the first snap point
	defaultSnapPointIndex: number?,
	testId: string?,
	children: React.ReactNode,
}

return {
	nonSelectable = Constants.MODAL.DISABLE_SELECTION,
	isolatedSelectionGroup = Constants.MODAL.TRAP_FOCUS,
}
