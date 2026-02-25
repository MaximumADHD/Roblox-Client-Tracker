PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["GameStateTypes"]
        3 GETTABLEKS                       R1 R2 K1 ["Client"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+7]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["DebugpointIconTable"]
       10 GETTABLEKS                       R1 R2 K3 ["client"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["GameStateTypes"]
       16 GETTABLEKS                       R1 R2 K4 ["Server"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+7]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K2 ["DebugpointIconTable"]
       23 GETTABLEKS                       R1 R2 K5 ["server"]
       25 RETURN                           R1 1
       26 LOADNIL                          R1
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["goToScript"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["sizes"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"selectedBreakpoints"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["selectedBreakpoints"]
        4 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 1 ; [-8]
       16 GETUPVAL                         R2 0
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 NAMECALL                         R2 R2 K5 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 GETTABLEKS                       R2 R0 K1 ["Data"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["BreakpointActions"]
        7 GETTABLEKS                       R3 R4 K3 ["DeleteBreakpoint"]
        9 JUMPIFEQ                         R1 R3 ; [+8]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K4 ["LogpointActions"]
       14 GETTABLEKS                       R3 R4 K5 ["DeleteLogpoint"]
       16 JUMPIFNOTEQ                      R1 R3 ; [+27]
       18 GETIMPORT                        R3 K7 [game]
       20 LOADK                            R5 K8 ["MetaBreakpointManager"]
       21 NAMECALL                         R3 R3 K9 ["GetService"]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R7 R2 K10 ["item"]
       26 GETTABLEKS                       R6 R7 K11 ["id"]
       28 NAMECALL                         R4 R3 K12 ["RemoveBreakpointById"]
       30 CALL                             R4 2 0
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K13 ["props"]
       34 GETTABLEKS                       R4 R5 K14 ["Analytics"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R6 R7 K15 ["RemoveMetaBreakpoint"]
       39 LOADK                            R7 K16 ["LuaBreakpointsTable.ContextMenu"]
       40 NAMECALL                         R4 R4 K17 ["report"]
       42 CALL                             R4 3 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K2 ["BreakpointActions"]
       47 GETTABLEKS                       R3 R4 K18 ["EditBreakpoint"]
       49 JUMPIFEQ                         R1 R3 ; [+8]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R4 R5 K4 ["LogpointActions"]
       54 GETTABLEKS                       R3 R4 K19 ["EditLogpoint"]
       56 JUMPIFNOTEQ                      R1 R3 ; [+15]
       58 GETIMPORT                        R3 K7 [game]
       60 LOADK                            R5 K20 ["DebuggerUIService"]
       61 NAMECALL                         R3 R3 K9 ["GetService"]
       63 CALL                             R3 2 1
       64 GETTABLEKS                       R7 R2 K10 ["item"]
       66 GETTABLEKS                       R6 R7 K11 ["id"]
       68 NAMECALL                         R4 R3 K18 ["EditBreakpoint"]
       70 CALL                             R4 2 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R4 R5 K2 ["BreakpointActions"]
       75 GETTABLEKS                       R3 R4 K21 ["EnableBreakpoint"]
       77 JUMPIFEQ                         R1 R3 ; [+22]
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R4 R5 K4 ["LogpointActions"]
       82 GETTABLEKS                       R3 R4 K22 ["EnableLogpoint"]
       84 JUMPIFEQ                         R1 R3 ; [+15]
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R4 R5 K2 ["BreakpointActions"]
       89 GETTABLEKS                       R3 R4 K23 ["DisableBreakpoint"]
       91 JUMPIFEQ                         R1 R3 ; [+8]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R4 R5 K4 ["LogpointActions"]
       96 GETTABLEKS                       R3 R4 K24 ["DisableLogpoint"]
       98 JUMPIFNOTEQ                      R1 R3 ; [+32]
      100 GETIMPORT                        R3 K7 [game]
      102 LOADK                            R5 K8 ["MetaBreakpointManager"]
      103 NAMECALL                         R3 R3 K9 ["GetService"]
      105 CALL                             R3 2 1
      106 GETTABLEKS                       R7 R2 K10 ["item"]
      108 GETTABLEKS                       R6 R7 K11 ["id"]
      110 NAMECALL                         R4 R3 K25 ["GetBreakpointById"]
      112 CALL                             R4 2 1
      113 GETUPVAL                         R6 3
      114 GETTABLEKS                       R5 R6 K26 ["setBreakpointRowEnabled"]
      116 MOVE                             R6 R4
      117 MOVE                             R7 R2
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R9 R10 K13 ["props"]
      121 GETTABLEKS                       R8 R9 K14 ["Analytics"]
      123 LOADK                            R9 K16 ["LuaBreakpointsTable.ContextMenu"]
      124 GETUPVAL                         R12 1
      125 GETTABLEKS                       R11 R12 K13 ["props"]
      127 GETTABLEKS                       R10 R11 K27 ["CurrentDebuggerConnectionId"]
      129 CALL                             R5 5 0
      130 RETURN                           R0 0
      131 GETUPVAL                         R5 0
      132 GETTABLEKS                       R4 R5 K28 ["CommonActions"]
      134 GETTABLEKS                       R3 R4 K29 ["GoToScript"]
      136 JUMPIFNOTEQ                      R1 R3 ; [+5]
      138 GETUPVAL                         R4 1
      139 GETTABLEKS                       R3 R4 K30 ["goToScript"]
      141 CALL                             R3 0 0
      142 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R2 K1 ["SortOrder"]
        5 OR                               R3 R4 R1
        6 GETTABLEKS                       R4 R2 K2 ["onSetBreakpointSortState"]
        8 GETTABLEKS                       R6 R2 K3 ["SortIndex"]
       10 JUMPIFNOTEQ                      R6 R0 ; [+3]
       12 MOVE                             R5 R1
       13 JUMPIF                           R5 ; [+1]
       14 MOVE                             R5 R3
       15 MOVE                             R6 R0
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"selectedBreakpoints"}]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["item"]
        6 SETLIST                          R2 R3 1 [1]
        8 SETTABLEKS                       R2 R1 K0 ["selectedBreakpoints"]
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["props"]
        9 GETTABLEKS                       R2 R1 K2 ["Localization"]
       11 GETTABLEKS                       R3 R1 K3 ["Plugin"]
       13 NAMECALL                         R3 R3 K4 ["get"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R6 R0 K5 ["item"]
       18 GETTABLEKS                       R5 R6 K6 ["debugpointType"]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K7 ["DebugpointType"]
       23 GETTABLEKS                       R6 R7 K8 ["Logpoint"]
       25 JUMPIFEQ                         R5 R6 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K9 ["getBreakpointActions"]
       32 MOVE                             R6 R2
       33 GETTABLEKS                       R8 R0 K5 ["item"]
       35 GETTABLEKS                       R7 R8 K10 ["isEnabled"]
       37 MOVE                             R8 R4
       38 MOVE                             R9 R0
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R10 R11 K11 ["onMenuActionSelected"]
       42 CALL                             R5 5 1
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R6 R7 K12 ["getBreakpointActionsOrder"]
       46 GETTABLEKS                       R8 R0 K5 ["item"]
       48 GETTABLEKS                       R7 R8 K10 ["isEnabled"]
       50 MOVE                             R8 R4
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 3
       53 MOVE                             R8 R3
       54 MOVE                             R9 R5
       55 MOVE                             R10 R6
       56 CALL                             R7 3 0
       57 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"deleteAllPopup"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["deleteAllPopup"]
        4 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_10]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K1 [{"deleteAllPopup"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["deleteAllPopup"]
        4 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_12]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["MetaBreakpointManager"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K5 [ipairs]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K6 ["props"]
       11 GETTABLEKS                       R2 R4 K7 ["Breakpoints"]
       13 CALL                             R1 1 3
       14 FORGPREP_INEXT                   R1
       15 GETTABLEKS                       R8 R5 K8 ["id"]
       17 NAMECALL                         R6 R0 K9 ["RemoveBreakpointById"]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 [inext] ; [-6]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K6 ["props"]
       25 GETTABLEKS                       R1 R2 K10 ["Analytics"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K11 ["RemoveAllMetaBreakpoints"]
       30 LOADK                            R4 K12 ["LuaBreakpointsTable"]
       31 NAMECALL                         R1 R1 K13 ["report"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["MetaBreakpointManager"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["props"]
        9 GETTABLEKS                       R1 R2 K5 ["hasDisabledBreakpoints"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["props"]
       14 GETTABLEKS                       R2 R3 K6 ["onToggleEnabledAll"]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 JUMPIFNOT                        R1 ; [+13]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K4 ["props"]
       23 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K8 ["EnableAllMetaBreakpoints"]
       28 LOADK                            R5 K9 ["LuaBreakpointsTable"]
       29 NAMECALL                         R2 R2 K10 ["report"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K4 ["props"]
       36 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K11 ["DisableAllMetaBreakpoints"]
       41 LOADK                            R5 K9 ["LuaBreakpointsTable"]
       42 NAMECALL                         R2 R2 K10 ["report"]
       44 CALL                             R2 3 0
       45 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["selectedBreakpoints"]
        5 LENGTH                           R0 R1
        6 JUMPIFEQKN                       R0 K2 [0] ; [+40]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["state"]
       11 GETTABLEKS                       R1 R2 K1 ["selectedBreakpoints"]
       13 GETTABLEN                        R0 R1 1
       14 GETIMPORT                        R1 K4 [game]
       16 LOADK                            R3 K5 ["DebuggerUIService"]
       17 NAMECALL                         R1 R1 K6 ["GetService"]
       19 CALL                             R1 2 1
       20 GETTABLEKS                       R3 R0 K7 ["hiddenConnectionId"]
       22 JUMPIFNOT                        R3 ; [+3]
       23 GETTABLEKS                       R2 R0 K7 ["hiddenConnectionId"]
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K8 ["props"]
       29 GETTABLEKS                       R2 R3 K9 ["CurrentDebuggerConnectionId"]
       31 GETTABLEKS                       R4 R0 K10 ["hiddenLineNumber"]
       33 JUMPIFNOT                        R4 ; [+3]
       34 GETTABLEKS                       R3 R0 K10 ["hiddenLineNumber"]
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R3 R0 K11 ["lineNumber"]
       39 GETTABLEKS                       R6 R0 K12 ["scriptGUID"]
       41 MOVE                             R7 R2
       42 MOVE                             R8 R3
       43 LOADB                            R9 1
       44 NAMECALL                         R4 R1 K13 ["OpenScriptAtLine"]
       46 CALL                             R4 5 0
       47 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETTABLEKS                       R7 R5 K2 ["id"]
        9 SETTABLE                         R6 R1 R7
       10 FORGLOOP                         R2 2 ; [-4]
       12 DUPTABLE                         R2 K4 [{"breakpointIdToExpansionState"}]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       16 GETTABLEKS                       R3 R4 K6 ["join"]
       18 GETTABLEKS                       R4 R0 K3 ["breakpointIdToExpansionState"]
       20 MOVE                             R5 R1
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K3 ["breakpointIdToExpansionState"]
       24 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_20:
        0 GETIMPORT                        R4 K1 [game]
        2 LOADK                            R6 K2 ["MetaBreakpointManager"]
        3 NAMECALL                         R4 R4 K3 ["GetService"]
        5 CALL                             R4 2 1
        6 GETTABLEKS                       R5 R2 K4 ["item"]
        8 GETTABLEKS                       R6 R5 K5 ["id"]
       10 MOVE                             R9 R6
       11 NAMECALL                         R7 R4 K6 ["GetBreakpointById"]
       13 CALL                             R7 2 1
       14 JUMPIF                           R7 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R11 0
       17 GETTABLEKS                       R10 R11 K7 ["props"]
       19 GETTABLEKS                       R9 R10 K8 ["CurrentKeys"]
       21 GETTABLE                         R8 R9 R3
       22 JUMPIFNOTEQKS                    R8 K9 ["condition"] ; [+22]
       24 GETTABLEKS                       R8 R1 K10 ["Text"]
       26 GETTABLEKS                       R9 R7 K11 ["Condition"]
       28 JUMPIFEQ                         R8 R9 ; [+44]
       30 SETTABLEKS                       R8 R7 K11 ["Condition"]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R10 R11 K7 ["props"]
       35 GETTABLEKS                       R9 R10 K12 ["Analytics"]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R11 R12 K13 ["MetaBreakpointConditionChanged"]
       40 LOADK                            R12 K14 ["LuaBreakpointsTable"]
       41 NAMECALL                         R9 R9 K15 ["report"]
       43 CALL                             R9 3 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R10 R11 K7 ["props"]
       48 GETTABLEKS                       R9 R10 K8 ["CurrentKeys"]
       50 GETTABLE                         R8 R9 R3
       51 JUMPIFNOTEQKS                    R8 K16 ["logMessage"] ; [+21]
       53 GETTABLEKS                       R8 R1 K10 ["Text"]
       55 GETTABLEKS                       R9 R7 K17 ["LogMessage"]
       57 JUMPIFEQ                         R8 R9 ; [+15]
       59 SETTABLEKS                       R8 R7 K17 ["LogMessage"]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R10 R11 K7 ["props"]
       64 GETTABLEKS                       R9 R10 K12 ["Analytics"]
       66 GETUPVAL                         R12 1
       67 GETTABLEKS                       R11 R12 K18 ["MetaBreakpointLogMessageChanged"]
       69 LOADK                            R12 K14 ["LuaBreakpointsTable"]
       70 NAMECALL                         R9 R9 K15 ["report"]
       72 CALL                             R9 3 0
       73 RETURN                           R0 0

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R4 0
        3 LENGTH                           R3 R4
        4 GETTABLEKS                       R6 R0 K0 ["props"]
        6 GETTABLEKS                       R5 R6 K1 ["ColumnFilter"]
        8 LENGTH                           R4 R5
        9 ADD                              R2 R3 R4
       10 LOADN                            R5 1
       11 MOVE                             R3 R2
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 JUMPIFNOTEQKN                    R5 K2 [2] ; [+13]
       16 MOVE                             R7 R1
       17 GETIMPORT                        R8 K5 [UDim.new]
       19 ADDK                             R10 R2 K6 [0.5]
       20 DIVRK                            R9 R2 K10 [3]
       21 LOADN                            R10 0
       22 CALL                             R8 2 -1
       23 FASTCALL                         TABLE_INSERT ; [+2]
       24 GETIMPORT                        R6 K9 [table.insert]
       26 CALL                             R6 -1 0
       27 JUMP                             ; [+25]
       28 JUMPIFNOTEQKN                    R5 K10 [3] ; [+13]
       30 MOVE                             R7 R1
       31 GETIMPORT                        R8 K5 [UDim.new]
       33 ADDK                             R10 R2 K6 [0.5]
       34 DIVRK                            R9 R6 K10 [3]
       35 LOADN                            R10 0
       36 CALL                             R8 2 -1
       37 FASTCALL                         TABLE_INSERT ; [+2]
       38 GETIMPORT                        R6 K9 [table.insert]
       40 CALL                             R6 -1 0
       41 JUMP                             ; [+11]
       42 MOVE                             R7 R1
       43 GETIMPORT                        R8 K5 [UDim.new]
       45 ADDK                             R10 R2 K6 [0.5]
       46 DIVRK                            R9 R11 K10 [3]
       47 LOADN                            R10 0
       48 CALL                             R8 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R6 K9 [table.insert]
       52 CALL                             R6 -1 0
       53 FORNLOOP                         R3
       54 DUPTABLE                         R3 K16 [{"selectedBreakpoints", "breakpointIdToExpansionState", "sizes", "deleteAllPopup"}]
       55 NEWTABLE                         R4 0 0
       57 SETTABLEKS                       R4 R3 K12 ["selectedBreakpoints"]
       59 NEWTABLE                         R4 0 0
       61 SETTABLEKS                       R4 R3 K13 ["breakpointIdToExpansionState"]
       63 SETTABLEKS                       R1 R3 K14 ["sizes"]
       65 LOADB                            R4 0
       66 SETTABLEKS                       R4 R3 K15 ["deleteAllPopup"]
       68 SETTABLEKS                       R3 R0 K17 ["state"]
       70 NEWCLOSURE                       R3 P0
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R3 R0 K18 ["OnDoubleClick"]
       74 NEWCLOSURE                       R3 P1
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R3 R0 K19 ["OnColumnSizesChange"]
       78 NEWCLOSURE                       R3 P2
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R3 R0 K20 ["onSelectionChange"]
       82 NEWCLOSURE                       R3 P3
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U3
       87 SETTABLEKS                       R3 R0 K21 ["onMenuActionSelected"]
       89 NEWCLOSURE                       R3 P4
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R3 R0 K22 ["OnSortChange"]
       93 NEWCLOSURE                       R3 P5
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U1
       96 CAPTURE                          UPVAL U4
       97 CAPTURE                          UPVAL U5
       98 SETTABLEKS                       R3 R0 K23 ["onRightClick"]
      100 NEWCLOSURE                       R3 P6
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R3 R0 K24 ["displayDeleteAllBreakpointsPopup"]
      104 NEWCLOSURE                       R3 P7
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R3 R0 K25 ["closeDeleteAllBreakpointsPopup"]
      108 NEWCLOSURE                       R3 P8
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U2
      111 SETTABLEKS                       R3 R0 K26 ["deleteAllBreakpoints"]
      113 NEWCLOSURE                       R3 P9
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U2
      116 SETTABLEKS                       R3 R0 K27 ["toggleEnabledAll"]
      118 NEWCLOSURE                       R3 P10
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R3 R0 K28 ["goToScript"]
      122 NEWCLOSURE                       R3 P11
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U6
      125 SETTABLEKS                       R3 R0 K29 ["onExpansionChange"]
      127 DUPCLOSURE                       R3 K30 [PROTO_19]
      128 SETTABLEKS                       R3 R0 K31 ["getTreeChildren"]
      130 NEWCLOSURE                       R3 P13
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U2
      133 SETTABLEKS                       R3 R0 K32 ["OnFocusLost"]
      135 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["fetchSizesFromColumnScales"]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K3 ["ColumnSize"]
        8 GETTABLE                         R3 R4 R5
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K0 ["sizes"]
       12 RETURN                           R1 1

PROTO_23:
        0 DUPTABLE                         R1 K1 [{"selectedBreakpoints"}]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K2 ["props"]
        6 GETTABLEKS                       R3 R4 K3 ["CurrentBreakpoint"]
        8 SETLIST                          R2 R3 1 [1]
       10 SETTABLEKS                       R2 R1 K0 ["selectedBreakpoints"]
       12 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 LOADK                            R5 K3 ["breakpointsWindowConfigs"]
        8 NAMECALL                         R3 R2 K4 ["GetSetting"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+24]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K5 ["ColumnSize"]
       15 GETTABLE                         R4 R3 R5
       16 JUMPIFNOT                        R4 ; [+19]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K6 ["ColumnFilter"]
       20 GETTABLE                         R4 R3 R5
       21 JUMPIFNOT                        R4 ; [+14]
       22 GETTABLEKS                       R4 R1 K7 ["onColumnFilterChange"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K6 ["ColumnFilter"]
       27 GETTABLE                         R5 R3 R6
       28 CALL                             R4 1 0
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U0
       33 NAMECALL                         R4 R0 K8 ["setState"]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R5 R0 K0 ["props"]
       38 GETTABLEKS                       R4 R5 K9 ["IsPaused"]
       40 JUMPIFNOT                        R4 ; [+10]
       41 GETTABLEKS                       R5 R0 K0 ["props"]
       43 GETTABLEKS                       R4 R5 K10 ["CurrentBreakpoint"]
       45 JUMPIFNOT                        R4 ; [+5]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          VAL R0
       48 NAMECALL                         R4 R0 K8 ["setState"]
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["ColumnFilter"]
       12 GETTABLEKS                       R5 R1 K3 ["ColumnFilter"]
       14 SETTABLE                         R5 R3 R4
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K4 ["ColumnSize"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K5 ["fetchScaleFromColumnSizes"]
       21 GETTABLEKS                       R7 R0 K6 ["state"]
       23 GETTABLEKS                       R6 R7 K7 ["sizes"]
       25 CALL                             R5 1 1
       26 SETTABLE                         R5 R3 R4
       27 LOADK                            R6 K8 ["breakpointsWindowConfigs"]
       28 MOVE                             R7 R3
       29 NAMECALL                         R4 R2 K9 ["SetSetting"]
       31 CALL                             R4 3 0
       32 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["sizes"]
        4 RETURN                           R1 1

PROTO_27:
        0 DUPTABLE                         R1 K1 [{"selectedBreakpoints"}]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K2 ["props"]
        6 GETTABLEKS                       R3 R4 K3 ["CurrentBreakpoint"]
        8 SETLIST                          R2 R3 1 [1]
       10 SETTABLEKS                       R2 R1 K0 ["selectedBreakpoints"]
       12 RETURN                           R1 1

PROTO_28:
        0 DUPTABLE                         R1 K1 [{"selectedBreakpoints"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["selectedBreakpoints"]
        4 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R2 K1 ["ColumnFilter"]
        4 LENGTH                           R4 R5
        5 GETUPVAL                         R6 0
        6 LENGTH                           R5 R6
        7 ADD                              R3 R4 R5
        8 GETTABLEKS                       R5 R2 K1 ["ColumnFilter"]
       10 LENGTH                           R4 R5
       11 GETTABLEKS                       R6 R1 K1 ["ColumnFilter"]
       13 LENGTH                           R5 R6
       14 JUMPIFEQ                         R4 R5 ; [+78]
       16 GETTABLEKS                       R6 R0 K2 ["state"]
       18 GETTABLEKS                       R5 R6 K3 ["sizes"]
       20 LENGTH                           R4 R5
       21 JUMPIFEQ                         R4 R3 ; [+71]
       23 NEWTABLE                         R4 0 0
       25 GETTABLEKS                       R7 R1 K1 ["ColumnFilter"]
       27 LENGTH                           R6 R7
       28 GETUPVAL                         R8 0
       29 LENGTH                           R7 R8
       30 ADD                              R5 R6 R7
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K4 ["List"]
       34 GETTABLEKS                       R6 R7 K5 ["toSet"]
       36 GETTABLEKS                       R7 R2 K1 ["ColumnFilter"]
       38 CALL                             R6 1 1
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R7 R8 K6 ["fetchOldColumnSizes"]
       42 MOVE                             R8 R5
       43 GETTABLEKS                       R9 R1 K1 ["ColumnFilter"]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R12 R0 K2 ["state"]
       48 GETTABLEKS                       R11 R12 K3 ["sizes"]
       50 CALL                             R7 4 1
       51 JUMPIFNOTLT                      R3 R5 ; [+24]
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R8 R9 K7 ["fetchDeletedColumnsSize"]
       56 GETUPVAL                         R10 0
       57 LENGTH                           R9 R10
       58 MOVE                             R10 R5
       59 GETTABLEKS                       R11 R1 K1 ["ColumnFilter"]
       61 MOVE                             R12 R7
       62 MOVE                             R13 R6
       63 CALL                             R8 5 1
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R9 R10 K8 ["updatedSizesAfterRemovingColumns"]
       67 MOVE                             R10 R3
       68 MOVE                             R11 R8
       69 MOVE                             R12 R7
       70 GETUPVAL                         R13 0
       71 GETTABLEKS                       R14 R2 K1 ["ColumnFilter"]
       73 CALL                             R9 5 1
       74 MOVE                             R4 R9
       75 JUMP                             ; [+11]
       76 GETUPVAL                         R9 2
       77 GETTABLEKS                       R8 R9 K9 ["updatedSizesAfterAddingColumns"]
       79 MOVE                             R9 R3
       80 MOVE                             R10 R5
       81 MOVE                             R11 R7
       82 GETTABLEKS                       R12 R2 K1 ["ColumnFilter"]
       84 GETUPVAL                         R13 0
       85 CALL                             R8 5 1
       86 MOVE                             R4 R8
       87 NEWCLOSURE                       R10 P0
       88 CAPTURE                          REF R4
       89 NAMECALL                         R8 R0 K10 ["setState"]
       91 CALL                             R8 2 0
       92 CLOSEUPVALS                      R4
       93 GETTABLEKS                       R5 R0 K0 ["props"]
       95 GETTABLEKS                       R4 R5 K11 ["IsPaused"]
       97 GETTABLEKS                       R5 R1 K11 ["IsPaused"]
       99 JUMPIFEQ                         R4 R5 ; [+17]
      101 GETTABLEKS                       R5 R0 K0 ["props"]
      103 GETTABLEKS                       R4 R5 K11 ["IsPaused"]
      105 JUMPIFNOT                        R4 ; [+11]
      106 GETTABLEKS                       R5 R0 K0 ["props"]
      108 GETTABLEKS                       R4 R5 K12 ["CurrentBreakpoint"]
      110 JUMPIFNOT                        R4 ; [+6]
      111 NEWCLOSURE                       R6 P1
      112 CAPTURE                          VAL R0
      113 NAMECALL                         R4 R0 K10 ["setState"]
      115 CALL                             R4 2 0
      116 RETURN                           R0 0
      117 GETTABLEKS                       R5 R0 K0 ["props"]
      119 GETTABLEKS                       R4 R5 K13 ["Breakpoints"]
      121 GETTABLEKS                       R5 R1 K13 ["Breakpoints"]
      123 JUMPIFEQ                         R4 R5 ; [+95]
      125 GETTABLEKS                       R6 R0 K2 ["state"]
      127 GETTABLEKS                       R5 R6 K14 ["selectedBreakpoints"]
      129 LENGTH                           R4 R5
      130 JUMPIFEQKN                       R4 K15 [0] ; [+88]
      132 NEWTABLE                         R4 0 0
      134 NEWTABLE                         R5 0 0
      136 NEWTABLE                         R6 0 0
      138 GETIMPORT                        R7 K17 [ipairs]
      140 GETTABLEKS                       R10 R0 K2 ["state"]
      142 GETTABLEKS                       R8 R10 K14 ["selectedBreakpoints"]
      144 CALL                             R7 1 3
      145 FORGPREP_INEXT                   R7
      146 GETTABLEKS                       R12 R11 K18 ["context"]
      148 JUMPIFNOT                        R12 ; [+9]
      149 GETTABLEKS                       R12 R11 K19 ["id"]
      151 GETTABLEKS                       R14 R11 K18 ["context"]
      153 GETTABLEKS                       R15 R11 K20 ["scriptGUID"]
      155 CONCAT                           R13 R14 R15
      156 SETTABLE                         R13 R6 R12
      157 JUMP                             ; [+4]
      158 GETTABLEKS                       R12 R11 K19 ["id"]
      160 LOADB                            R13 1
      161 SETTABLE                         R13 R5 R12
      162 FORGLOOP                         R7 2 [inext] ; [-17]
      164 GETIMPORT                        R7 K17 [ipairs]
      166 GETTABLEKS                       R10 R0 K0 ["props"]
      168 GETTABLEKS                       R8 R10 K13 ["Breakpoints"]
      170 CALL                             R7 1 3
      171 FORGPREP_INEXT                   R7
      172 GETTABLEKS                       R13 R11 K19 ["id"]
      174 GETTABLE                         R12 R5 R13
      175 JUMPIFNOT                        R12 ; [+7]
      176 FASTCALL2                        TABLE_INSERT R4 R11 ; [+5]
      178 MOVE                             R13 R4
      179 MOVE                             R14 R11
      180 GETIMPORT                        R12 K23 [table.insert]
      182 CALL                             R12 2 0
      183 GETTABLEKS                       R13 R11 K19 ["id"]
      185 GETTABLE                         R12 R6 R13
      186 JUMPIFNOT                        R12 ; [+25]
      187 GETIMPORT                        R12 K17 [ipairs]
      189 GETTABLEKS                       R13 R11 K24 ["children"]
      191 CALL                             R12 1 3
      192 FORGPREP_INEXT                   R12
      193 GETTABLEKS                       R18 R16 K18 ["context"]
      195 GETTABLEKS                       R19 R16 K20 ["scriptGUID"]
      197 CONCAT                           R17 R18 R19
      198 GETTABLEKS                       R19 R11 K19 ["id"]
      200 GETTABLE                         R18 R6 R19
      201 JUMPIFNOTEQ                      R18 R17 ; [+8]
      203 FASTCALL2                        TABLE_INSERT R4 R16 ; [+5]
      205 MOVE                             R19 R4
      206 MOVE                             R20 R16
      207 GETIMPORT                        R18 K23 [table.insert]
      209 CALL                             R18 2 0
      210 FORGLOOP                         R12 2 [inext] ; [-18]
      212 FORGLOOP                         R7 2 [inext] ; [-41]
      214 NEWCLOSURE                       R9 P2
      215 CAPTURE                          VAL R4
      216 NAMECALL                         R7 R0 K10 ["setState"]
      218 CALL                             R7 2 0
      219 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R7 R8 K2 ["state"]
        6 GETTABLEKS                       R6 R7 K3 ["sizes"]
        8 GETTABLE                         R5 R6 R1
        9 SETTABLEKS                       R5 R4 K0 ["Width"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["IsPaused"]
        8 JUMPIFNOT                        R4 ; [+24]
        9 GETTABLEKS                       R4 R1 K4 ["CurrentBreakpoint"]
       11 JUMPIFNOT                        R4 ; [+21]
       12 GETTABLEKS                       R6 R0 K5 ["state"]
       14 GETTABLEKS                       R5 R6 K6 ["selectedBreakpoints"]
       16 GETTABLEN                        R4 R5 1
       17 JUMPIFNOT                        R4 ; [+15]
       18 GETTABLEKS                       R6 R1 K4 ["CurrentBreakpoint"]
       20 GETTABLEKS                       R5 R6 K7 ["id"]
       22 GETTABLEKS                       R9 R0 K5 ["state"]
       24 GETTABLEKS                       R8 R9 K6 ["selectedBreakpoints"]
       26 GETTABLEN                        R7 R8 1
       27 GETTABLEKS                       R6 R7 K7 ["id"]
       29 JUMPIFEQ                         R5 R6 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 NEWTABLE                         R5 0 3
       35 DUPTABLE                         R6 K10 [{"Name", "Key"}]
       36 LOADK                            R7 K11 [""]
       37 SETTABLEKS                       R7 R6 K8 ["Name"]
       39 GETUPVAL                         R8 0
       40 GETTABLEN                        R7 R8 1
       41 SETTABLEKS                       R7 R6 K9 ["Key"]
       43 DUPTABLE                         R7 K13 [{"Name", "Key", "Tooltip"}]
       44 LOADK                            R10 K14 ["BreakpointsWindow"]
       45 LOADK                            R11 K15 ["ScriptColumn"]
       46 NAMECALL                         R8 R2 K16 ["getText"]
       48 CALL                             R8 3 1
       49 SETTABLEKS                       R8 R7 K8 ["Name"]
       51 GETUPVAL                         R9 0
       52 GETTABLEN                        R8 R9 2
       53 SETTABLEKS                       R8 R7 K9 ["Key"]
       55 LOADK                            R11 K14 ["BreakpointsWindow"]
       56 LOADK                            R12 K18 ["ScriptColumnTooltip"]
       57 NAMECALL                         R9 R2 K16 ["getText"]
       59 CALL                             R9 3 1
       60 ORK                              R8 R9 K17 []
       61 SETTABLEKS                       R8 R7 K12 ["Tooltip"]
       63 DUPTABLE                         R8 K13 [{"Name", "Key", "Tooltip"}]
       64 LOADK                            R11 K14 ["BreakpointsWindow"]
       65 LOADK                            R12 K19 ["LineColumn"]
       66 NAMECALL                         R9 R2 K16 ["getText"]
       68 CALL                             R9 3 1
       69 SETTABLEKS                       R9 R8 K8 ["Name"]
       71 GETUPVAL                         R10 0
       72 GETTABLEN                        R9 R10 3
       73 SETTABLEKS                       R9 R8 K9 ["Key"]
       75 LOADK                            R12 K14 ["BreakpointsWindow"]
       76 LOADK                            R13 K20 ["LineColumnTooltip"]
       77 NAMECALL                         R10 R2 K16 ["getText"]
       79 CALL                             R10 3 1
       80 ORK                              R9 R10 K17 []
       81 SETTABLEKS                       R9 R8 K12 ["Tooltip"]
       83 SETLIST                          R5 R6 3 [1]
       85 GETIMPORT                        R6 K22 [ipairs]
       87 GETTABLEKS                       R7 R1 K23 ["ColumnFilter"]
       89 CALL                             R6 1 3
       90 FORGPREP_INEXT                   R6
       91 DUPTABLE                         R11 K13 [{"Name", "Key", "Tooltip"}]
       92 LOADK                            R14 K14 ["BreakpointsWindow"]
       93 MOVE                             R15 R10
       94 NAMECALL                         R12 R2 K16 ["getText"]
       96 CALL                             R12 3 1
       97 SETTABLEKS                       R12 R11 K8 ["Name"]
       99 GETUPVAL                         R13 1
      100 GETTABLE                         R12 R13 R10
      101 SETTABLEKS                       R12 R11 K9 ["Key"]
      103 LOADK                            R15 K14 ["BreakpointsWindow"]
      104 MOVE                             R17 R10
      105 LOADK                            R18 K12 ["Tooltip"]
      106 CONCAT                           R16 R17 R18
      107 NAMECALL                         R13 R2 K16 ["getText"]
      109 CALL                             R13 3 1
      110 ORK                              R12 R13 K17 []
      111 SETTABLEKS                       R12 R11 K12 ["Tooltip"]
      113 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      115 MOVE                             R13 R5
      116 MOVE                             R14 R11
      117 GETIMPORT                        R12 K26 [table.insert]
      119 CALL                             R12 2 0
      120 FORGLOOP                         R6 2 [inext] ; [-30]
      122 GETUPVAL                         R6 2
      123 MOVE                             R7 R5
      124 NEWCLOSURE                       R8 P0
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          VAL R0
      127 CALL                             R6 2 1
      128 NEWTABLE                         R7 0 0
      130 GETIMPORT                        R8 K28 [pairs]
      132 GETTABLEKS                       R9 R1 K29 ["Breakpoints"]
      134 CALL                             R8 1 3
      135 FORGPREP_NEXT                    R8
      136 GETTABLEKS                       R15 R0 K5 ["state"]
      138 GETTABLEKS                       R14 R15 K30 ["breakpointIdToExpansionState"]
      140 GETTABLEKS                       R15 R12 K7 ["id"]
      142 GETTABLE                         R13 R14 R15
      143 JUMPIFNOTEQKNIL                  R13 ; [+9]
      145 GETTABLEKS                       R14 R0 K5 ["state"]
      147 GETTABLEKS                       R13 R14 K30 ["breakpointIdToExpansionState"]
      149 GETTABLEKS                       R14 R12 K7 ["id"]
      151 LOADB                            R15 0
      152 SETTABLE                         R15 R13 R14
      153 GETTABLEKS                       R15 R0 K5 ["state"]
      155 GETTABLEKS                       R14 R15 K30 ["breakpointIdToExpansionState"]
      157 GETTABLEKS                       R15 R12 K7 ["id"]
      159 GETTABLE                         R13 R14 R15
      160 SETTABLE                         R13 R7 R12
      161 FORGLOOP                         R8 2 ; [-26]
      163 LOADNIL                          R8
      164 GETTABLEKS                       R9 R1 K31 ["hasDisabledBreakpoints"]
      166 JUMPIFNOT                        R9 ; [+7]
      167 LOADK                            R11 K14 ["BreakpointsWindow"]
      168 LOADK                            R12 K32 ["EnableAll"]
      169 NAMECALL                         R9 R2 K16 ["getText"]
      171 CALL                             R9 3 1
      172 MOVE                             R8 R9
      173 JUMP                             ; [+6]
      174 LOADK                            R11 K14 ["BreakpointsWindow"]
      175 LOADK                            R12 K33 ["DisableAll"]
      176 NAMECALL                         R9 R2 K16 ["getText"]
      178 CALL                             R9 3 1
      179 MOVE                             R8 R9
      180 GETUPVAL                         R11 4
      181 GETTABLEKS                       R10 R11 K34 ["HEADER_HEIGHT"]
      183 GETUPVAL                         R13 4
      184 GETTABLEKS                       R12 R13 K36 ["BUTTON_PADDING"]
      186 MULK                             R11 R12 K35 [2]
      187 ADD                              R9 R10 R11
      188 GETUPVAL                         R11 5
      189 GETTABLEKS                       R10 R11 K37 ["createElement"]
      191 GETUPVAL                         R11 6
      192 DUPTABLE                         R12 K43 [{"Size", "Style", "Layout", "VerticalAlignment", "BackgroundColor3"}]
      193 GETIMPORT                        R13 K46 [UDim2.fromScale]
      195 LOADN                            R14 1
      196 LOADN                            R15 1
      197 CALL                             R13 2 1
      198 SETTABLEKS                       R13 R12 K38 ["Size"]
      200 LOADK                            R13 K47 ["Box"]
      201 SETTABLEKS                       R13 R12 K39 ["Style"]
      203 GETIMPORT                        R13 K51 [Enum.FillDirection.Vertical]
      205 SETTABLEKS                       R13 R12 K40 ["Layout"]
      207 GETIMPORT                        R13 K53 [Enum.VerticalAlignment.Top]
      209 SETTABLEKS                       R13 R12 K41 ["VerticalAlignment"]
      211 GETTABLEKS                       R13 R3 K54 ["MainBackground"]
      213 SETTABLEKS                       R13 R12 K42 ["BackgroundColor3"]
      215 DUPTABLE                         R13 K58 [{"HeaderPane", "TablePane", "DeleteAllDialog"}]
      216 GETUPVAL                         R15 5
      217 GETTABLEKS                       R14 R15 K37 ["createElement"]
      219 GETUPVAL                         R15 6
      220 DUPTABLE                         R16 K63 [{"Size", "Spacing", "Padding", "Style", "Layout", "LayoutOrder", "VerticalAlignment", "HorizontalAlignment"}]
      221 GETIMPORT                        R17 K65 [UDim2.new]
      223 LOADN                            R18 1
      224 LOADN                            R19 0
      225 LOADN                            R20 0
      226 MOVE                             R21 R9
      227 CALL                             R17 4 1
      228 SETTABLEKS                       R17 R16 K38 ["Size"]
      230 GETUPVAL                         R18 4
      231 GETTABLEKS                       R17 R18 K36 ["BUTTON_PADDING"]
      233 SETTABLEKS                       R17 R16 K59 ["Spacing"]
      235 GETUPVAL                         R18 4
      236 GETTABLEKS                       R17 R18 K36 ["BUTTON_PADDING"]
      238 SETTABLEKS                       R17 R16 K60 ["Padding"]
      240 LOADK                            R17 K47 ["Box"]
      241 SETTABLEKS                       R17 R16 K39 ["Style"]
      243 GETIMPORT                        R17 K67 [Enum.FillDirection.Horizontal]
      245 SETTABLEKS                       R17 R16 K40 ["Layout"]
      247 LOADN                            R17 1
      248 SETTABLEKS                       R17 R16 K61 ["LayoutOrder"]
      250 GETIMPORT                        R17 K69 [Enum.VerticalAlignment.Center]
      252 SETTABLEKS                       R17 R16 K41 ["VerticalAlignment"]
      254 GETIMPORT                        R17 K71 [Enum.HorizontalAlignment.Left]
      256 SETTABLEKS                       R17 R16 K62 ["HorizontalAlignment"]
      258 DUPTABLE                         R17 K74 [{"ButtonsContainer", "DropdownContainer"}]
      259 GETUPVAL                         R19 5
      260 GETTABLEKS                       R18 R19 K37 ["createElement"]
      262 GETUPVAL                         R19 6
      263 DUPTABLE                         R20 K75 [{"Size", "LayoutOrder", "Style", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
      264 GETIMPORT                        R21 K65 [UDim2.new]
      266 LOADK                            R22 K76 [0.5]
      267 LOADN                            R23 0
      268 LOADN                            R24 0
      269 GETUPVAL                         R26 4
      270 GETTABLEKS                       R25 R26 K34 ["HEADER_HEIGHT"]
      272 CALL                             R21 4 1
      273 SETTABLEKS                       R21 R20 K38 ["Size"]
      275 LOADN                            R21 1
      276 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      278 LOADK                            R21 K47 ["Box"]
      279 SETTABLEKS                       R21 R20 K39 ["Style"]
      281 GETIMPORT                        R21 K67 [Enum.FillDirection.Horizontal]
      283 SETTABLEKS                       R21 R20 K40 ["Layout"]
      285 GETIMPORT                        R21 K69 [Enum.VerticalAlignment.Center]
      287 SETTABLEKS                       R21 R20 K41 ["VerticalAlignment"]
      289 GETIMPORT                        R21 K71 [Enum.HorizontalAlignment.Left]
      291 SETTABLEKS                       R21 R20 K62 ["HorizontalAlignment"]
      293 DUPTABLE                         R21 K79 [{"DisableAllBreakpointButton", "DeleteAllBreakpointButton"}]
      294 GETUPVAL                         R23 5
      295 GETTABLEKS                       R22 R23 K37 ["createElement"]
      297 GETUPVAL                         R23 7
      298 DUPTABLE                         R24 K84 [{"Size", "LayoutOrder", "LeftIcon", "TooltipText", "OnClick", "Disabled"}]
      299 GETIMPORT                        R25 K65 [UDim2.new]
      301 LOADN                            R26 0
      302 GETUPVAL                         R28 4
      303 GETTABLEKS                       R27 R28 K85 ["BUTTON_SIZE"]
      305 LOADN                            R28 0
      306 GETUPVAL                         R30 4
      307 GETTABLEKS                       R29 R30 K85 ["BUTTON_SIZE"]
      309 CALL                             R25 4 1
      310 SETTABLEKS                       R25 R24 K38 ["Size"]
      312 LOADN                            R25 1
      313 SETTABLEKS                       R25 R24 K61 ["LayoutOrder"]
      315 LOADK                            R25 K86 ["rbxasset://textures/Debugger/Breakpoints/disable_all@2x.png"]
      316 SETTABLEKS                       R25 R24 K80 ["LeftIcon"]
      318 SETTABLEKS                       R8 R24 K81 ["TooltipText"]
      320 GETTABLEKS                       R25 R0 K87 ["toggleEnabledAll"]
      322 SETTABLEKS                       R25 R24 K82 ["OnClick"]
      324 GETTABLEKS                       R27 R1 K29 ["Breakpoints"]
      326 LENGTH                           R26 R27
      327 JUMPIFEQKN                       R26 K88 [0] ; [+2]
      329 LOADB                            R25 0 +1
      330 LOADB                            R25 1
      331 SETTABLEKS                       R25 R24 K83 ["Disabled"]
      333 CALL                             R22 2 1
      334 SETTABLEKS                       R22 R21 K77 ["DisableAllBreakpointButton"]
      336 GETUPVAL                         R23 5
      337 GETTABLEKS                       R22 R23 K37 ["createElement"]
      339 GETUPVAL                         R23 7
      340 DUPTABLE                         R24 K84 [{"Size", "LayoutOrder", "LeftIcon", "TooltipText", "OnClick", "Disabled"}]
      341 GETIMPORT                        R25 K65 [UDim2.new]
      343 LOADN                            R26 0
      344 GETUPVAL                         R28 4
      345 GETTABLEKS                       R27 R28 K85 ["BUTTON_SIZE"]
      347 LOADN                            R28 0
      348 GETUPVAL                         R30 4
      349 GETTABLEKS                       R29 R30 K85 ["BUTTON_SIZE"]
      351 CALL                             R25 4 1
      352 SETTABLEKS                       R25 R24 K38 ["Size"]
      354 LOADN                            R25 2
      355 SETTABLEKS                       R25 R24 K61 ["LayoutOrder"]
      357 LOADK                            R25 K89 ["rbxasset://textures/Debugger/Breakpoints/delete_all@2x.png"]
      358 SETTABLEKS                       R25 R24 K80 ["LeftIcon"]
      360 LOADK                            R27 K14 ["BreakpointsWindow"]
      361 LOADK                            R28 K90 ["DeleteAll"]
      362 NAMECALL                         R25 R2 K16 ["getText"]
      364 CALL                             R25 3 1
      365 SETTABLEKS                       R25 R24 K81 ["TooltipText"]
      367 GETTABLEKS                       R25 R0 K91 ["displayDeleteAllBreakpointsPopup"]
      369 SETTABLEKS                       R25 R24 K82 ["OnClick"]
      371 GETTABLEKS                       R27 R1 K29 ["Breakpoints"]
      373 LENGTH                           R26 R27
      374 JUMPIFEQKN                       R26 K88 [0] ; [+2]
      376 LOADB                            R25 0 +1
      377 LOADB                            R25 1
      378 SETTABLEKS                       R25 R24 K83 ["Disabled"]
      380 CALL                             R22 2 1
      381 SETTABLEKS                       R22 R21 K78 ["DeleteAllBreakpointButton"]
      383 CALL                             R18 3 1
      384 SETTABLEKS                       R18 R17 K72 ["ButtonsContainer"]
      386 GETUPVAL                         R19 5
      387 GETTABLEKS                       R18 R19 K37 ["createElement"]
      389 GETUPVAL                         R19 6
      390 DUPTABLE                         R20 K75 [{"Size", "LayoutOrder", "Style", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
      391 GETIMPORT                        R21 K65 [UDim2.new]
      393 LOADK                            R22 K76 [0.5]
      394 LOADN                            R23 0
      395 LOADN                            R24 0
      396 GETUPVAL                         R26 4
      397 GETTABLEKS                       R25 R26 K34 ["HEADER_HEIGHT"]
      399 CALL                             R21 4 1
      400 SETTABLEKS                       R21 R20 K38 ["Size"]
      402 LOADN                            R21 2
      403 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      405 LOADK                            R21 K47 ["Box"]
      406 SETTABLEKS                       R21 R20 K39 ["Style"]
      408 GETIMPORT                        R21 K67 [Enum.FillDirection.Horizontal]
      410 SETTABLEKS                       R21 R20 K40 ["Layout"]
      412 GETIMPORT                        R21 K69 [Enum.VerticalAlignment.Center]
      414 SETTABLEKS                       R21 R20 K41 ["VerticalAlignment"]
      416 GETIMPORT                        R21 K93 [Enum.HorizontalAlignment.Right]
      418 SETTABLEKS                       R21 R20 K62 ["HorizontalAlignment"]
      420 DUPTABLE                         R21 K95 [{"ColumnDropdown"}]
      421 GETUPVAL                         R23 5
      422 GETTABLEKS                       R22 R23 K37 ["createElement"]
      424 GETUPVAL                         R23 8
      425 DUPTABLE                         R24 K97 [{"LayoutOrder", "AutomaticSize"}]
      426 LOADN                            R25 1
      427 SETTABLEKS                       R25 R24 K61 ["LayoutOrder"]
      429 GETIMPORT                        R25 K99 [Enum.AutomaticSize.X]
      431 SETTABLEKS                       R25 R24 K96 ["AutomaticSize"]
      433 CALL                             R22 2 1
      434 SETTABLEKS                       R22 R21 K94 ["ColumnDropdown"]
      436 CALL                             R18 3 1
      437 SETTABLEKS                       R18 R17 K73 ["DropdownContainer"]
      439 CALL                             R14 3 1
      440 SETTABLEKS                       R14 R13 K55 ["HeaderPane"]
      442 GETUPVAL                         R15 5
      443 GETTABLEKS                       R14 R15 K37 ["createElement"]
      445 GETUPVAL                         R15 6
      446 DUPTABLE                         R16 K100 [{"Size", "Style", "LayoutOrder"}]
      447 GETIMPORT                        R17 K65 [UDim2.new]
      449 LOADN                            R18 1
      450 LOADN                            R19 0
      451 LOADN                            R20 1
      452 MINUS                            R21 R9
      453 CALL                             R17 4 1
      454 SETTABLEKS                       R17 R16 K38 ["Size"]
      456 LOADK                            R17 K47 ["Box"]
      457 SETTABLEKS                       R17 R16 K39 ["Style"]
      459 LOADN                            R17 2
      460 SETTABLEKS                       R17 R16 K61 ["LayoutOrder"]
      462 DUPTABLE                         R17 K102 [{"BreakpointsTable"}]
      463 GETUPVAL                         R19 5
      464 GETTABLEKS                       R18 R19 K37 ["createElement"]
      466 GETUPVAL                         R19 9
      467 DUPTABLE                         R20 K127 [{"Size", "Columns", "RootItems", "OnExpansionChange", "RightClick", "CellComponent", "LayoutOrder", "OnSelectionChange", "HighlightedRows", "Scroll", "ScrollFocusIndex", "Expansion", "GetChildren", "TextInputCols", "OnFocusLost", "OnDoubleClick", "SortIndex", "SortOrder", "OnSortChange", "OnColumnSizesChange", "UseDeficit", "UseScale", "ClampSize", "ColumnHeaderHeight", "RowHeight", "ExpandOnDoubleClick"}]
      468 GETIMPORT                        R21 K65 [UDim2.new]
      470 LOADN                            R22 1
      471 LOADN                            R23 0
      472 LOADN                            R24 1
      473 LOADN                            R25 0
      474 CALL                             R21 4 1
      475 SETTABLEKS                       R21 R20 K38 ["Size"]
      477 SETTABLEKS                       R6 R20 K103 ["Columns"]
      479 GETTABLEKS                       R21 R1 K29 ["Breakpoints"]
      481 JUMPIF                           R21 ; [+2]
      482 NEWTABLE                         R21 0 0
      484 SETTABLEKS                       R21 R20 K104 ["RootItems"]
      486 GETTABLEKS                       R21 R0 K128 ["onExpansionChange"]
      488 SETTABLEKS                       R21 R20 K105 ["OnExpansionChange"]
      490 GETTABLEKS                       R21 R0 K129 ["onRightClick"]
      492 SETTABLEKS                       R21 R20 K106 ["RightClick"]
      494 GETUPVAL                         R21 10
      495 SETTABLEKS                       R21 R20 K107 ["CellComponent"]
      497 LOADN                            R21 2
      498 SETTABLEKS                       R21 R20 K61 ["LayoutOrder"]
      500 GETTABLEKS                       R21 R0 K130 ["onSelectionChange"]
      502 SETTABLEKS                       R21 R20 K108 ["OnSelectionChange"]
      504 GETTABLEKS                       R22 R0 K5 ["state"]
      506 GETTABLEKS                       R21 R22 K6 ["selectedBreakpoints"]
      508 SETTABLEKS                       R21 R20 K109 ["HighlightedRows"]
      510 LOADB                            R21 1
      511 SETTABLEKS                       R21 R20 K110 ["Scroll"]
      513 MOVE                             R21 R4
      514 JUMPIFNOT                        R21 ; [+4]
      515 GETTABLEKS                       R22 R0 K0 ["props"]
      517 GETTABLEKS                       R21 R22 K131 ["CurrentBreakpointIndex"]
      519 SETTABLEKS                       R21 R20 K111 ["ScrollFocusIndex"]
      521 SETTABLEKS                       R7 R20 K112 ["Expansion"]
      523 GETTABLEKS                       R21 R0 K132 ["getTreeChildren"]
      525 SETTABLEKS                       R21 R20 K113 ["GetChildren"]
      527 GETTABLEKS                       R21 R1 K114 ["TextInputCols"]
      529 SETTABLEKS                       R21 R20 K114 ["TextInputCols"]
      531 GETTABLEKS                       R21 R0 K115 ["OnFocusLost"]
      533 SETTABLEKS                       R21 R20 K115 ["OnFocusLost"]
      535 GETTABLEKS                       R21 R0 K116 ["OnDoubleClick"]
      537 SETTABLEKS                       R21 R20 K116 ["OnDoubleClick"]
      539 GETTABLEKS                       R21 R1 K117 ["SortIndex"]
      541 SETTABLEKS                       R21 R20 K117 ["SortIndex"]
      543 GETTABLEKS                       R21 R1 K118 ["SortOrder"]
      545 SETTABLEKS                       R21 R20 K118 ["SortOrder"]
      547 GETTABLEKS                       R21 R0 K119 ["OnSortChange"]
      549 SETTABLEKS                       R21 R20 K119 ["OnSortChange"]
      551 GETTABLEKS                       R21 R0 K120 ["OnColumnSizesChange"]
      553 SETTABLEKS                       R21 R20 K120 ["OnColumnSizesChange"]
      555 LOADB                            R21 0
      556 SETTABLEKS                       R21 R20 K121 ["UseDeficit"]
      558 LOADB                            R21 1
      559 SETTABLEKS                       R21 R20 K122 ["UseScale"]
      561 LOADB                            R21 1
      562 SETTABLEKS                       R21 R20 K123 ["ClampSize"]
      564 GETUPVAL                         R22 4
      565 GETTABLEKS                       R21 R22 K133 ["COLUMN_HEADER_HEIGHT"]
      567 SETTABLEKS                       R21 R20 K124 ["ColumnHeaderHeight"]
      569 GETUPVAL                         R22 4
      570 GETTABLEKS                       R21 R22 K134 ["ROW_HEIGHT"]
      572 SETTABLEKS                       R21 R20 K125 ["RowHeight"]
      574 LOADB                            R21 1
      575 SETTABLEKS                       R21 R20 K126 ["ExpandOnDoubleClick"]
      577 CALL                             R18 2 1
      578 SETTABLEKS                       R18 R17 K101 ["BreakpointsTable"]
      580 CALL                             R14 3 1
      581 SETTABLEKS                       R14 R13 K56 ["TablePane"]
      583 GETUPVAL                         R15 5
      584 GETTABLEKS                       R14 R15 K37 ["createElement"]
      586 GETUPVAL                         R15 11
      587 DUPTABLE                         R16 K138 [{"Enabled", "CloseDialog", "DeleteAllBreakpoints"}]
      588 GETTABLEKS                       R18 R0 K5 ["state"]
      590 GETTABLEKS                       R17 R18 K139 ["deleteAllPopup"]
      592 SETTABLEKS                       R17 R16 K135 ["Enabled"]
      594 GETTABLEKS                       R17 R0 K140 ["closeDeleteAllBreakpointsPopup"]
      596 SETTABLEKS                       R17 R16 K136 ["CloseDialog"]
      598 GETTABLEKS                       R17 R0 K141 ["deleteAllBreakpoints"]
      600 SETTABLEKS                       R17 R16 K137 ["DeleteAllBreakpoints"]
      602 CALL                             R14 2 1
      603 SETTABLEKS                       R14 R13 K57 ["DeleteAllDialog"]
      605 CALL                             R10 3 -1
      606 RETURN                           R10 -1

PROTO_32:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 LOADB                            R5 0
        5 GETIMPORT                        R6 K1 [pairs]
        7 GETTABLEKS                       R9 R0 K2 ["Breakpoint"]
        9 GETTABLEKS                       R7 R9 K3 ["MetaBreakpoints"]
       11 CALL                             R6 1 3
       12 FORGPREP_NEXT                    R6
       13 GETUPVAL                         R11 0
       14 MOVE                             R12 R10
       15 CALL                             R11 1 1
       16 GETTABLEKS                       R12 R10 K4 ["scriptName"]
       18 SETTABLEKS                       R12 R11 K5 ["scriptGUID"]
       20 GETTABLEKS                       R14 R0 K6 ["ScriptInfo"]
       22 GETTABLEKS                       R13 R14 K6 ["ScriptInfo"]
       24 GETTABLEKS                       R14 R11 K4 ["scriptName"]
       26 GETTABLE                         R12 R13 R14
       27 SETTABLEKS                       R12 R11 K4 ["scriptName"]
       29 GETTABLEKS                       R14 R0 K6 ["ScriptInfo"]
       31 GETTABLEKS                       R13 R14 K7 ["ScriptLineContents"]
       33 GETTABLEKS                       R14 R11 K5 ["scriptGUID"]
       35 GETTABLE                         R12 R13 R14
       36 JUMPIFNOT                        R12 ; [+10]
       37 GETTABLEKS                       R15 R0 K6 ["ScriptInfo"]
       39 GETTABLEKS                       R14 R15 K7 ["ScriptLineContents"]
       41 GETTABLEKS                       R15 R11 K5 ["scriptGUID"]
       43 GETTABLE                         R13 R14 R15
       44 GETTABLEKS                       R14 R11 K8 ["lineNumber"]
       46 GETTABLE                         R12 R13 R14
       47 SETTABLEKS                       R12 R11 K9 ["scriptLine"]
       49 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
       51 MOVE                             R13 R2
       52 MOVE                             R14 R11
       53 GETIMPORT                        R12 K12 [table.insert]
       55 CALL                             R12 2 0
       56 GETTABLEKS                       R12 R10 K13 ["isEnabled"]
       58 JUMPIFNOTEQKB                    R12 FALSE ; [+2]
       60 LOADB                            R5 1
       61 FORGLOOP                         R6 2 ; [-49]
       63 LOADN                            R6 1
       64 GETIMPORT                        R7 K15 [ipairs]
       66 MOVE                             R8 R2
       67 CALL                             R7 1 3
       68 FORGPREP_INEXT                   R7
       69 GETTABLEKS                       R12 R11 K16 ["id"]
       71 GETTABLEKS                       R14 R0 K17 ["Common"]
       73 GETTABLEKS                       R13 R14 K18 ["currentBreakpointId"]
       75 JUMPIFNOTEQ                      R12 R13 ; [+3]
       77 MOVE                             R3 R11
       78 MOVE                             R4 R6
       79 ADDK                             R6 R6 K19 [1]
       80 NEWTABLE                         R12 0 0
       82 SETTABLEKS                       R12 R11 K20 ["children"]
       84 GETIMPORT                        R12 K1 [pairs]
       86 GETTABLEKS                       R13 R11 K21 ["contextBreakpoints"]
       88 CALL                             R12 1 3
       89 FORGPREP_NEXT                    R12
       90 GETIMPORT                        R17 K15 [ipairs]
       92 GETTABLEKS                       R18 R16 K22 ["breakpoints"]
       94 CALL                             R17 1 3
       95 FORGPREP_INEXT                   R17
       96 GETUPVAL                         R23 1
       97 GETTABLEKS                       R22 R23 K23 ["extractNonChildData"]
       99 MOVE                             R23 R11
      100 MOVE                             R24 R15
      101 GETTABLEKS                       R25 R21 K24 ["Script"]
      103 CALL                             R22 3 1
      104 GETTABLEKS                       R23 R16 K25 ["connectionId"]
      106 SETTABLEKS                       R23 R22 K26 ["hiddenConnectionId"]
      108 GETTABLEKS                       R23 R22 K8 ["lineNumber"]
      110 SETTABLEKS                       R23 R22 K27 ["hiddenLineNumber"]
      112 LOADK                            R23 K28 [""]
      113 SETTABLEKS                       R23 R22 K8 ["lineNumber"]
      115 GETTABLEKS                       R23 R21 K29 ["Enabled"]
      117 SETTABLEKS                       R23 R22 K13 ["isEnabled"]
      119 GETTABLEKS                       R23 R21 K30 ["Valid"]
      121 SETTABLEKS                       R23 R22 K31 ["isValid"]
      123 DUPTABLE                         R23 K34 [{"Value", "LeftIcon"}]
      124 GETTABLEKS                       R26 R0 K6 ["ScriptInfo"]
      126 GETTABLEKS                       R25 R26 K6 ["ScriptInfo"]
      128 GETTABLEKS                       R26 R21 K24 ["Script"]
      130 GETTABLE                         R24 R25 R26
      131 SETTABLEKS                       R24 R23 K32 ["Value"]
      133 DUPTABLE                         R24 K37 [{"Image", "Size"}]
      134 GETUPVAL                         R28 2
      135 GETTABLEKS                       R27 R28 K38 ["GameStateTypes"]
      137 GETTABLEKS                       R26 R27 K39 ["Client"]
      139 JUMPIFNOTEQ                      R15 R26 ; [+7]
      141 GETUPVAL                         R27 2
      142 GETTABLEKS                       R26 R27 K40 ["DebugpointIconTable"]
      144 GETTABLEKS                       R25 R26 K41 ["client"]
      146 JUMP                             ; [+14]
      147 GETUPVAL                         R28 2
      148 GETTABLEKS                       R27 R28 K38 ["GameStateTypes"]
      150 GETTABLEKS                       R26 R27 K42 ["Server"]
      152 JUMPIFNOTEQ                      R15 R26 ; [+7]
      154 GETUPVAL                         R27 2
      155 GETTABLEKS                       R26 R27 K40 ["DebugpointIconTable"]
      157 GETTABLEKS                       R25 R26 K43 ["server"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R25
      161 SETTABLEKS                       R25 R24 K35 ["Image"]
      163 GETIMPORT                        R25 K46 [UDim2.new]
      165 LOADN                            R26 0
      166 GETUPVAL                         R28 2
      167 GETTABLEKS                       R27 R28 K47 ["ICON_SIZE"]
      169 LOADN                            R28 0
      170 GETUPVAL                         R30 2
      171 GETTABLEKS                       R29 R30 K47 ["ICON_SIZE"]
      173 CALL                             R25 4 1
      174 SETTABLEKS                       R25 R24 K36 ["Size"]
      176 SETTABLEKS                       R24 R23 K33 ["LeftIcon"]
      178 SETTABLEKS                       R23 R22 K4 ["scriptName"]
      180 GETTABLEKS                       R24 R11 K20 ["children"]
      182 FASTCALL2                        TABLE_INSERT R24 R22 ; [+4]
      184 MOVE                             R25 R22
      185 GETIMPORT                        R23 K12 [table.insert]
      187 CALL                             R23 2 0
      188 FORGLOOP                         R17 2 [inext] ; [-93]
      190 FORGLOOP                         R12 2 ; [-101]
      192 FORGLOOP                         R7 2 [inext] ; [-124]
      194 NEWTABLE                         R7 0 0
      196 NEWTABLE                         R8 0 0
      198 GETIMPORT                        R9 K15 [ipairs]
      200 GETUPVAL                         R10 3
      201 CALL                             R9 1 3
      202 FORGPREP_INEXT                   R9
      203 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      205 MOVE                             R15 R7
      206 MOVE                             R16 R13
      207 GETIMPORT                        R14 K12 [table.insert]
      209 CALL                             R14 2 0
      210 FORGLOOP                         R9 2 [inext] ; [-8]
      212 GETIMPORT                        R9 K15 [ipairs]
      214 GETTABLEKS                       R12 R0 K2 ["Breakpoint"]
      216 GETTABLEKS                       R10 R12 K48 ["listOfEnabledColumns"]
      218 CALL                             R9 1 3
      219 FORGPREP_INEXT                   R9
      220 GETUPVAL                         R17 4
      221 GETTABLE                         R16 R17 R13
      222 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
      224 MOVE                             R15 R7
      225 GETIMPORT                        R14 K12 [table.insert]
      227 CALL                             R14 2 0
      228 JUMPIFEQKS                       R13 K49 ["ConditionColumn"] ; [+3]
      230 JUMPIFNOTEQKS                    R13 K50 ["LogMessageColumn"] ; [+6]
      232 GETUPVAL                         R16 3
      233 LENGTH                           R15 R16
      234 ADD                              R14 R12 R15
      235 LOADB                            R15 1
      236 SETTABLE                         R15 R8 R14
      237 FORGLOOP                         R9 2 [inext] ; [-18]
      239 GETUPVAL                         R10 5
      240 GETTABLEKS                       R9 R10 K51 ["sortTableByColumnAndOrder"]
      242 MOVE                             R10 R2
      243 GETTABLEKS                       R12 R0 K2 ["Breakpoint"]
      245 GETTABLEKS                       R11 R12 K52 ["ColumnIndex"]
      247 GETTABLEKS                       R13 R0 K2 ["Breakpoint"]
      249 GETTABLEKS                       R12 R13 K53 ["SortDirection"]
      251 MOVE                             R13 R7
      252 LOADB                            R14 0
      253 NEWTABLE                         R15 0 2
      255 LOADK                            R16 K5 ["scriptGUID"]
      256 LOADK                            R17 K8 ["lineNumber"]
      257 SETLIST                          R15 R16 2 [1]
      259 CALL                             R9 6 0
      260 DUPTABLE                         R9 K65 [{"Breakpoints", "IsPaused", "CurrentBreakpoint", "CurrentBreakpointIndex", "CurrentDebuggerConnectionId", "SortIndex", "SortOrder", "hasDisabledBreakpoints", "ColumnFilter", "TextInputCols", "CurrentKeys"}]
      261 SETTABLEKS                       R2 R9 K54 ["Breakpoints"]
      263 GETTABLEKS                       R11 R0 K17 ["Common"]
      265 GETTABLEKS                       R10 R11 K66 ["isPaused"]
      267 SETTABLEKS                       R10 R9 K55 ["IsPaused"]
      269 SETTABLEKS                       R3 R9 K56 ["CurrentBreakpoint"]
      271 SETTABLEKS                       R4 R9 K57 ["CurrentBreakpointIndex"]
      273 GETTABLEKS                       R11 R0 K17 ["Common"]
      275 GETTABLEKS                       R10 R11 K67 ["currentDebuggerConnectionId"]
      277 SETTABLEKS                       R10 R9 K58 ["CurrentDebuggerConnectionId"]
      279 GETTABLEKS                       R11 R0 K2 ["Breakpoint"]
      281 GETTABLEKS                       R10 R11 K52 ["ColumnIndex"]
      283 SETTABLEKS                       R10 R9 K59 ["SortIndex"]
      285 GETTABLEKS                       R11 R0 K2 ["Breakpoint"]
      287 GETTABLEKS                       R10 R11 K53 ["SortDirection"]
      289 SETTABLEKS                       R10 R9 K60 ["SortOrder"]
      291 SETTABLEKS                       R5 R9 K61 ["hasDisabledBreakpoints"]
      293 GETTABLEKS                       R11 R0 K2 ["Breakpoint"]
      295 GETTABLEKS                       R10 R11 K48 ["listOfEnabledColumns"]
      297 SETTABLEKS                       R10 R9 K62 ["ColumnFilter"]
      299 SETTABLEKS                       R8 R9 K63 ["TextInputCols"]
      301 SETTABLEKS                       R7 R9 K64 ["CurrentKeys"]
      303 RETURN                           R9 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_36:
        0 DUPTABLE                         R1 K3 [{"onToggleEnabledAll", "onSetBreakpointSortState", "onColumnFilterChange"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onToggleEnabledAll"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["onSetBreakpointSortState"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["onColumnFilterChange"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R6 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R6 K9 ["Cryo"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R3 K10 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K11 ["Analytics"]
       43 GETTABLEKS                       R7 R5 K12 ["Plugin"]
       45 GETTABLEKS                       R8 R5 K13 ["Localization"]
       47 GETTABLEKS                       R10 R3 K14 ["Style"]
       49 GETTABLEKS                       R9 R10 K15 ["Stylizer"]
       51 GETTABLEKS                       R10 R3 K16 ["Dash"]
       53 GETTABLEKS                       R11 R10 K17 ["map"]
       55 GETTABLEKS                       R12 R10 K18 ["join"]
       57 GETTABLEKS                       R13 R3 K19 ["Util"]
       59 GETTABLEKS                       R14 R13 K20 ["deepCopy"]
       61 GETTABLEKS                       R15 R3 K21 ["UI"]
       63 GETTABLEKS                       R16 R15 K22 ["IconButton"]
       65 GETTABLEKS                       R17 R15 K23 ["Pane"]
       67 GETTABLEKS                       R18 R15 K24 ["TreeTable"]
       69 GETTABLEKS                       R19 R15 K25 ["showContextMenu"]
       71 GETIMPORT                        R20 K4 [require]
       73 GETTABLEKS                       R23 R0 K26 ["Src"]
       75 GETTABLEKS                       R22 R23 K27 ["Models"]
       77 GETTABLEKS                       R21 R22 K28 ["BreakpointRow"]
       79 CALL                             R20 1 1
       80 GETIMPORT                        R21 K4 [require]
       82 GETTABLEKS                       R24 R0 K26 ["Src"]
       84 GETTABLEKS                       R23 R24 K19 ["Util"]
       86 GETTABLEKS                       R22 R23 K29 ["Constants"]
       88 CALL                             R21 1 1
       89 GETIMPORT                        R22 K4 [require]
       91 GETTABLEKS                       R26 R0 K26 ["Src"]
       93 GETTABLEKS                       R25 R26 K30 ["Components"]
       95 GETTABLEKS                       R24 R25 K31 ["Breakpoints"]
       97 GETTABLEKS                       R23 R24 K32 ["BreakpointsTreeTableCell"]
       99 CALL                             R22 1 1
      100 GETTABLEKS                       R23 R1 K33 ["PureComponent"]
      102 LOADK                            R25 K34 ["BreakpointsTable"]
      103 NAMECALL                         R23 R23 K35 ["extend"]
      105 CALL                             R23 2 1
      106 GETTABLEKS                       R25 R0 K26 ["Src"]
      108 GETTABLEKS                       R24 R25 K19 ["Util"]
      110 GETIMPORT                        R25 K4 [require]
      112 GETTABLEKS                       R26 R24 K36 ["BreakpointHelperFunctions"]
      114 CALL                             R25 1 1
      115 GETIMPORT                        R26 K4 [require]
      117 GETTABLEKS                       R27 R24 K37 ["WatchHelperFunctions"]
      119 CALL                             R26 1 1
      120 GETIMPORT                        R27 K4 [require]
      122 GETTABLEKS                       R28 R24 K38 ["ColumnResizeHelperFunctions"]
      124 CALL                             R27 1 1
      125 GETIMPORT                        R28 K4 [require]
      127 GETTABLEKS                       R31 R0 K26 ["Src"]
      129 GETTABLEKS                       R30 R31 K39 ["Resources"]
      131 GETTABLEKS                       R29 R30 K40 ["AnalyticsEventNames"]
      133 CALL                             R28 1 1
      134 GETTABLEKS                       R30 R0 K26 ["Src"]
      136 GETTABLEKS                       R29 R30 K41 ["Thunks"]
      138 GETIMPORT                        R30 K4 [require]
      140 GETTABLEKS                       R32 R29 K31 ["Breakpoints"]
      142 GETTABLEKS                       R31 R32 K42 ["ToggleAllBreakpoints"]
      144 CALL                             R30 1 1
      145 GETTABLEKS                       R32 R0 K26 ["Src"]
      147 GETTABLEKS                       R31 R32 K43 ["Actions"]
      149 GETIMPORT                        R32 K4 [require]
      151 GETTABLEKS                       R34 R31 K44 ["BreakpointsWindow"]
      153 GETTABLEKS                       R33 R34 K45 ["SetBreakpointSortState"]
      155 CALL                             R32 1 1
      156 GETIMPORT                        R33 K4 [require]
      158 GETTABLEKS                       R35 R31 K44 ["BreakpointsWindow"]
      160 GETTABLEKS                       R34 R35 K46 ["BreakpointColumnFilter"]
      162 CALL                             R33 1 1
      163 GETIMPORT                        R34 K4 [require]
      165 GETIMPORT                        R37 K1 [script]
      167 GETTABLEKS                       R36 R37 K2 ["Parent"]
      169 GETTABLEKS                       R35 R36 K47 ["BreakpointsDropdownField"]
      171 CALL                             R34 1 1
      172 GETIMPORT                        R35 K4 [require]
      174 GETIMPORT                        R38 K1 [script]
      176 GETTABLEKS                       R37 R38 K2 ["Parent"]
      178 GETTABLEKS                       R36 R37 K48 ["DeleteAllBreakpointsDialog"]
      180 CALL                             R35 1 1
      181 GETIMPORT                        R36 K4 [require]
      183 GETTABLEKS                       R37 R24 K49 ["MakePluginActions"]
      185 CALL                             R36 1 1
      186 NEWTABLE                         R37 0 3
      188 LOADK                            R38 K50 ["isEnabled"]
      189 SETTABLEN                        R38 R37 1
      190 LOADK                            R38 K51 ["scriptName"]
      191 SETTABLEN                        R38 R37 2
      192 LOADK                            R38 K52 ["lineNumber"]
      193 SETTABLEN                        R38 R37 3
      194 DUPTABLE                         R38 K58 [{"SourceLineColumn", "ConditionColumn", "LogMessageColumn", "ContinueExecutionColumn", "RemoveOnHitColumn"}]
      195 LOADK                            R39 K59 ["scriptLine"]
      196 SETTABLEKS                       R39 R38 K53 ["SourceLineColumn"]
      198 LOADK                            R39 K60 ["condition"]
      199 SETTABLEKS                       R39 R38 K54 ["ConditionColumn"]
      201 LOADK                            R39 K61 ["logMessage"]
      202 SETTABLEKS                       R39 R38 K55 ["LogMessageColumn"]
      204 LOADK                            R39 K62 ["continueExecution"]
      205 SETTABLEKS                       R39 R38 K56 ["ContinueExecutionColumn"]
      207 LOADK                            R39 K63 ["removeOnHit"]
      208 SETTABLEKS                       R39 R38 K57 ["RemoveOnHitColumn"]
      210 DUPCLOSURE                       R39 K64 [PROTO_0]
      211 CAPTURE                          VAL R21
      212 DUPCLOSURE                       R40 K65 [PROTO_21]
      213 CAPTURE                          VAL R37
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R28
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R36
      218 CAPTURE                          VAL R19
      219 CAPTURE                          VAL R4
      220 SETTABLEKS                       R40 R23 K66 ["init"]
      222 DUPCLOSURE                       R40 K67 [PROTO_24]
      223 CAPTURE                          VAL R21
      224 CAPTURE                          VAL R27
      225 SETTABLEKS                       R40 R23 K68 ["didMount"]
      227 DUPCLOSURE                       R40 K69 [PROTO_25]
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R27
      230 SETTABLEKS                       R40 R23 K70 ["willUnmount"]
      232 DUPCLOSURE                       R40 K71 [PROTO_29]
      233 CAPTURE                          VAL R37
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R27
      236 SETTABLEKS                       R40 R23 K72 ["didUpdate"]
      238 DUPCLOSURE                       R40 K73 [PROTO_31]
      239 CAPTURE                          VAL R37
      240 CAPTURE                          VAL R38
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R21
      244 CAPTURE                          VAL R1
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R16
      247 CAPTURE                          VAL R34
      248 CAPTURE                          VAL R18
      249 CAPTURE                          VAL R22
      250 CAPTURE                          VAL R35
      251 SETTABLEKS                       R40 R23 K74 ["render"]
      253 GETTABLEKS                       R40 R5 K75 ["withContext"]
      255 DUPTABLE                         R41 K76 [{"Analytics", "Localization", "Stylizer", "Plugin"}]
      256 SETTABLEKS                       R6 R41 K11 ["Analytics"]
      258 SETTABLEKS                       R8 R41 K13 ["Localization"]
      260 SETTABLEKS                       R9 R41 K15 ["Stylizer"]
      262 SETTABLEKS                       R7 R41 K12 ["Plugin"]
      264 CALL                             R40 1 1
      265 MOVE                             R41 R23
      266 CALL                             R40 1 1
      267 MOVE                             R23 R40
      268 GETTABLEKS                       R40 R2 K77 ["connect"]
      270 DUPCLOSURE                       R41 K78 [PROTO_32]
      271 CAPTURE                          VAL R14
      272 CAPTURE                          VAL R20
      273 CAPTURE                          VAL R21
      274 CAPTURE                          VAL R37
      275 CAPTURE                          VAL R38
      276 CAPTURE                          VAL R26
      277 DUPCLOSURE                       R42 K79 [PROTO_36]
      278 CAPTURE                          VAL R30
      279 CAPTURE                          VAL R32
      280 CAPTURE                          VAL R33
      281 CALL                             R40 2 1
      282 MOVE                             R41 R23
      283 CALL                             R40 1 1
      284 MOVE                             R23 R40
      285 RETURN                           R23 1
