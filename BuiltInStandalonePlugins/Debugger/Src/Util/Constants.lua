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

local CommonActions : {[string]: ActionId} = {
	GoToScript = "GoToScript",
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

local GetIntForGST = function(gstString)
	local gstMap = {
		["StudioGameStateType_Edit"] = 0,
		["StudioGameStateType_PlayClient"] = 1,
		["StudioGameStateType_PlayServer"] = 2,
		["StudioGameStateType_Standalone"] = 3,
	}
	
	return gstMap[gstString]
end

local DebuggerPauseReason : {[string] : string} = {
	Unknown = "Enum.DebuggerPauseReason.Unknown",
	Requested = "Enum.DebuggerPauseReason.Requested",
	Breakpoint = "Enum.DebuggerPauseReason.Breakpoint",
	Exception = "Enum.DebuggerPauseReason.Exception",
	SingleStep = "Enum.DebuggerPauseReason.SingleStep",
	Entrypoint = "Enum.DebuggerPauseReason.Entrypoint",
};

local DebuggerStatus : {[string] : string} = {
	Success = "Enum.DebuggerStatus.Success",
	Timeout = "Enum.DebuggerStatus.Timeout",
	ConnectionLost = "Enum.DebuggerStatus.ConnectionLost",
	InvalidResponse = "Enum.DebuggerStatus.InvalidResponse",
	InternalError = "Enum.DebuggerStatus.InternalError",
	InvalidState = "Enum.DebuggerStatus.InvalidState",
	RpcError = "Enum.DebuggerStatus.RpcError",
	InvalidArgument = "Enum.DebuggerStatus.InvalidArgument",
	ConnectionClosed = "Enum.DebuggerStatus.ConnectionClosed",
};

local HEADER_HEIGHT = 40
local ICON_SIZE = 16
local BUTTON_SIZE = 40

local BreakpointIconDirectoryFilePath = "rbxasset://textures/Debugger/Breakpoints/"

local DebugpointIconTable = {
	breakpointDisabled = BreakpointIconDirectoryFilePath .. "breakpoint_disabled@2x.png",
	breakpointEnabled = BreakpointIconDirectoryFilePath .. "breakpoint_enabled@2x.png",
	conditionalDisabled = BreakpointIconDirectoryFilePath .. "conditional_disabled@2x.png",
	conditionalEnabled = BreakpointIconDirectoryFilePath .. "conditional_enabled@2x.png",
	invalidBreakpoint = BreakpointIconDirectoryFilePath .. "invalid_breakpoint@2x.png",
	invalidLogpoint = BreakpointIconDirectoryFilePath .. "invalid_logpoint@2x.png",
	logpointDisabled = BreakpointIconDirectoryFilePath .. "logpoint_disabled@2x.png",
	logpointEnabled = BreakpointIconDirectoryFilePath .. "logpoint_enabled@2x.png",
	client = BreakpointIconDirectoryFilePath .. "client@2x.png",
	server = BreakpointIconDirectoryFilePath .. "server@2x.png",
}

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
	CommonActions = CommonActions,
	StepActionIds = StepActionIds,
	HEADER_HEIGHT = HEADER_HEIGHT,
	ICON_SIZE = ICON_SIZE,
	BUTTON_SIZE = BUTTON_SIZE,
	DebugpointIconTable = DebugpointIconTable,
	SeparationToken = SeparationToken,
	GameStateTypes = GameStateTypes,
	DebugpointType = DebugpointType,
	DebuggerPauseReason = DebuggerPauseReason,
	DebuggerStatus = DebuggerStatus,
	GetIntForGST = GetIntForGST
}
