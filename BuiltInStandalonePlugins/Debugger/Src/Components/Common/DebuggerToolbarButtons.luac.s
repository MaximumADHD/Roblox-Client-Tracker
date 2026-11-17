PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSetPausedState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETIMPORT                        R0 K2 [game]
        7 LOADK                            R2 K3 ["DebuggerUIService"]
        8 NAMECALL                         R0 R0 K4 ["GetService"]
       10 CALL                             R0 2 1
       11 NAMECALL                         R1 R0 K5 ["Resume"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebuggerUIService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R1 R0 K4 ["Pause"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onStepAction"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R1 K3 ["stepOverActionV2"]
       10 LOADK                            R2 K4 ["ToolbarButton"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K5 ["CurrentDebuggerConnectionId"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K6 ["CurrentThreadId"]
       21 CALL                             R0 4 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onStepAction"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R1 K3 ["stepIntoActionV2"]
       10 LOADK                            R2 K4 ["ToolbarButton"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K5 ["CurrentDebuggerConnectionId"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K6 ["CurrentThreadId"]
       21 CALL                             R0 4 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onStepAction"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R1 K3 ["stepOutActionV2"]
       10 LOADK                            R2 K4 ["ToolbarButton"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K5 ["CurrentDebuggerConnectionId"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K6 ["CurrentThreadId"]
       21 CALL                             R0 4 0
       22 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 SETTABLEKS                       R2 R0 K0 ["onResume"]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["onPause"]
        7 NEWCLOSURE                       R2 P2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R2 R0 K3 ["onStepOver"]
       12 NEWCLOSURE                       R2 P3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R2 R0 K4 ["onStepInto"]
       17 NEWCLOSURE                       R2 P4
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R2 R0 K5 ["onStepOut"]
       22 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+23]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R1 K0 ["Enabled"]
        4 GETTABLEKS                       R4 R0 K1 ["shortcuts"]
        6 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R3 K4 [table.insert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R4 R0 K5 ["connections"]
       14 GETTABLEKS                       R5 R1 K6 ["Triggered"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K7 ["Connect"]
       19 CALL                             R5 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onStepAction"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R1 K3 ["stepOverActionV2"]
       10 LOADK                            R2 K4 ["PluginAction"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K5 ["CurrentDebuggerConnectionId"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K6 ["CurrentThreadId"]
       21 CALL                             R0 4 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onStepAction"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R1 K3 ["stepIntoActionV2"]
       10 LOADK                            R2 K4 ["PluginAction"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K5 ["CurrentDebuggerConnectionId"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K6 ["CurrentThreadId"]
       21 CALL                             R0 4 0
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onStepAction"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R1 K3 ["stepOutActionV2"]
       10 LOADK                            R2 K4 ["PluginAction"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K5 ["CurrentDebuggerConnectionId"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K6 ["CurrentThreadId"]
       21 CALL                             R0 4 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResume"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K2 ["connections"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K3 ["shortcuts"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K4 ["StepActionIds"]
       15 GETTABLEKS                       R6 R6 K5 ["stepOverActionV2"]
       17 NAMECALL                         R4 R1 K6 ["get"]
       19 CALL                             R4 2 1
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 NAMECALL                         R2 R0 K7 ["addAction"]
       25 CALL                             R2 3 0
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K4 ["StepActionIds"]
       29 GETTABLEKS                       R6 R6 K8 ["stepIntoActionV2"]
       31 NAMECALL                         R4 R1 K6 ["get"]
       33 CALL                             R4 2 1
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U0
       37 NAMECALL                         R2 R0 K7 ["addAction"]
       39 CALL                             R2 3 0
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K4 ["StepActionIds"]
       43 GETTABLEKS                       R6 R6 K9 ["stepOutActionV2"]
       45 NAMECALL                         R4 R1 K6 ["get"]
       47 CALL                             R4 2 1
       48 NEWCLOSURE                       R5 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U0
       51 NAMECALL                         R2 R0 K7 ["addAction"]
       53 CALL                             R2 3 0
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K4 ["StepActionIds"]
       57 GETTABLEKS                       R6 R6 K10 ["simulationResumeActionV2"]
       59 NAMECALL                         R4 R1 K6 ["get"]
       61 CALL                             R4 2 1
       62 NEWCLOSURE                       R5 P3
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R2 R0 K7 ["addAction"]
       66 CALL                             R2 3 0
       67 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["DebuggerUIService"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 LOADB                            R3 0
        7 GETTABLEKS                       R4 R0 K4 ["props"]
        9 GETTABLEKS                       R4 R4 K5 ["CurrentDebuggerConnectionId"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K6 ["kInvalidDebuggerConnectionId"]
       14 JUMPIFEQ                         R4 R5 ; [+9]
       16 GETTABLEKS                       R6 R0 K4 ["props"]
       18 GETTABLEKS                       R6 R6 K5 ["CurrentDebuggerConnectionId"]
       20 NAMECALL                         R4 R2 K7 ["IsConnectionForPlayDataModel"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 GETTABLEKS                       R4 R0 K4 ["props"]
       26 GETTABLEKS                       R4 R4 K8 ["IsPaused"]
       28 GETTABLEKS                       R5 R0 K4 ["props"]
       30 GETTABLEKS                       R5 R5 K9 ["HitException"]
       32 DUPTABLE                         R6 K15 [{"ResumeButton", "PauseButton", "StepOverButton", "StepIntoButton", "StepOutButton"}]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K16 ["createElement"]
       36 GETUPVAL                         R8 2
       37 DUPTABLE                         R9 K30 [{["Name"] = "simulationResumeActionV2", ["Toolbar"], ["Active"] = False, ["Enabled"], ["Title"] = "Resume", ["Tooltip"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       38 SETTABLEKS                       R1 R9 K19 ["Toolbar"]
       40 SETTABLEKS                       R4 R9 K22 ["Enabled"]
       42 GETTABLEKS                       R10 R0 K31 ["onResume"]
       44 SETTABLEKS                       R10 R9 K27 ["OnClick"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K10 ["ResumeButton"]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K16 ["createElement"]
       52 GETUPVAL                         R8 2
       53 DUPTABLE                         R9 K34 [{["Name"] = "simulationPauseActionV2", ["Toolbar"], ["Active"] = False, ["Enabled"], ["Title"] = "Pause", ["Tooltip"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       54 SETTABLEKS                       R1 R9 K19 ["Toolbar"]
       56 NOT                              R11 R4
       57 AND                              R10 R11 R3
       58 SETTABLEKS                       R10 R9 K22 ["Enabled"]
       60 GETTABLEKS                       R10 R0 K35 ["onPause"]
       62 SETTABLEKS                       R10 R9 K27 ["OnClick"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K11 ["PauseButton"]
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K16 ["createElement"]
       70 GETUPVAL                         R8 2
       71 DUPTABLE                         R9 K38 [{["Name"] = "stepOverActionV2", ["Toolbar"], ["Active"] = False, ["Enabled"], ["Title"] = "StepOver", ["Tooltip"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       72 SETTABLEKS                       R1 R9 K19 ["Toolbar"]
       74 LOADB                            R10 0
       75 GETTABLEKS                       R11 R0 K4 ["props"]
       77 GETTABLEKS                       R11 R11 K39 ["CurrentThreadId"]
       79 JUMPIFEQKNIL                     R11 ; [+2]
       81 NOT                              R10 R5
       82 SETTABLEKS                       R10 R9 K22 ["Enabled"]
       84 GETTABLEKS                       R10 R0 K40 ["onStepOver"]
       86 SETTABLEKS                       R10 R9 K27 ["OnClick"]
       88 CALL                             R7 2 1
       89 SETTABLEKS                       R7 R6 K12 ["StepOverButton"]
       91 GETUPVAL                         R7 1
       92 GETTABLEKS                       R7 R7 K16 ["createElement"]
       94 GETUPVAL                         R8 2
       95 DUPTABLE                         R9 K43 [{["Name"] = "stepIntoActionV2", ["Toolbar"], ["Active"] = False, ["Enabled"], ["Title"] = "StepInto", ["Tooltip"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       96 SETTABLEKS                       R1 R9 K19 ["Toolbar"]
       98 LOADB                            R10 0
       99 GETTABLEKS                       R11 R0 K4 ["props"]
      101 GETTABLEKS                       R11 R11 K39 ["CurrentThreadId"]
      103 JUMPIFEQKNIL                     R11 ; [+2]
      105 NOT                              R10 R5
      106 SETTABLEKS                       R10 R9 K22 ["Enabled"]
      108 GETTABLEKS                       R10 R0 K44 ["onStepInto"]
      110 SETTABLEKS                       R10 R9 K27 ["OnClick"]
      112 CALL                             R7 2 1
      113 SETTABLEKS                       R7 R6 K13 ["StepIntoButton"]
      115 GETUPVAL                         R7 1
      116 GETTABLEKS                       R7 R7 K16 ["createElement"]
      118 GETUPVAL                         R8 2
      119 DUPTABLE                         R9 K47 [{["Name"] = "stepOutActionV2", ["Toolbar"], ["Active"] = False, ["Enabled"], ["Title"] = "StepOut", ["Tooltip"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
      120 SETTABLEKS                       R1 R9 K19 ["Toolbar"]
      122 LOADB                            R10 0
      123 GETTABLEKS                       R11 R0 K4 ["props"]
      125 GETTABLEKS                       R11 R11 K39 ["CurrentThreadId"]
      127 JUMPIFEQKNIL                     R11 ; [+2]
      129 NOT                              R10 R5
      130 SETTABLEKS                       R10 R9 K22 ["Enabled"]
      132 GETTABLEKS                       R10 R0 K48 ["onStepOut"]
      134 SETTABLEKS                       R10 R9 K27 ["OnClick"]
      136 CALL                             R7 2 1
      137 SETTABLEKS                       R7 R6 K14 ["StepOutButton"]
      139 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["shortcuts"]
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETIMPORT                        R1 K2 [pairs]
        5 GETTABLEKS                       R2 R0 K0 ["shortcuts"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETTABLEKS                       R6 R0 K3 ["props"]
       11 GETTABLEKS                       R6 R6 K4 ["IsPaused"]
       13 SETTABLEKS                       R6 R5 K5 ["Enabled"]
       15 FORGLOOP                         R1 2 ; [-7]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K6 ["createElement"]
       20 GETUPVAL                         R2 1
       21 DUPTABLE                         R3 K10 [{["Title"] = "Debugger", ["RenderButtons"]}]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R4 R3 K9 ["RenderButtons"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["Common"]
        2 GETTABLEKS                       R3 R2 K1 ["isPaused"]
        4 GETTABLEKS                       R5 R2 K2 ["debuggerConnectionIdToCurrentThreadId"]
        6 GETTABLEKS                       R6 R2 K3 ["currentDebuggerConnectionId"]
        8 GETTABLE                         R4 R5 R6
        9 GETTABLEKS                       R5 R2 K3 ["currentDebuggerConnectionId"]
       11 DUPTABLE                         R6 K8 [{"IsPaused", "CurrentThreadId", "CurrentDebuggerConnectionId", "HitException"}]
       12 SETTABLEKS                       R3 R6 K4 ["IsPaused"]
       14 SETTABLEKS                       R4 R6 K5 ["CurrentThreadId"]
       16 SETTABLEKS                       R5 R6 K6 ["CurrentDebuggerConnectionId"]
       18 JUMPIFNOT                        R4 ; [+4]
       19 GETTABLEKS                       R8 R2 K9 ["hitException"]
       21 GETTABLE                         R7 R8 R4
       22 JUMP                             ; [+1]
       23 LOADB                            R7 0
       24 SETTABLEKS                       R7 R6 K7 ["HitException"]
       26 RETURN                           R6 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_18:
        0 DUPTABLE                         R1 K2 [{"onSetPausedState", "onStepAction"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onSetPausedState"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["onStepAction"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["Analytics"]
       36 GETTABLEKS                       R6 R4 K11 ["PluginActions"]
       38 GETTABLEKS                       R7 R3 K12 ["UI"]
       40 GETTABLEKS                       R8 R7 K13 ["PluginButton"]
       42 GETTABLEKS                       R9 R7 K14 ["PluginToolbar"]
       44 GETIMPORT                        R10 K4 [require]
       46 GETTABLEKS                       R11 R0 K15 ["Src"]
       48 GETTABLEKS                       R11 R11 K16 ["Util"]
       50 GETTABLEKS                       R11 R11 K17 ["Constants"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K4 [require]
       55 GETTABLEKS                       R12 R0 K15 ["Src"]
       57 GETTABLEKS                       R12 R12 K18 ["Thunks"]
       59 GETTABLEKS                       R12 R12 K19 ["Callstack"]
       61 GETTABLEKS                       R12 R12 K20 ["StepHandlers"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K4 [require]
       66 GETTABLEKS                       R13 R0 K15 ["Src"]
       68 GETTABLEKS                       R13 R13 K21 ["Actions"]
       70 GETTABLEKS                       R13 R13 K22 ["Common"]
       72 GETTABLEKS                       R13 R13 K23 ["SetPausedState"]
       74 CALL                             R12 1 1
       75 GETTABLEKS                       R13 R1 K24 ["PureComponent"]
       77 LOADK                            R15 K25 ["DebuggerToolbarButtons"]
       78 NAMECALL                         R13 R13 K26 ["extend"]
       80 CALL                             R13 2 1
       81 DUPCLOSURE                       R14 K27 [PROTO_5]
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R14 R13 K28 ["init"]
       85 DUPCLOSURE                       R14 K29 [PROTO_6]
       86 SETTABLEKS                       R14 R13 K30 ["addAction"]
       88 DUPCLOSURE                       R14 K31 [PROTO_11]
       89 CAPTURE                          VAL R10
       90 SETTABLEKS                       R14 R13 K32 ["didMount"]
       92 DUPCLOSURE                       R14 K33 [PROTO_12]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R8
       96 SETTABLEKS                       R14 R13 K34 ["renderButtons"]
       98 DUPCLOSURE                       R14 K35 [PROTO_14]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R9
      101 SETTABLEKS                       R14 R13 K36 ["render"]
      103 GETTABLEKS                       R14 R4 K37 ["withContext"]
      105 DUPTABLE                         R15 K38 [{"Analytics", "PluginActions"}]
      106 SETTABLEKS                       R5 R15 K10 ["Analytics"]
      108 SETTABLEKS                       R6 R15 K11 ["PluginActions"]
      110 CALL                             R14 1 1
      111 MOVE                             R15 R13
      112 CALL                             R14 1 1
      113 MOVE                             R13 R14
      114 GETTABLEKS                       R14 R2 K39 ["connect"]
      116 DUPCLOSURE                       R15 K40 [PROTO_15]
      117 DUPCLOSURE                       R16 K41 [PROTO_18]
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R11
      120 CALL                             R14 2 1
      121 MOVE                             R15 R13
      122 CALL                             R14 1 1
      123 MOVE                             R13 R14
      124 RETURN                           R13 1
