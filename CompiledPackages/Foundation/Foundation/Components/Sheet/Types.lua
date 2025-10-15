local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

export type SheetRef = {
	close: () -> (),
}

export type SheetProps = {
	isOpen: boolean?,
	sheetRef: React.Ref<SheetRef>?,
	preferCenterSheet: boolean?,
	size: DialogSize?,
	onClose: () -> (),
	snapPoints: { number }?,
	testId: string?,
	children: React.ReactNode,
}

return nil
