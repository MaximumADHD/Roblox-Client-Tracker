PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onSetPausedState"]
  LOADB R1 0
  CALL R0 1 0
  GETIMPORT R0 K2 [game]
  LOADK R2 K3 ["DebuggerUIService"]
  NAMECALL R0 R0 K4 ["GetService"]
  CALL R0 2 1
  NAMECALL R1 R0 K5 ["Resume"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebuggerUIService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R1 R0 K4 ["Pause"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onStepAction"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["StepActionIds"]
  GETTABLEKS R1 R2 K3 ["stepOverActionV2"]
  LOADK R2 K4 ["ToolbarButton"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["CurrentDebuggerConnectionId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["CurrentThreadId"]
  CALL R0 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onStepAction"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["StepActionIds"]
  GETTABLEKS R1 R2 K3 ["stepIntoActionV2"]
  LOADK R2 K4 ["ToolbarButton"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["CurrentDebuggerConnectionId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["CurrentThreadId"]
  CALL R0 4 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onStepAction"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["StepActionIds"]
  GETTABLEKS R1 R2 K3 ["stepOutActionV2"]
  LOADK R2 K4 ["ToolbarButton"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["CurrentDebuggerConnectionId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["CurrentThreadId"]
  CALL R0 4 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K0 ["onResume"]
  DUPCLOSURE R2 K1 [PROTO_1]
  SETTABLEKS R2 R0 K2 ["onPause"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K3 ["onStepOver"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K4 ["onStepInto"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K5 ["onStepOut"]
  RETURN R0 0

PROTO_6:
  JUMPIFNOT R1 [+23]
  LOADB R3 1
  SETTABLEKS R3 R1 K0 ["Enabled"]
  GETTABLEKS R4 R0 K1 ["shortcuts"]
  FASTCALL2 TABLE_INSERT R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [table.insert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K5 ["connections"]
  GETTABLEKS R5 R1 K6 ["Triggered"]
  MOVE R7 R2
  NAMECALL R5 R5 K7 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K4 [table.insert]
  CALL R3 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onStepAction"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["StepActionIds"]
  GETTABLEKS R1 R2 K3 ["stepOverActionV2"]
  LOADK R2 K4 ["PluginAction"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["CurrentDebuggerConnectionId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["CurrentThreadId"]
  CALL R0 4 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onStepAction"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["StepActionIds"]
  GETTABLEKS R1 R2 K3 ["stepIntoActionV2"]
  LOADK R2 K4 ["PluginAction"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["CurrentDebuggerConnectionId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["CurrentThreadId"]
  CALL R0 4 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onStepAction"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["StepActionIds"]
  GETTABLEKS R1 R2 K3 ["stepOutActionV2"]
  LOADK R2 K4 ["PluginAction"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["CurrentDebuggerConnectionId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["CurrentThreadId"]
  CALL R0 4 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onResume"]
  CALL R0 0 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginActions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K2 ["connections"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K3 ["shortcuts"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["StepActionIds"]
  GETTABLEKS R6 R7 K5 ["stepOverActionV2"]
  NAMECALL R4 R1 K6 ["get"]
  CALL R4 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R2 R0 K7 ["addAction"]
  CALL R2 3 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["StepActionIds"]
  GETTABLEKS R6 R7 K8 ["stepIntoActionV2"]
  NAMECALL R4 R1 K6 ["get"]
  CALL R4 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R2 R0 K7 ["addAction"]
  CALL R2 3 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["StepActionIds"]
  GETTABLEKS R6 R7 K9 ["stepOutActionV2"]
  NAMECALL R4 R1 K6 ["get"]
  CALL R4 2 1
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R2 R0 K7 ["addAction"]
  CALL R2 3 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["StepActionIds"]
  GETTABLEKS R6 R7 K10 ["simulationResumeActionV2"]
  NAMECALL R4 R1 K6 ["get"]
  CALL R4 2 1
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  NAMECALL R2 R0 K7 ["addAction"]
  CALL R2 3 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["DebuggerUIService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADB R3 0
  GETTABLEKS R5 R0 K4 ["props"]
  GETTABLEKS R4 R5 K5 ["CurrentDebuggerConnectionId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["kInvalidDebuggerConnectionId"]
  JUMPIFEQ R4 R5 [+9]
  GETTABLEKS R7 R0 K4 ["props"]
  GETTABLEKS R6 R7 K5 ["CurrentDebuggerConnectionId"]
  NAMECALL R4 R2 K7 ["IsConnectionForPlayDataModel"]
  CALL R4 2 1
  MOVE R3 R4
  GETTABLEKS R5 R0 K4 ["props"]
  GETTABLEKS R4 R5 K8 ["IsPaused"]
  GETTABLEKS R6 R0 K4 ["props"]
  GETTABLEKS R5 R6 K9 ["HitException"]
  DUPTABLE R6 K15 [{"ResumeButton", "PauseButton", "StepOverButton", "StepIntoButton", "StepOutButton"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K26 [{"Name", "Toolbar", "Active", "Enabled", "Title", "Tooltip", "icon", "OnClick", "ClickableWhenViewportHidden"}]
  LOADK R10 K27 ["simulationResumeActionV2"]
  SETTABLEKS R10 R9 K17 ["Name"]
  SETTABLEKS R1 R9 K18 ["Toolbar"]
  LOADB R10 0
  SETTABLEKS R10 R9 K19 ["Active"]
  SETTABLEKS R4 R9 K20 ["Enabled"]
  LOADK R10 K28 ["Resume"]
  SETTABLEKS R10 R9 K21 ["Title"]
  LOADK R10 K29 [""]
  SETTABLEKS R10 R9 K22 ["Tooltip"]
  LOADK R10 K30 ["rbxlocaltheme://Resume"]
  SETTABLEKS R10 R9 K23 ["icon"]
  GETTABLEKS R10 R0 K31 ["onResume"]
  SETTABLEKS R10 R9 K24 ["OnClick"]
  LOADB R10 1
  SETTABLEKS R10 R9 K25 ["ClickableWhenViewportHidden"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["ResumeButton"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K26 [{"Name", "Toolbar", "Active", "Enabled", "Title", "Tooltip", "icon", "OnClick", "ClickableWhenViewportHidden"}]
  LOADK R10 K32 ["simulationPauseActionV2"]
  SETTABLEKS R10 R9 K17 ["Name"]
  SETTABLEKS R1 R9 K18 ["Toolbar"]
  LOADB R10 0
  SETTABLEKS R10 R9 K19 ["Active"]
  NOT R11 R4
  AND R10 R11 R3
  SETTABLEKS R10 R9 K20 ["Enabled"]
  LOADK R10 K33 ["Pause"]
  SETTABLEKS R10 R9 K21 ["Title"]
  LOADK R10 K29 [""]
  SETTABLEKS R10 R9 K22 ["Tooltip"]
  LOADK R10 K34 ["rbxlocaltheme://Pause"]
  SETTABLEKS R10 R9 K23 ["icon"]
  GETTABLEKS R10 R0 K35 ["onPause"]
  SETTABLEKS R10 R9 K24 ["OnClick"]
  LOADB R10 1
  SETTABLEKS R10 R9 K25 ["ClickableWhenViewportHidden"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["PauseButton"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K26 [{"Name", "Toolbar", "Active", "Enabled", "Title", "Tooltip", "icon", "OnClick", "ClickableWhenViewportHidden"}]
  LOADK R10 K36 ["stepOverActionV2"]
  SETTABLEKS R10 R9 K17 ["Name"]
  SETTABLEKS R1 R9 K18 ["Toolbar"]
  LOADB R10 0
  SETTABLEKS R10 R9 K19 ["Active"]
  LOADB R10 0
  GETTABLEKS R12 R0 K4 ["props"]
  GETTABLEKS R11 R12 K37 ["CurrentThreadId"]
  JUMPIFEQKNIL R11 [+2]
  NOT R10 R5
  SETTABLEKS R10 R9 K20 ["Enabled"]
  LOADK R10 K38 ["StepOver"]
  SETTABLEKS R10 R9 K21 ["Title"]
  LOADK R10 K29 [""]
  SETTABLEKS R10 R9 K22 ["Tooltip"]
  LOADK R10 K39 ["rbxlocaltheme://StepOver"]
  SETTABLEKS R10 R9 K23 ["icon"]
  GETTABLEKS R10 R0 K40 ["onStepOver"]
  SETTABLEKS R10 R9 K24 ["OnClick"]
  LOADB R10 1
  SETTABLEKS R10 R9 K25 ["ClickableWhenViewportHidden"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["StepOverButton"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K26 [{"Name", "Toolbar", "Active", "Enabled", "Title", "Tooltip", "icon", "OnClick", "ClickableWhenViewportHidden"}]
  LOADK R10 K41 ["stepIntoActionV2"]
  SETTABLEKS R10 R9 K17 ["Name"]
  SETTABLEKS R1 R9 K18 ["Toolbar"]
  LOADB R10 0
  SETTABLEKS R10 R9 K19 ["Active"]
  LOADB R10 0
  GETTABLEKS R12 R0 K4 ["props"]
  GETTABLEKS R11 R12 K37 ["CurrentThreadId"]
  JUMPIFEQKNIL R11 [+2]
  NOT R10 R5
  SETTABLEKS R10 R9 K20 ["Enabled"]
  LOADK R10 K42 ["StepInto"]
  SETTABLEKS R10 R9 K21 ["Title"]
  LOADK R10 K29 [""]
  SETTABLEKS R10 R9 K22 ["Tooltip"]
  LOADK R10 K43 ["rbxlocaltheme://StepInto"]
  SETTABLEKS R10 R9 K23 ["icon"]
  GETTABLEKS R10 R0 K44 ["onStepInto"]
  SETTABLEKS R10 R9 K24 ["OnClick"]
  LOADB R10 1
  SETTABLEKS R10 R9 K25 ["ClickableWhenViewportHidden"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["StepIntoButton"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K26 [{"Name", "Toolbar", "Active", "Enabled", "Title", "Tooltip", "icon", "OnClick", "ClickableWhenViewportHidden"}]
  LOADK R10 K45 ["stepOutActionV2"]
  SETTABLEKS R10 R9 K17 ["Name"]
  SETTABLEKS R1 R9 K18 ["Toolbar"]
  LOADB R10 0
  SETTABLEKS R10 R9 K19 ["Active"]
  LOADB R10 0
  GETTABLEKS R12 R0 K4 ["props"]
  GETTABLEKS R11 R12 K37 ["CurrentThreadId"]
  JUMPIFEQKNIL R11 [+2]
  NOT R10 R5
  SETTABLEKS R10 R9 K20 ["Enabled"]
  LOADK R10 K46 ["StepOut"]
  SETTABLEKS R10 R9 K21 ["Title"]
  LOADK R10 K29 [""]
  SETTABLEKS R10 R9 K22 ["Tooltip"]
  LOADK R10 K47 ["rbxlocaltheme://StepOut"]
  SETTABLEKS R10 R9 K23 ["icon"]
  GETTABLEKS R10 R0 K48 ["onStepOut"]
  SETTABLEKS R10 R9 K24 ["OnClick"]
  LOADB R10 1
  SETTABLEKS R10 R9 K25 ["ClickableWhenViewportHidden"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["StepOutButton"]
  RETURN R6 1

PROTO_13:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_14:
  GETTABLEKS R1 R0 K0 ["shortcuts"]
  JUMPIFNOT R1 [+14]
  GETIMPORT R1 K2 [pairs]
  GETTABLEKS R2 R0 K0 ["shortcuts"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R7 R0 K3 ["props"]
  GETTABLEKS R6 R7 K4 ["IsPaused"]
  SETTABLEKS R6 R5 K5 ["Enabled"]
  FORGLOOP R1 2 [-7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"Title", "RenderButtons"}]
  LOADK R4 K10 ["Debugger"]
  SETTABLEKS R4 R3 K7 ["Title"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K8 ["RenderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_15:
  GETTABLEKS R2 R0 K0 ["Common"]
  GETTABLEKS R3 R2 K1 ["isPaused"]
  GETTABLEKS R5 R2 K2 ["debuggerConnectionIdToCurrentThreadId"]
  GETTABLEKS R6 R2 K3 ["currentDebuggerConnectionId"]
  GETTABLE R4 R5 R6
  GETTABLEKS R5 R2 K3 ["currentDebuggerConnectionId"]
  DUPTABLE R6 K8 [{"IsPaused", "CurrentThreadId", "CurrentDebuggerConnectionId", "HitException"}]
  SETTABLEKS R3 R6 K4 ["IsPaused"]
  SETTABLEKS R4 R6 K5 ["CurrentThreadId"]
  SETTABLEKS R5 R6 K6 ["CurrentDebuggerConnectionId"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R8 R2 K9 ["hitException"]
  GETTABLE R7 R8 R4
  JUMP [+1]
  LOADB R7 0
  SETTABLEKS R7 R6 K7 ["HitException"]
  RETURN R6 1

PROTO_16:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_17:
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 -1
  CALL R4 -1 -1
  RETURN R4 -1

PROTO_18:
  DUPTABLE R1 K2 [{"onSetPausedState", "onStepAction"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["onSetPausedState"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["onStepAction"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["Analytics"]
  GETTABLEKS R6 R4 K11 ["PluginActions"]
  GETTABLEKS R7 R3 K12 ["UI"]
  GETTABLEKS R8 R7 K13 ["PluginButton"]
  GETTABLEKS R9 R7 K14 ["PluginToolbar"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Util"]
  GETTABLEKS R11 R12 K17 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R15 R0 K15 ["Src"]
  GETTABLEKS R14 R15 K18 ["Thunks"]
  GETTABLEKS R13 R14 K19 ["Callstack"]
  GETTABLEKS R12 R13 K20 ["StepHandlers"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K21 ["Actions"]
  GETTABLEKS R14 R15 K22 ["Common"]
  GETTABLEKS R13 R14 K23 ["SetPausedState"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K24 ["PureComponent"]
  LOADK R15 K25 ["DebuggerToolbarButtons"]
  NAMECALL R13 R13 K26 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K27 [PROTO_5]
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K28 ["init"]
  DUPCLOSURE R14 K29 [PROTO_6]
  SETTABLEKS R14 R13 K30 ["addAction"]
  DUPCLOSURE R14 K31 [PROTO_11]
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K32 ["didMount"]
  DUPCLOSURE R14 K33 [PROTO_12]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R14 R13 K34 ["renderButtons"]
  DUPCLOSURE R14 K35 [PROTO_14]
  CAPTURE VAL R1
  CAPTURE VAL R9
  SETTABLEKS R14 R13 K36 ["render"]
  GETTABLEKS R14 R4 K37 ["withContext"]
  DUPTABLE R15 K38 [{"Analytics", "PluginActions"}]
  SETTABLEKS R5 R15 K10 ["Analytics"]
  SETTABLEKS R6 R15 K11 ["PluginActions"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  GETTABLEKS R14 R2 K39 ["connect"]
  DUPCLOSURE R15 K40 [PROTO_15]
  DUPCLOSURE R16 K41 [PROTO_18]
  CAPTURE VAL R12
  CAPTURE VAL R11
  CALL R14 2 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
