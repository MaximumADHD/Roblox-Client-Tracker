PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 LOADN                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["StudioGameStateType_Edit"]
        5 LOADN                            R2 1
        6 SETTABLEKS                       R2 R1 K1 ["StudioGameStateType_PlayClient"]
        8 LOADN                            R2 2
        9 SETTABLEKS                       R2 R1 K2 ["StudioGameStateType_PlayServer"]
       11 LOADN                            R2 3
       12 SETTABLEKS                       R2 R1 K3 ["StudioGameStateType_Standalone"]
       14 GETTABLE                         R2 R1 R0
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{[1] = "CopySelected", ["SelectAll"] = "SelectAll"}]
        2 NEWTABLE                         R1 0 2
        4 LOADK                            R2 K0 ["CopySelected"]
        5 SETTABLEN                        R2 R1 1
        6 LOADK                            R2 K1 ["SelectAll"]
        7 SETTABLEN                        R2 R1 2
        8 DUPTABLE                         R2 K5 [{["DeleteWatch"] = "DeleteWatch", ["DeleteAllWatches"] = "DeleteAllWatches"}]
        9 NEWTABLE                         R3 0 2
       11 LOADK                            R4 K3 ["DeleteWatch"]
       12 SETTABLEN                        R4 R3 1
       13 LOADK                            R4 K4 ["DeleteAllWatches"]
       14 SETTABLEN                        R4 R3 2
       15 DUPTABLE                         R4 K10 [{["EditLogpoint"] = "EditLogpoint", ["EnableLogpoint"] = "EnableLogpoint", ["DisableLogpoint"] = "DisableLogpoint", ["DeleteLogpoint"] = "DeleteLogpoint"}]
       16 DUPTABLE                         R5 K15 [{["EditBreakpoint"] = "EditBreakpoint", ["EnableBreakpoint"] = "EnableBreakpoint", ["DisableBreakpoint"] = "DisableBreakpoint", ["DeleteBreakpoint"] = "DeleteBreakpoint"}]
       17 DUPTABLE                         R6 K17 [{["GoToScript"] = "GoToScript"}]
       18 NEWTABLE                         R7 0 5
       20 LOADK                            R8 K6 ["EditLogpoint"]
       21 SETTABLEN                        R8 R7 1
       22 LOADK                            R8 K7 ["EnableLogpoint"]
       23 SETTABLEN                        R8 R7 2
       24 LOADK                            R8 K8 ["DisableLogpoint"]
       25 SETTABLEN                        R8 R7 3
       26 LOADK                            R8 K9 ["DeleteLogpoint"]
       27 SETTABLEN                        R8 R7 4
       28 LOADK                            R8 K16 ["GoToScript"]
       29 SETTABLEN                        R8 R7 5
       30 NEWTABLE                         R8 0 5
       32 LOADK                            R9 K11 ["EditBreakpoint"]
       33 SETTABLEN                        R9 R8 1
       34 LOADK                            R9 K12 ["EnableBreakpoint"]
       35 SETTABLEN                        R9 R8 2
       36 LOADK                            R9 K13 ["DisableBreakpoint"]
       37 SETTABLEN                        R9 R8 3
       38 LOADK                            R9 K14 ["DeleteBreakpoint"]
       39 SETTABLEN                        R9 R8 4
       40 LOADK                            R9 K16 ["GoToScript"]
       41 SETTABLEN                        R9 R8 5
       42 DUPTABLE                         R9 K23 [{["simulationResumeActionV2"] = "simulationResumeActionV2", ["simulationPauseActionV2"] = "simulationPauseActionV2", ["stepOverActionV2"] = "stepOverActionV2", ["stepIntoActionV2"] = "stepIntoActionV2", ["stepOutActionV2"] = "stepOutActionV2"}]
       43 DUPTABLE                         R10 K30 [{["Client"] = "StudioGameStateType_PlayClient", ["Server"] = "StudioGameStateType_PlayServer", ["Edit"] = "StudioGameStateType_Edit"}]
       44 DUPCLOSURE                       R11 K31 [PROTO_0]
       45 DUPTABLE                         R12 K44 [{["Unknown"] = "Enum.DebuggerPauseReason.Unknown", ["Requested"] = "Enum.DebuggerPauseReason.Requested", ["Breakpoint"] = "Enum.DebuggerPauseReason.Breakpoint", ["Exception"] = "Enum.DebuggerPauseReason.Exception", ["SingleStep"] = "Enum.DebuggerPauseReason.SingleStep", ["Entrypoint"] = "Enum.DebuggerPauseReason.Entrypoint"}]
       46 DUPTABLE                         R13 K63 [{["Success"] = "Enum.DebuggerStatus.Success", ["Timeout"] = "Enum.DebuggerStatus.Timeout", ["ConnectionLost"] = "Enum.DebuggerStatus.ConnectionLost", ["InvalidResponse"] = "Enum.DebuggerStatus.InvalidResponse", ["InternalError"] = "Enum.DebuggerStatus.InternalError", ["InvalidState"] = "Enum.DebuggerStatus.InvalidState", ["RpcError"] = "Enum.DebuggerStatus.RpcError", ["InvalidArgument"] = "Enum.DebuggerStatus.InvalidArgument", ["ConnectionClosed"] = "Enum.DebuggerStatus.ConnectionClosed"}]
       47 DUPTABLE                         R14 K84 [{["breakpointDisabled"] = "rbxasset://textures/Debugger/Breakpoints/breakpoint_disabled@2x.png", ["breakpointEnabled"] = "rbxasset://textures/Debugger/Breakpoints/breakpoint_enabled@2x.png", ["conditionalDisabled"] = "rbxasset://textures/Debugger/Breakpoints/conditional_disabled@2x.png", ["conditionalEnabled"] = "rbxasset://textures/Debugger/Breakpoints/conditional_enabled@2x.png", ["invalidBreakpoint"] = "rbxasset://textures/Debugger/Breakpoints/invalid_breakpoint@2x.png", ["invalidLogpoint"] = "rbxasset://textures/Debugger/Breakpoints/invalid_logpoint@2x.png", ["logpointDisabled"] = "rbxasset://textures/Debugger/Breakpoints/logpoint_disabled@2x.png", ["logpointEnabled"] = "rbxasset://textures/Debugger/Breakpoints/logpoint_enabled@2x.png", ["client"] = "rbxasset://textures/Debugger/Breakpoints/client@2x.png", ["server"] = "rbxasset://textures/Debugger/Breakpoints/server@2x.png"}]
       48 DUPTABLE                         R15 K86 [{["Breakpoint"] = "Breakpoint", ["Logpoint"] = "Logpoint"}]
       49 NEWTABLE                         R16 64 0
       51 SETTABLEKS                       R0 R16 K87 ["CallstackActionIds"]
       53 SETTABLEKS                       R2 R16 K88 ["WatchActionIds"]
       55 SETTABLEKS                       R4 R16 K89 ["LogpointActions"]
       57 SETTABLEKS                       R5 R16 K90 ["BreakpointActions"]
       59 SETTABLEKS                       R6 R16 K91 ["CommonActions"]
       61 SETTABLEKS                       R9 R16 K92 ["StepActionIds"]
       63 LOADN                            R17 28
       64 SETTABLEKS                       R17 R16 K93 ["HEADER_HEIGHT"]
       66 LOADN                            R17 16
       67 SETTABLEKS                       R17 R16 K94 ["ICON_SIZE"]
       69 LOADN                            R17 28
       70 SETTABLEKS                       R17 R16 K95 ["BUTTON_SIZE"]
       72 LOADN                            R17 2
       73 SETTABLEKS                       R17 R16 K96 ["BUTTON_PADDING"]
       75 LOADN                            R17 24
       76 SETTABLEKS                       R17 R16 K97 ["COLUMN_HEADER_HEIGHT"]
       78 LOADN                            R17 22
       79 SETTABLEKS                       R17 R16 K98 ["ROW_HEIGHT"]
       81 SETTABLEKS                       R14 R16 K99 ["DebugpointIconTable"]
       83 LOADK                            R17 K100 ["_"]
       84 SETTABLEKS                       R17 R16 K101 ["SeparationToken"]
       86 SETTABLEKS                       R10 R16 K102 ["GameStateTypes"]
       88 SETTABLEKS                       R15 R16 K103 ["DebugpointType"]
       90 SETTABLEKS                       R12 R16 K104 ["DebuggerPauseReason"]
       92 SETTABLEKS                       R13 R16 K105 ["DebuggerStatus"]
       94 SETTABLEKS                       R11 R16 K106 ["GetIntForGST"]
       96 SETTABLEKS                       R7 R16 K107 ["LogpointActionsOrder"]
       98 SETTABLEKS                       R8 R16 K108 ["BreakpointActionsOrder"]
      100 LOADN                            R17 2
      101 SETTABLEKS                       R17 R16 K109 ["EnableKey"]
      103 LOADN                            R17 3
      104 SETTABLEKS                       R17 R16 K110 ["DisableKey"]
      106 SETTABLEKS                       R1 R16 K111 ["CallstackActionsOrder"]
      108 SETTABLEKS                       R3 R16 K112 ["WatchActionsOrder"]
      110 LOADK                            R17 K113 ["ColumnSize"]
      111 SETTABLEKS                       R17 R16 K113 ["ColumnSize"]
      113 LOADK                            R17 K114 ["Tab"]
      114 SETTABLEKS                       R17 R16 K114 ["Tab"]
      116 LOADK                            R17 K115 ["ScopeFilter"]
      117 SETTABLEKS                       R17 R16 K115 ["ScopeFilter"]
      119 LOADK                            R17 K116 ["ColumnFilter"]
      120 SETTABLEKS                       R17 R16 K116 ["ColumnFilter"]
      122 LOADK                            R17 K117 ["ColumnSizeVariables"]
      123 SETTABLEKS                       R17 R16 K117 ["ColumnSizeVariables"]
      125 LOADK                            R17 K118 ["ColumnSizeMyWatches"]
      126 SETTABLEKS                       R17 R16 K118 ["ColumnSizeMyWatches"]
      128 LOADK                            R17 K119 ["WatchVariables"]
      129 SETTABLEKS                       R17 R16 K119 ["WatchVariables"]
      131 LOADN                            R17 -1
      132 SETTABLEKS                       R17 R16 K120 ["kInvalidDebuggerConnectionId"]
      134 LOADK                            R17 K121 [" "]
      135 SETTABLEKS                       R17 R16 K122 ["DummyRowName"]
      137 LOADK                            R17 K123 ["VariablesColumnFilter"]
      138 SETTABLEKS                       R17 R16 K123 ["VariablesColumnFilter"]
      140 LOADK                            R17 K124 ["MyWatchesColumnFilter"]
      141 SETTABLEKS                       R17 R16 K124 ["MyWatchesColumnFilter"]
      143 RETURN                           R16 1
