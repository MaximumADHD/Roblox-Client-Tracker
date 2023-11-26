PROTO_0:
  NEWTABLE R1 4 0
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["StudioGameStateType_Edit"]
  LOADN R2 1
  SETTABLEKS R2 R1 K1 ["StudioGameStateType_PlayClient"]
  LOADN R2 2
  SETTABLEKS R2 R1 K2 ["StudioGameStateType_PlayServer"]
  LOADN R2 3
  SETTABLEKS R2 R1 K3 ["StudioGameStateType_Standalone"]
  GETTABLE R2 R1 R0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"CopySelected", "SelectAll"}]
  LOADK R1 K0 ["CopySelected"]
  SETTABLEKS R1 R0 K0 ["CopySelected"]
  LOADK R1 K1 ["SelectAll"]
  SETTABLEKS R1 R0 K1 ["SelectAll"]
  NEWTABLE R1 0 2
  LOADK R2 K0 ["CopySelected"]
  SETTABLEN R2 R1 1
  LOADK R2 K1 ["SelectAll"]
  SETTABLEN R2 R1 2
  DUPTABLE R2 K5 [{"DeleteWatch", "DeleteAllWatches"}]
  LOADK R3 K3 ["DeleteWatch"]
  SETTABLEKS R3 R2 K3 ["DeleteWatch"]
  LOADK R3 K4 ["DeleteAllWatches"]
  SETTABLEKS R3 R2 K4 ["DeleteAllWatches"]
  NEWTABLE R3 0 2
  LOADK R4 K3 ["DeleteWatch"]
  SETTABLEN R4 R3 1
  LOADK R4 K4 ["DeleteAllWatches"]
  SETTABLEN R4 R3 2
  DUPTABLE R4 K10 [{"EditLogpoint", "EnableLogpoint", "DisableLogpoint", "DeleteLogpoint"}]
  LOADK R5 K6 ["EditLogpoint"]
  SETTABLEKS R5 R4 K6 ["EditLogpoint"]
  LOADK R5 K7 ["EnableLogpoint"]
  SETTABLEKS R5 R4 K7 ["EnableLogpoint"]
  LOADK R5 K8 ["DisableLogpoint"]
  SETTABLEKS R5 R4 K8 ["DisableLogpoint"]
  LOADK R5 K9 ["DeleteLogpoint"]
  SETTABLEKS R5 R4 K9 ["DeleteLogpoint"]
  DUPTABLE R5 K15 [{"EditBreakpoint", "EnableBreakpoint", "DisableBreakpoint", "DeleteBreakpoint"}]
  LOADK R6 K11 ["EditBreakpoint"]
  SETTABLEKS R6 R5 K11 ["EditBreakpoint"]
  LOADK R6 K12 ["EnableBreakpoint"]
  SETTABLEKS R6 R5 K12 ["EnableBreakpoint"]
  LOADK R6 K13 ["DisableBreakpoint"]
  SETTABLEKS R6 R5 K13 ["DisableBreakpoint"]
  LOADK R6 K14 ["DeleteBreakpoint"]
  SETTABLEKS R6 R5 K14 ["DeleteBreakpoint"]
  DUPTABLE R6 K17 [{"GoToScript"}]
  LOADK R7 K16 ["GoToScript"]
  SETTABLEKS R7 R6 K16 ["GoToScript"]
  NEWTABLE R7 0 5
  LOADK R8 K6 ["EditLogpoint"]
  SETTABLEN R8 R7 1
  LOADK R8 K7 ["EnableLogpoint"]
  SETTABLEN R8 R7 2
  LOADK R8 K8 ["DisableLogpoint"]
  SETTABLEN R8 R7 3
  LOADK R8 K9 ["DeleteLogpoint"]
  SETTABLEN R8 R7 4
  LOADK R8 K16 ["GoToScript"]
  SETTABLEN R8 R7 5
  NEWTABLE R8 0 5
  LOADK R9 K11 ["EditBreakpoint"]
  SETTABLEN R9 R8 1
  LOADK R9 K12 ["EnableBreakpoint"]
  SETTABLEN R9 R8 2
  LOADK R9 K13 ["DisableBreakpoint"]
  SETTABLEN R9 R8 3
  LOADK R9 K14 ["DeleteBreakpoint"]
  SETTABLEN R9 R8 4
  LOADK R9 K16 ["GoToScript"]
  SETTABLEN R9 R8 5
  DUPTABLE R9 K23 [{"simulationResumeActionV2", "simulationPauseActionV2", "stepOverActionV2", "stepIntoActionV2", "stepOutActionV2"}]
  LOADK R10 K18 ["simulationResumeActionV2"]
  SETTABLEKS R10 R9 K18 ["simulationResumeActionV2"]
  LOADK R10 K19 ["simulationPauseActionV2"]
  SETTABLEKS R10 R9 K19 ["simulationPauseActionV2"]
  LOADK R10 K20 ["stepOverActionV2"]
  SETTABLEKS R10 R9 K20 ["stepOverActionV2"]
  LOADK R10 K21 ["stepIntoActionV2"]
  SETTABLEKS R10 R9 K21 ["stepIntoActionV2"]
  LOADK R10 K22 ["stepOutActionV2"]
  SETTABLEKS R10 R9 K22 ["stepOutActionV2"]
  DUPTABLE R10 K27 [{"Client", "Server", "Edit"}]
  LOADK R11 K28 ["StudioGameStateType_PlayClient"]
  SETTABLEKS R11 R10 K24 ["Client"]
  LOADK R11 K29 ["StudioGameStateType_PlayServer"]
  SETTABLEKS R11 R10 K25 ["Server"]
  LOADK R11 K30 ["StudioGameStateType_Edit"]
  SETTABLEKS R11 R10 K26 ["Edit"]
  DUPCLOSURE R11 K31 [PROTO_0]
  DUPTABLE R12 K38 [{"Unknown", "Requested", "Breakpoint", "Exception", "SingleStep", "Entrypoint"}]
  LOADK R13 K39 ["Enum.DebuggerPauseReason.Unknown"]
  SETTABLEKS R13 R12 K32 ["Unknown"]
  LOADK R13 K40 ["Enum.DebuggerPauseReason.Requested"]
  SETTABLEKS R13 R12 K33 ["Requested"]
  LOADK R13 K41 ["Enum.DebuggerPauseReason.Breakpoint"]
  SETTABLEKS R13 R12 K34 ["Breakpoint"]
  LOADK R13 K42 ["Enum.DebuggerPauseReason.Exception"]
  SETTABLEKS R13 R12 K35 ["Exception"]
  LOADK R13 K43 ["Enum.DebuggerPauseReason.SingleStep"]
  SETTABLEKS R13 R12 K36 ["SingleStep"]
  LOADK R13 K44 ["Enum.DebuggerPauseReason.Entrypoint"]
  SETTABLEKS R13 R12 K37 ["Entrypoint"]
  DUPTABLE R13 K54 [{"Success", "Timeout", "ConnectionLost", "InvalidResponse", "InternalError", "InvalidState", "RpcError", "InvalidArgument", "ConnectionClosed"}]
  LOADK R14 K55 ["Enum.DebuggerStatus.Success"]
  SETTABLEKS R14 R13 K45 ["Success"]
  LOADK R14 K56 ["Enum.DebuggerStatus.Timeout"]
  SETTABLEKS R14 R13 K46 ["Timeout"]
  LOADK R14 K57 ["Enum.DebuggerStatus.ConnectionLost"]
  SETTABLEKS R14 R13 K47 ["ConnectionLost"]
  LOADK R14 K58 ["Enum.DebuggerStatus.InvalidResponse"]
  SETTABLEKS R14 R13 K48 ["InvalidResponse"]
  LOADK R14 K59 ["Enum.DebuggerStatus.InternalError"]
  SETTABLEKS R14 R13 K49 ["InternalError"]
  LOADK R14 K60 ["Enum.DebuggerStatus.InvalidState"]
  SETTABLEKS R14 R13 K50 ["InvalidState"]
  LOADK R14 K61 ["Enum.DebuggerStatus.RpcError"]
  SETTABLEKS R14 R13 K51 ["RpcError"]
  LOADK R14 K62 ["Enum.DebuggerStatus.InvalidArgument"]
  SETTABLEKS R14 R13 K52 ["InvalidArgument"]
  LOADK R14 K63 ["Enum.DebuggerStatus.ConnectionClosed"]
  SETTABLEKS R14 R13 K53 ["ConnectionClosed"]
  DUPTABLE R14 K74 [{"breakpointDisabled", "breakpointEnabled", "conditionalDisabled", "conditionalEnabled", "invalidBreakpoint", "invalidLogpoint", "logpointDisabled", "logpointEnabled", "client", "server"}]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K76 ["breakpoint_disabled@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K64 ["breakpointDisabled"]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K77 ["breakpoint_enabled@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K65 ["breakpointEnabled"]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K78 ["conditional_disabled@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K66 ["conditionalDisabled"]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K79 ["conditional_enabled@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K67 ["conditionalEnabled"]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K80 ["invalid_breakpoint@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K68 ["invalidBreakpoint"]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K81 ["invalid_logpoint@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K69 ["invalidLogpoint"]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K82 ["logpoint_disabled@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K70 ["logpointDisabled"]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K83 ["logpoint_enabled@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K71 ["logpointEnabled"]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K84 ["client@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K72 ["client"]
  LOADK R16 K75 ["rbxasset://textures/Debugger/Breakpoints/"]
  LOADK R17 K85 ["server@2x.png"]
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K73 ["server"]
  DUPTABLE R15 K87 [{"Breakpoint", "Logpoint"}]
  LOADK R16 K34 ["Breakpoint"]
  SETTABLEKS R16 R15 K34 ["Breakpoint"]
  LOADK R16 K86 ["Logpoint"]
  SETTABLEKS R16 R15 K86 ["Logpoint"]
  NEWTABLE R16 64 0
  SETTABLEKS R0 R16 K88 ["CallstackActionIds"]
  SETTABLEKS R2 R16 K89 ["WatchActionIds"]
  SETTABLEKS R4 R16 K90 ["LogpointActions"]
  SETTABLEKS R5 R16 K91 ["BreakpointActions"]
  SETTABLEKS R6 R16 K92 ["CommonActions"]
  SETTABLEKS R9 R16 K93 ["StepActionIds"]
  LOADN R17 28
  SETTABLEKS R17 R16 K94 ["HEADER_HEIGHT"]
  LOADN R17 16
  SETTABLEKS R17 R16 K95 ["ICON_SIZE"]
  LOADN R17 28
  SETTABLEKS R17 R16 K96 ["BUTTON_SIZE"]
  LOADN R17 2
  SETTABLEKS R17 R16 K97 ["BUTTON_PADDING"]
  LOADN R17 24
  SETTABLEKS R17 R16 K98 ["COLUMN_HEADER_HEIGHT"]
  LOADN R17 22
  SETTABLEKS R17 R16 K99 ["ROW_HEIGHT"]
  SETTABLEKS R14 R16 K100 ["DebugpointIconTable"]
  LOADK R17 K101 ["_"]
  SETTABLEKS R17 R16 K102 ["SeparationToken"]
  SETTABLEKS R10 R16 K103 ["GameStateTypes"]
  SETTABLEKS R15 R16 K104 ["DebugpointType"]
  SETTABLEKS R12 R16 K105 ["DebuggerPauseReason"]
  SETTABLEKS R13 R16 K106 ["DebuggerStatus"]
  SETTABLEKS R11 R16 K107 ["GetIntForGST"]
  SETTABLEKS R7 R16 K108 ["LogpointActionsOrder"]
  SETTABLEKS R8 R16 K109 ["BreakpointActionsOrder"]
  LOADN R17 2
  SETTABLEKS R17 R16 K110 ["EnableKey"]
  LOADN R17 3
  SETTABLEKS R17 R16 K111 ["DisableKey"]
  SETTABLEKS R1 R16 K112 ["CallstackActionsOrder"]
  SETTABLEKS R3 R16 K113 ["WatchActionsOrder"]
  LOADK R17 K114 ["ColumnSize"]
  SETTABLEKS R17 R16 K114 ["ColumnSize"]
  LOADK R17 K115 ["Tab"]
  SETTABLEKS R17 R16 K115 ["Tab"]
  LOADK R17 K116 ["ScopeFilter"]
  SETTABLEKS R17 R16 K116 ["ScopeFilter"]
  LOADK R17 K117 ["ColumnFilter"]
  SETTABLEKS R17 R16 K117 ["ColumnFilter"]
  LOADK R17 K118 ["ColumnSizeVariables"]
  SETTABLEKS R17 R16 K118 ["ColumnSizeVariables"]
  LOADK R17 K119 ["ColumnSizeMyWatches"]
  SETTABLEKS R17 R16 K119 ["ColumnSizeMyWatches"]
  LOADK R17 K120 ["WatchVariables"]
  SETTABLEKS R17 R16 K120 ["WatchVariables"]
  LOADN R17 255
  SETTABLEKS R17 R16 K121 ["kInvalidDebuggerConnectionId"]
  LOADK R17 K122 [" "]
  SETTABLEKS R17 R16 K123 ["DummyRowName"]
  LOADK R17 K124 ["VariablesColumnFilter"]
  SETTABLEKS R17 R16 K124 ["VariablesColumnFilter"]
  LOADK R17 K125 ["MyWatchesColumnFilter"]
  SETTABLEKS R17 R16 K125 ["MyWatchesColumnFilter"]
  RETURN R16 1
