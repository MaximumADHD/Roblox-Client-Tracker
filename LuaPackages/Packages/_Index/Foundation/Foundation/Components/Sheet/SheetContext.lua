local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local SheetType = require(script.Parent.SheetType)
type SheetType = SheetType.SheetType

return React.createContext({
	sheetHeightAvailable = nil :: React.Binding<number>?,
	setSheetHeightAvailable = function(_: number)
		error("No SheetContext available")
	end,
	actionsHeight = nil :: React.Binding<number>?,
	setActionsHeight = function(_: number)
		error("No SheetContext available")
	end,
	hasActionsDivider = nil :: React.Binding<boolean>?,
	setHasActionsDivider = function(_: boolean)
		error("No SheetContext available")
	end,
	safeAreaPadding = nil :: number?,
	bottomPadding = nil :: number?,
	innerScrollingEnabled = nil :: React.Binding<boolean>?,
	innerScrollY = nil :: React.Binding<number>?,
	setInnerScrollY = function(_: number)
		error("No SheetContext available")
	end,
	hasHeader = nil :: React.Binding<boolean>?,
	setHasHeader = function(_: boolean)
		error("No SheetContext available")
	end,
	closeSheet = nil :: (() -> ())?,
	sheetType = nil :: SheetType?,
	innerSurface = nil :: GuiObject?,
	testId = nil :: string?,
} :: {
	sheetHeightAvailable: React.Binding<number>?,
	setSheetHeightAvailable: ((number) -> nil)?,
	actionsHeight: React.Binding<number>?,
	setActionsHeight: ((number) -> nil)?,
	hasActionsDivider: React.Binding<boolean>?,
	setHasActionsDivider: ((boolean) -> nil)?,
	safeAreaPadding: number?,
	bottomPadding: number?,
	innerScrollingEnabled: React.Binding<boolean>?,
	innerScrollY: React.Binding<number>?,
	setInnerScrollY: ((number) -> nil)?,
	hasHeader: React.Binding<boolean>?,
	setHasHeader: ((boolean) -> nil)?,
	closeSheet: (() -> ())?,
	sheetType: SheetType?,
	innerSurface: GuiObject?,
	testId: string?,
})
