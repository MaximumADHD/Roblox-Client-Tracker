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

local StepActionIds : {[string]: ActionId} = {
	simulationResumeActionV2 = "simulationResumeActionV2",
	simulationPauseActionV2 = "simulationPauseActionV2",
	stepOverActionV2 = "stepOverActionV2",
	stepIntoActionV2 = "stepIntoActionV2",
	stepOutActionV2 = "stepOutActionV2",
}

local GameStateTypes : {[string] : string} = {
	Client = "StudioGameStateType_PlayClient",
	Server = "StudioGameStateType_PlayServer",
	Edit = "StudioGameStateType_Edit",
}

local HEADER_HEIGHT = 40

local BreakpointIconDirectoryFilePath = "rbxasset://textures/Debugger/Breakpoints/"

local SeparationToken = "_"

export type DebugpointType = string
local DebugpointType : {[string]: DebugpointType} = {
	Breakpoint = "Breakpoint",
	Logpoint = "Logpoint",
}

return {
	CallstackActionIds = CallstackActionIds,
	WatchActionIds = WatchActionIds,
	LogpointActions = LogpointActions,
	BreakpointActions = BreakpointActions,
	StepActionIds = StepActionIds,
	HEADER_HEIGHT = HEADER_HEIGHT,
	BreakpointIconDirectoryFilePath = BreakpointIconDirectoryFilePath,
	SeparationToken = SeparationToken,
	GameStateTypes = GameStateTypes,
	DebugpointType = DebugpointType,
}
