export type ActionId = string
local CallstackActionIds : {[string]: ActionId} = {
	CopySelected = "CopySelected",
	SelectAll = "SelectAll",
}

local WatchActionIds : {[string]: ActionId} = {
	AddExpression = "AddExpression",
	EditExpression = "EditExpression",
}

local LogpointActions : {[string]: ActionId} = {
	EditLogpoint = "EditLogpoint",
	EnableLogpoint = "EnableLogpoint",
	DisableLogpoint = "DisableLogpoint",
	DeleteLogpoint = "DeleteLogpoint",
}

local BreakpointActions : {[string]: ActionId} = {
	EditBreakpoint = "EditBreakpoint",
	EnableBreakpoint = "EnableBreakpoint",
	DisableBreakpoint = "DisableBreakpoint",
	DeleteBreakpoint = "DeleteBreakpoint",
}

local HEADER_HEIGHT = 40

local BreakpointIconDirectoryFilePath = "rbxasset://textures/Debugger/Breakpoints/"

local SeparationToken = "_"

return {
	CallstackActionIds = CallstackActionIds,
	WatchActionIds = WatchActionIds,
	LogpointActions = LogpointActions,
	BreakpointActions = BreakpointActions,
	HEADER_HEIGHT = HEADER_HEIGHT,
	BreakpointIconDirectoryFilePath = BreakpointIconDirectoryFilePath,
	SeparationToken = SeparationToken,
}
