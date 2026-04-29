local SheetTypes = require(script.Types)
export type SheetRef = SheetTypes.SheetRef

local SheetActions = require(script.Actions)
local SheetContent = require(script.Content)
local SheetFullBleed = require(script.FullBleed)
local SheetHeader = require(script.Header)
local SheetRoot = require(script.Sheet)

export type SheetProps = SheetRoot.SheetProps
export type SheetActionsProps = SheetActions.SheetActionsProps
export type SheetContentProps = SheetContent.SheetContentProps
export type SheetFullBleedProps = SheetFullBleed.SheetFullBleedProps
export type SheetHeaderProps = SheetHeader.SheetHeaderProps

return {
	Root = SheetRoot,
	Actions = SheetActions,
	Content = SheetContent,
	FullBleed = SheetFullBleed,
	Header = SheetHeader,
}
