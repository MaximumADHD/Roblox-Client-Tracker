PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GameStateTypes"]
        3 GETTABLEKS                       R1 R1 K1 ["Client"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["DebugpointIconTable"]
       10 GETTABLEKS                       R1 R1 K3 ["client"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["GameStateTypes"]
       16 GETTABLEKS                       R1 R1 K4 ["Server"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+7]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K2 ["DebugpointIconTable"]
       23 GETTABLEKS                       R1 R1 K5 ["server"]
       25 RETURN                           R1 1
       26 LOADNIL                          R1
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["goToScript"]
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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["BreakpointActions"]
        7 GETTABLEKS                       R3 R3 K3 ["DeleteBreakpoint"]
        9 JUMPIFEQ                         R1 R3 ; [+8]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["LogpointActions"]
       14 GETTABLEKS                       R3 R3 K5 ["DeleteLogpoint"]
       16 JUMPIFNOTEQ                      R1 R3 ; [+27]
       18 GETIMPORT                        R3 K7 [game]
       20 LOADK                            R5 K8 ["MetaBreakpointManager"]
       21 NAMECALL                         R3 R3 K9 ["GetService"]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R6 R2 K10 ["item"]
       26 GETTABLEKS                       R6 R6 K11 ["id"]
       28 NAMECALL                         R4 R3 K12 ["RemoveBreakpointById"]
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K13 ["props"]
       34 GETTABLEKS                       R4 R4 K14 ["Analytics"]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K15 ["RemoveMetaBreakpoint"]
       39 LOADK                            R7 K16 ["LuaBreakpointsTable.ContextMenu"]
       40 NAMECALL                         R4 R4 K17 ["report"]
       42 CALL                             R4 3 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K2 ["BreakpointActions"]
       47 GETTABLEKS                       R3 R3 K18 ["EditBreakpoint"]
       49 JUMPIFEQ                         R1 R3 ; [+8]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K4 ["LogpointActions"]
       54 GETTABLEKS                       R3 R3 K19 ["EditLogpoint"]
       56 JUMPIFNOTEQ                      R1 R3 ; [+15]
       58 GETIMPORT                        R3 K7 [game]
       60 LOADK                            R5 K20 ["DebuggerUIService"]
       61 NAMECALL                         R3 R3 K9 ["GetService"]
       63 CALL                             R3 2 1
       64 GETTABLEKS                       R6 R2 K10 ["item"]
       66 GETTABLEKS                       R6 R6 K11 ["id"]
       68 NAMECALL                         R4 R3 K18 ["EditBreakpoint"]
       70 CALL                             R4 2 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K2 ["BreakpointActions"]
       75 GETTABLEKS                       R3 R3 K21 ["EnableBreakpoint"]
       77 JUMPIFEQ                         R1 R3 ; [+22]
       79 GETUPVAL                         R3 0
       80 GETTABLEKS                       R3 R3 K4 ["LogpointActions"]
       82 GETTABLEKS                       R3 R3 K22 ["EnableLogpoint"]
       84 JUMPIFEQ                         R1 R3 ; [+15]
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K2 ["BreakpointActions"]
       89 GETTABLEKS                       R3 R3 K23 ["DisableBreakpoint"]
       91 JUMPIFEQ                         R1 R3 ; [+8]
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K4 ["LogpointActions"]
       96 GETTABLEKS                       R3 R3 K24 ["DisableLogpoint"]
       98 JUMPIFNOTEQ                      R1 R3 ; [+32]
      100 GETIMPORT                        R3 K7 [game]
      102 LOADK                            R5 K8 ["MetaBreakpointManager"]
      103 NAMECALL                         R3 R3 K9 ["GetService"]
      105 CALL                             R3 2 1
      106 GETTABLEKS                       R6 R2 K10 ["item"]
      108 GETTABLEKS                       R6 R6 K11 ["id"]
      110 NAMECALL                         R4 R3 K25 ["GetBreakpointById"]
      112 CALL                             R4 2 1
      113 GETUPVAL                         R5 3
      114 GETTABLEKS                       R5 R5 K26 ["setBreakpointRowEnabled"]
      116 MOVE                             R6 R4
      117 MOVE                             R7 R2
      118 GETUPVAL                         R8 1
      119 GETTABLEKS                       R8 R8 K13 ["props"]
      121 GETTABLEKS                       R8 R8 K14 ["Analytics"]
      123 LOADK                            R9 K16 ["LuaBreakpointsTable.ContextMenu"]
      124 GETUPVAL                         R10 1
      125 GETTABLEKS                       R10 R10 K13 ["props"]
      127 GETTABLEKS                       R10 R10 K27 ["CurrentDebuggerConnectionId"]
      129 CALL                             R5 5 0
      130 RETURN                           R0 0
      131 GETUPVAL                         R3 0
      132 GETTABLEKS                       R3 R3 K28 ["CommonActions"]
      134 GETTABLEKS                       R3 R3 K29 ["GoToScript"]
      136 JUMPIFNOTEQ                      R1 R3 ; [+5]
      138 GETUPVAL                         R3 1
      139 GETTABLEKS                       R3 R3 K30 ["goToScript"]
      141 CALL                             R3 0 0
      142 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
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
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K2 ["item"]
        6 SETLIST                          R2 R3 1 [1]
        8 SETTABLEKS                       R2 R1 K0 ["selectedBreakpoints"]
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["props"]
        9 GETTABLEKS                       R2 R1 K2 ["Localization"]
       11 GETTABLEKS                       R3 R1 K3 ["Plugin"]
       13 NAMECALL                         R3 R3 K4 ["get"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R5 R0 K5 ["item"]
       18 GETTABLEKS                       R5 R5 K6 ["debugpointType"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K7 ["DebugpointType"]
       23 GETTABLEKS                       R6 R6 K8 ["Logpoint"]
       25 JUMPIFEQ                         R5 R6 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K9 ["getBreakpointActions"]
       32 MOVE                             R6 R2
       33 GETTABLEKS                       R7 R0 K5 ["item"]
       35 GETTABLEKS                       R7 R7 K10 ["isEnabled"]
       37 MOVE                             R8 R4
       38 MOVE                             R9 R0
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K11 ["onMenuActionSelected"]
       42 CALL                             R5 5 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K12 ["getBreakpointActionsOrder"]
       46 GETTABLEKS                       R7 R0 K5 ["item"]
       48 GETTABLEKS                       R7 R7 K10 ["isEnabled"]
       50 MOVE                             R8 R4
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 3
       53 MOVE                             R8 R3
       54 MOVE                             R9 R5
       55 MOVE                             R10 R6
       56 CALL                             R7 3 0
       57 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_10]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

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
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K6 ["props"]
       11 GETTABLEKS                       R2 R2 K7 ["Breakpoints"]
       13 CALL                             R1 1 3
       14 FORGPREP_INEXT                   R1
       15 GETTABLEKS                       R8 R5 K8 ["id"]
       17 NAMECALL                         R6 R0 K9 ["RemoveBreakpointById"]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 [inext] ; [-6]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K6 ["props"]
       25 GETTABLEKS                       R1 R1 K10 ["Analytics"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K11 ["RemoveAllMetaBreakpoints"]
       30 LOADK                            R4 K12 ["LuaBreakpointsTable"]
       31 NAMECALL                         R1 R1 K13 ["report"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["MetaBreakpointManager"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["props"]
        9 GETTABLEKS                       R1 R1 K5 ["hasDisabledBreakpoints"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["props"]
       14 GETTABLEKS                       R2 R2 K6 ["onToggleEnabledAll"]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 JUMPIFNOT                        R1 ; [+13]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K4 ["props"]
       23 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K8 ["EnableAllMetaBreakpoints"]
       28 LOADK                            R5 K9 ["LuaBreakpointsTable"]
       29 NAMECALL                         R2 R2 K10 ["report"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K4 ["props"]
       36 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K11 ["DisableAllMetaBreakpoints"]
       41 LOADK                            R5 K9 ["LuaBreakpointsTable"]
       42 NAMECALL                         R2 R2 K10 ["report"]
       44 CALL                             R2 3 0
       45 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["selectedBreakpoints"]
        5 LENGTH                           R0 R1
        6 JUMPIFEQKN                       R0 K2 [0] ; [+40]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["state"]
       11 GETTABLEKS                       R1 R1 K1 ["selectedBreakpoints"]
       13 GETTABLEN                        R0 R1 1
       14 GETIMPORT                        R1 K4 [game]
       16 LOADK                            R3 K5 ["DebuggerUIService"]
       17 NAMECALL                         R1 R1 K6 ["GetService"]
       19 CALL                             R1 2 1
       20 GETTABLEKS                       R3 R0 K7 ["hiddenConnectionId"]
       22 JUMPIFNOT                        R3 ; [+3]
       23 GETTABLEKS                       R2 R0 K7 ["hiddenConnectionId"]
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["props"]
       29 GETTABLEKS                       R2 R2 K9 ["CurrentDebuggerConnectionId"]
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
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["Dictionary"]
       16 GETTABLEKS                       R3 R3 K6 ["join"]
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
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K7 ["props"]
       19 GETTABLEKS                       R9 R9 K8 ["CurrentKeys"]
       21 GETTABLE                         R8 R9 R3
       22 JUMPIFNOTEQKS                    R8 K9 ["condition"] ; [+22]
       24 GETTABLEKS                       R8 R1 K10 ["Text"]
       26 GETTABLEKS                       R9 R7 K11 ["Condition"]
       28 JUMPIFEQ                         R8 R9 ; [+44]
       30 SETTABLEKS                       R8 R7 K11 ["Condition"]
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K7 ["props"]
       35 GETTABLEKS                       R9 R9 K12 ["Analytics"]
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R11 R11 K13 ["MetaBreakpointConditionChanged"]
       40 LOADK                            R12 K14 ["LuaBreakpointsTable"]
       41 NAMECALL                         R9 R9 K15 ["report"]
       43 CALL                             R9 3 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K7 ["props"]
       48 GETTABLEKS                       R9 R9 K8 ["CurrentKeys"]
       50 GETTABLE                         R8 R9 R3
       51 JUMPIFNOTEQKS                    R8 K16 ["logMessage"] ; [+21]
       53 GETTABLEKS                       R8 R1 K10 ["Text"]
       55 GETTABLEKS                       R9 R7 K17 ["LogMessage"]
       57 JUMPIFEQ                         R8 R9 ; [+15]
       59 SETTABLEKS                       R8 R7 K17 ["LogMessage"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K7 ["props"]
       64 GETTABLEKS                       R9 R9 K12 ["Analytics"]
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R11 R11 K18 ["MetaBreakpointLogMessageChanged"]
       69 LOADK                            R12 K14 ["LuaBreakpointsTable"]
       70 NAMECALL                         R9 R9 K15 ["report"]
       72 CALL                             R9 3 0
       73 RETURN                           R0 0

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R4 0
        3 LENGTH                           R3 R4
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R5 R5 K1 ["ColumnFilter"]
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
       20 DIVRK                            R9 K2 [2] R10
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
       34 DIVRK                            R9 K6 [0.5] R10
       35 LOADN                            R10 0
       36 CALL                             R8 2 -1
       37 FASTCALL                         TABLE_INSERT ; [+2]
       38 GETIMPORT                        R6 K9 [table.insert]
       40 CALL                             R6 -1 0
       41 JUMP                             ; [+11]
       42 MOVE                             R7 R1
       43 GETIMPORT                        R8 K5 [UDim.new]
       45 ADDK                             R10 R2 K6 [0.5]
       46 DIVRK                            R9 K11 [1] R10
       47 LOADN                            R10 0
       48 CALL                             R8 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R6 K9 [table.insert]
       52 CALL                             R6 -1 0
       53 FORNLOOP                         R3
       54 DUPTABLE                         R3 K17 [{["selectedBreakpoints"], ["breakpointIdToExpansionState"], ["sizes"], ["deleteAllPopup"] = False}]
       55 NEWTABLE                         R4 0 0
       57 SETTABLEKS                       R4 R3 K12 ["selectedBreakpoints"]
       59 NEWTABLE                         R4 0 0
       61 SETTABLEKS                       R4 R3 K13 ["breakpointIdToExpansionState"]
       63 SETTABLEKS                       R1 R3 K14 ["sizes"]
       65 SETTABLEKS                       R3 R0 K18 ["state"]
       67 NEWCLOSURE                       R3 P0
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R3 R0 K19 ["OnDoubleClick"]
       71 NEWCLOSURE                       R3 P1
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R3 R0 K20 ["OnColumnSizesChange"]
       75 NEWCLOSURE                       R3 P2
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R3 R0 K21 ["onSelectionChange"]
       79 NEWCLOSURE                       R3 P3
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          UPVAL U3
       84 SETTABLEKS                       R3 R0 K22 ["onMenuActionSelected"]
       86 NEWCLOSURE                       R3 P4
       87 CAPTURE                          VAL R0
       88 SETTABLEKS                       R3 R0 K23 ["OnSortChange"]
       90 NEWCLOSURE                       R3 P5
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U1
       93 CAPTURE                          UPVAL U4
       94 CAPTURE                          UPVAL U5
       95 SETTABLEKS                       R3 R0 K24 ["onRightClick"]
       97 NEWCLOSURE                       R3 P6
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R3 R0 K25 ["displayDeleteAllBreakpointsPopup"]
      101 NEWCLOSURE                       R3 P7
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R3 R0 K26 ["closeDeleteAllBreakpointsPopup"]
      105 NEWCLOSURE                       R3 P8
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U2
      108 SETTABLEKS                       R3 R0 K27 ["deleteAllBreakpoints"]
      110 NEWCLOSURE                       R3 P9
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U2
      113 SETTABLEKS                       R3 R0 K28 ["toggleEnabledAll"]
      115 NEWCLOSURE                       R3 P10
      116 CAPTURE                          VAL R0
      117 SETTABLEKS                       R3 R0 K29 ["goToScript"]
      119 NEWCLOSURE                       R3 P11
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U6
      122 SETTABLEKS                       R3 R0 K30 ["onExpansionChange"]
      124 DUPCLOSURE                       R3 K31 [PROTO_19]
      125 SETTABLEKS                       R3 R0 K32 ["getTreeChildren"]
      127 NEWCLOSURE                       R3 P13
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U2
      130 SETTABLEKS                       R3 R0 K33 ["OnFocusLost"]
      132 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["fetchSizesFromColumnScales"]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K3 ["ColumnSize"]
        8 GETTABLE                         R3 R4 R5
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K0 ["sizes"]
       12 RETURN                           R1 1

PROTO_23:
        0 DUPTABLE                         R1 K1 [{"selectedBreakpoints"}]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K2 ["props"]
        6 GETTABLEKS                       R3 R3 K3 ["CurrentBreakpoint"]
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
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["ColumnSize"]
       15 GETTABLE                         R4 R3 R5
       16 JUMPIFNOT                        R4 ; [+19]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K6 ["ColumnFilter"]
       20 GETTABLE                         R4 R3 R5
       21 JUMPIFNOT                        R4 ; [+14]
       22 GETTABLEKS                       R4 R1 K7 ["onColumnFilterChange"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K6 ["ColumnFilter"]
       27 GETTABLE                         R5 R3 R6
       28 CALL                             R4 1 0
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U0
       33 NAMECALL                         R4 R0 K8 ["setState"]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R4 R0 K0 ["props"]
       38 GETTABLEKS                       R4 R4 K9 ["IsPaused"]
       40 JUMPIFNOT                        R4 ; [+10]
       41 GETTABLEKS                       R4 R0 K0 ["props"]
       43 GETTABLEKS                       R4 R4 K10 ["CurrentBreakpoint"]
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
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["ColumnFilter"]
       12 GETTABLEKS                       R5 R1 K3 ["ColumnFilter"]
       14 SETTABLE                         R5 R3 R4
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["ColumnSize"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K5 ["fetchScaleFromColumnSizes"]
       21 GETTABLEKS                       R6 R0 K6 ["state"]
       23 GETTABLEKS                       R6 R6 K7 ["sizes"]
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
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K2 ["props"]
        6 GETTABLEKS                       R3 R3 K3 ["CurrentBreakpoint"]
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
       16 GETTABLEKS                       R5 R0 K2 ["state"]
       18 GETTABLEKS                       R5 R5 K3 ["sizes"]
       20 LENGTH                           R4 R5
       21 JUMPIFEQ                         R4 R3 ; [+71]
       23 NEWTABLE                         R4 0 0
       25 GETTABLEKS                       R7 R1 K1 ["ColumnFilter"]
       27 LENGTH                           R6 R7
       28 GETUPVAL                         R8 0
       29 LENGTH                           R7 R8
       30 ADD                              R5 R6 R7
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K4 ["List"]
       34 GETTABLEKS                       R6 R6 K5 ["toSet"]
       36 GETTABLEKS                       R7 R2 K1 ["ColumnFilter"]
       38 CALL                             R6 1 1
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K6 ["fetchOldColumnSizes"]
       42 MOVE                             R8 R5
       43 GETTABLEKS                       R9 R1 K1 ["ColumnFilter"]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R11 R0 K2 ["state"]
       48 GETTABLEKS                       R11 R11 K3 ["sizes"]
       50 CALL                             R7 4 1
       51 JUMPIFNOTLT                      R3 R5 ; [+24]
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K7 ["fetchDeletedColumnsSize"]
       56 GETUPVAL                         R10 0
       57 LENGTH                           R9 R10
       58 MOVE                             R10 R5
       59 GETTABLEKS                       R11 R1 K1 ["ColumnFilter"]
       61 MOVE                             R12 R7
       62 MOVE                             R13 R6
       63 CALL                             R8 5 1
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K8 ["updatedSizesAfterRemovingColumns"]
       67 MOVE                             R10 R3
       68 MOVE                             R11 R8
       69 MOVE                             R12 R7
       70 GETUPVAL                         R13 0
       71 GETTABLEKS                       R14 R2 K1 ["ColumnFilter"]
       73 CALL                             R9 5 1
       74 MOVE                             R4 R9
       75 JUMP                             ; [+11]
       76 GETUPVAL                         R8 2
       77 GETTABLEKS                       R8 R8 K9 ["updatedSizesAfterAddingColumns"]
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
       93 GETTABLEKS                       R4 R0 K0 ["props"]
       95 GETTABLEKS                       R4 R4 K11 ["IsPaused"]
       97 GETTABLEKS                       R5 R1 K11 ["IsPaused"]
       99 JUMPIFEQ                         R4 R5 ; [+17]
      101 GETTABLEKS                       R4 R0 K0 ["props"]
      103 GETTABLEKS                       R4 R4 K11 ["IsPaused"]
      105 JUMPIFNOT                        R4 ; [+11]
      106 GETTABLEKS                       R4 R0 K0 ["props"]
      108 GETTABLEKS                       R4 R4 K12 ["CurrentBreakpoint"]
      110 JUMPIFNOT                        R4 ; [+6]
      111 NEWCLOSURE                       R6 P1
      112 CAPTURE                          VAL R0
      113 NAMECALL                         R4 R0 K10 ["setState"]
      115 CALL                             R4 2 0
      116 RETURN                           R0 0
      117 GETTABLEKS                       R4 R0 K0 ["props"]
      119 GETTABLEKS                       R4 R4 K13 ["Breakpoints"]
      121 GETTABLEKS                       R5 R1 K13 ["Breakpoints"]
      123 JUMPIFEQ                         R4 R5 ; [+95]
      125 GETTABLEKS                       R5 R0 K2 ["state"]
      127 GETTABLEKS                       R5 R5 K14 ["selectedBreakpoints"]
      129 LENGTH                           R4 R5
      130 JUMPIFEQKN                       R4 K15 [0] ; [+88]
      132 NEWTABLE                         R4 0 0
      134 NEWTABLE                         R5 0 0
      136 NEWTABLE                         R6 0 0
      138 GETIMPORT                        R7 K17 [ipairs]
      140 GETTABLEKS                       R8 R0 K2 ["state"]
      142 GETTABLEKS                       R8 R8 K14 ["selectedBreakpoints"]
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
      166 GETTABLEKS                       R8 R0 K0 ["props"]
      168 GETTABLEKS                       R8 R8 K13 ["Breakpoints"]
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
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K2 ["state"]
        6 GETTABLEKS                       R6 R6 K3 ["sizes"]
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
       12 GETTABLEKS                       R5 R0 K5 ["state"]
       14 GETTABLEKS                       R5 R5 K6 ["selectedBreakpoints"]
       16 GETTABLEN                        R4 R5 1
       17 JUMPIFNOT                        R4 ; [+15]
       18 GETTABLEKS                       R5 R1 K4 ["CurrentBreakpoint"]
       20 GETTABLEKS                       R5 R5 K7 ["id"]
       22 GETTABLEKS                       R7 R0 K5 ["state"]
       24 GETTABLEKS                       R7 R7 K6 ["selectedBreakpoints"]
       26 GETTABLEN                        R6 R7 1
       27 GETTABLEKS                       R6 R6 K7 ["id"]
       29 JUMPIFEQ                         R5 R6 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 NEWTABLE                         R5 0 3
       35 DUPTABLE                         R6 K11 [{["Name"] = "", ["Key"]}]
       36 GETUPVAL                         R8 0
       37 GETTABLEN                        R7 R8 1
       38 SETTABLEKS                       R7 R6 K10 ["Key"]
       40 DUPTABLE                         R7 K13 [{"Name", "Key", "Tooltip"}]
       41 LOADK                            R10 K14 ["BreakpointsWindow"]
       42 LOADK                            R11 K15 ["ScriptColumn"]
       43 NAMECALL                         R8 R2 K16 ["getText"]
       45 CALL                             R8 3 1
       46 SETTABLEKS                       R8 R7 K8 ["Name"]
       48 GETUPVAL                         R9 0
       49 GETTABLEN                        R8 R9 2
       50 SETTABLEKS                       R8 R7 K10 ["Key"]
       52 LOADK                            R11 K14 ["BreakpointsWindow"]
       53 LOADK                            R12 K18 ["ScriptColumnTooltip"]
       54 NAMECALL                         R9 R2 K16 ["getText"]
       56 CALL                             R9 3 1
       57 ORK                              R8 R9 K17 []
       58 SETTABLEKS                       R8 R7 K12 ["Tooltip"]
       60 DUPTABLE                         R8 K13 [{"Name", "Key", "Tooltip"}]
       61 LOADK                            R11 K14 ["BreakpointsWindow"]
       62 LOADK                            R12 K19 ["LineColumn"]
       63 NAMECALL                         R9 R2 K16 ["getText"]
       65 CALL                             R9 3 1
       66 SETTABLEKS                       R9 R8 K8 ["Name"]
       68 GETUPVAL                         R10 0
       69 GETTABLEN                        R9 R10 3
       70 SETTABLEKS                       R9 R8 K10 ["Key"]
       72 LOADK                            R12 K14 ["BreakpointsWindow"]
       73 LOADK                            R13 K20 ["LineColumnTooltip"]
       74 NAMECALL                         R10 R2 K16 ["getText"]
       76 CALL                             R10 3 1
       77 ORK                              R9 R10 K17 []
       78 SETTABLEKS                       R9 R8 K12 ["Tooltip"]
       80 SETLIST                          R5 R6 3 [1]
       82 GETIMPORT                        R6 K22 [ipairs]
       84 GETTABLEKS                       R7 R1 K23 ["ColumnFilter"]
       86 CALL                             R6 1 3
       87 FORGPREP_INEXT                   R6
       88 DUPTABLE                         R11 K13 [{"Name", "Key", "Tooltip"}]
       89 LOADK                            R14 K14 ["BreakpointsWindow"]
       90 MOVE                             R15 R10
       91 NAMECALL                         R12 R2 K16 ["getText"]
       93 CALL                             R12 3 1
       94 SETTABLEKS                       R12 R11 K8 ["Name"]
       96 GETUPVAL                         R13 1
       97 GETTABLE                         R12 R13 R10
       98 SETTABLEKS                       R12 R11 K10 ["Key"]
      100 LOADK                            R15 K14 ["BreakpointsWindow"]
      101 MOVE                             R17 R10
      102 LOADK                            R18 K12 ["Tooltip"]
      103 CONCAT                           R16 R17 R18
      104 NAMECALL                         R13 R2 K16 ["getText"]
      106 CALL                             R13 3 1
      107 ORK                              R12 R13 K17 []
      108 SETTABLEKS                       R12 R11 K12 ["Tooltip"]
      110 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      112 MOVE                             R13 R5
      113 MOVE                             R14 R11
      114 GETIMPORT                        R12 K26 [table.insert]
      116 CALL                             R12 2 0
      117 FORGLOOP                         R6 2 [inext] ; [-30]
      119 GETUPVAL                         R6 2
      120 MOVE                             R7 R5
      121 NEWCLOSURE                       R8 P0
      122 CAPTURE                          UPVAL U3
      123 CAPTURE                          VAL R0
      124 CALL                             R6 2 1
      125 NEWTABLE                         R7 0 0
      127 GETIMPORT                        R8 K28 [pairs]
      129 GETTABLEKS                       R9 R1 K29 ["Breakpoints"]
      131 CALL                             R8 1 3
      132 FORGPREP_NEXT                    R8
      133 GETTABLEKS                       R14 R0 K5 ["state"]
      135 GETTABLEKS                       R14 R14 K30 ["breakpointIdToExpansionState"]
      137 GETTABLEKS                       R15 R12 K7 ["id"]
      139 GETTABLE                         R13 R14 R15
      140 JUMPIFNOTEQKNIL                  R13 ; [+9]
      142 GETTABLEKS                       R13 R0 K5 ["state"]
      144 GETTABLEKS                       R13 R13 K30 ["breakpointIdToExpansionState"]
      146 GETTABLEKS                       R14 R12 K7 ["id"]
      148 LOADB                            R15 0
      149 SETTABLE                         R15 R13 R14
      150 GETTABLEKS                       R14 R0 K5 ["state"]
      152 GETTABLEKS                       R14 R14 K30 ["breakpointIdToExpansionState"]
      154 GETTABLEKS                       R15 R12 K7 ["id"]
      156 GETTABLE                         R13 R14 R15
      157 SETTABLE                         R13 R7 R12
      158 FORGLOOP                         R8 2 ; [-26]
      160 LOADNIL                          R8
      161 GETTABLEKS                       R9 R1 K31 ["hasDisabledBreakpoints"]
      163 JUMPIFNOT                        R9 ; [+7]
      164 LOADK                            R11 K14 ["BreakpointsWindow"]
      165 LOADK                            R12 K32 ["EnableAll"]
      166 NAMECALL                         R9 R2 K16 ["getText"]
      168 CALL                             R9 3 1
      169 MOVE                             R8 R9
      170 JUMP                             ; [+6]
      171 LOADK                            R11 K14 ["BreakpointsWindow"]
      172 LOADK                            R12 K33 ["DisableAll"]
      173 NAMECALL                         R9 R2 K16 ["getText"]
      175 CALL                             R9 3 1
      176 MOVE                             R8 R9
      177 GETUPVAL                         R10 4
      178 GETTABLEKS                       R10 R10 K34 ["HEADER_HEIGHT"]
      180 GETUPVAL                         R12 4
      181 GETTABLEKS                       R12 R12 K36 ["BUTTON_PADDING"]
      183 MULK                             R11 R12 K35 [2]
      184 ADD                              R9 R10 R11
      185 GETUPVAL                         R10 5
      186 GETTABLEKS                       R10 R10 K37 ["createElement"]
      188 GETUPVAL                         R11 6
      189 DUPTABLE                         R12 K44 [{["Size"], ["Style"] = "Box", ["Layout"], ["VerticalAlignment"], ["BackgroundColor3"]}]
      190 GETIMPORT                        R13 K47 [UDim2.fromScale]
      192 LOADN                            R14 1
      193 LOADN                            R15 1
      194 CALL                             R13 2 1
      195 SETTABLEKS                       R13 R12 K38 ["Size"]
      197 GETIMPORT                        R13 K51 [Enum.FillDirection.Vertical]
      199 SETTABLEKS                       R13 R12 K41 ["Layout"]
      201 GETIMPORT                        R13 K53 [Enum.VerticalAlignment.Top]
      203 SETTABLEKS                       R13 R12 K42 ["VerticalAlignment"]
      205 GETTABLEKS                       R13 R3 K54 ["MainBackground"]
      207 SETTABLEKS                       R13 R12 K43 ["BackgroundColor3"]
      209 DUPTABLE                         R13 K58 [{"HeaderPane", "TablePane", "DeleteAllDialog"}]
      210 GETUPVAL                         R14 5
      211 GETTABLEKS                       R14 R14 K37 ["createElement"]
      213 GETUPVAL                         R15 6
      214 DUPTABLE                         R16 K64 [{["Size"], ["Spacing"], ["Padding"], ["Style"] = "Box", ["Layout"], ["LayoutOrder"] = 1, ["VerticalAlignment"], ["HorizontalAlignment"]}]
      215 GETIMPORT                        R17 K66 [UDim2.new]
      217 LOADN                            R18 1
      218 LOADN                            R19 0
      219 LOADN                            R20 0
      220 MOVE                             R21 R9
      221 CALL                             R17 4 1
      222 SETTABLEKS                       R17 R16 K38 ["Size"]
      224 GETUPVAL                         R17 4
      225 GETTABLEKS                       R17 R17 K36 ["BUTTON_PADDING"]
      227 SETTABLEKS                       R17 R16 K59 ["Spacing"]
      229 GETUPVAL                         R17 4
      230 GETTABLEKS                       R17 R17 K36 ["BUTTON_PADDING"]
      232 SETTABLEKS                       R17 R16 K60 ["Padding"]
      234 GETIMPORT                        R17 K68 [Enum.FillDirection.Horizontal]
      236 SETTABLEKS                       R17 R16 K41 ["Layout"]
      238 GETIMPORT                        R17 K70 [Enum.VerticalAlignment.Center]
      240 SETTABLEKS                       R17 R16 K42 ["VerticalAlignment"]
      242 GETIMPORT                        R17 K72 [Enum.HorizontalAlignment.Left]
      244 SETTABLEKS                       R17 R16 K63 ["HorizontalAlignment"]
      246 DUPTABLE                         R17 K75 [{"ButtonsContainer", "DropdownContainer"}]
      247 GETUPVAL                         R18 5
      248 GETTABLEKS                       R18 R18 K37 ["createElement"]
      250 GETUPVAL                         R19 6
      251 DUPTABLE                         R20 K76 [{["Size"], ["LayoutOrder"] = 1, ["Style"] = "Box", ["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"]}]
      252 GETIMPORT                        R21 K66 [UDim2.new]
      254 LOADK                            R22 K77 [0.5]
      255 LOADN                            R23 0
      256 LOADN                            R24 0
      257 GETUPVAL                         R25 4
      258 GETTABLEKS                       R25 R25 K34 ["HEADER_HEIGHT"]
      260 CALL                             R21 4 1
      261 SETTABLEKS                       R21 R20 K38 ["Size"]
      263 GETIMPORT                        R21 K68 [Enum.FillDirection.Horizontal]
      265 SETTABLEKS                       R21 R20 K41 ["Layout"]
      267 GETIMPORT                        R21 K70 [Enum.VerticalAlignment.Center]
      269 SETTABLEKS                       R21 R20 K42 ["VerticalAlignment"]
      271 GETIMPORT                        R21 K72 [Enum.HorizontalAlignment.Left]
      273 SETTABLEKS                       R21 R20 K63 ["HorizontalAlignment"]
      275 DUPTABLE                         R21 K80 [{"DisableAllBreakpointButton", "DeleteAllBreakpointButton"}]
      276 GETUPVAL                         R22 5
      277 GETTABLEKS                       R22 R22 K37 ["createElement"]
      279 GETUPVAL                         R23 7
      280 DUPTABLE                         R24 K86 [{["Size"], ["LayoutOrder"] = 1, ["LeftIcon"] = "rbxasset://textures/Debugger/Breakpoints/disable_all@2x.png", ["TooltipText"], ["OnClick"], ["Disabled"]}]
      281 GETIMPORT                        R25 K66 [UDim2.new]
      283 LOADN                            R26 0
      284 GETUPVAL                         R27 4
      285 GETTABLEKS                       R27 R27 K87 ["BUTTON_SIZE"]
      287 LOADN                            R28 0
      288 GETUPVAL                         R29 4
      289 GETTABLEKS                       R29 R29 K87 ["BUTTON_SIZE"]
      291 CALL                             R25 4 1
      292 SETTABLEKS                       R25 R24 K38 ["Size"]
      294 SETTABLEKS                       R8 R24 K83 ["TooltipText"]
      296 GETTABLEKS                       R25 R0 K88 ["toggleEnabledAll"]
      298 SETTABLEKS                       R25 R24 K84 ["OnClick"]
      300 GETTABLEKS                       R27 R1 K29 ["Breakpoints"]
      302 LENGTH                           R26 R27
      303 JUMPIFEQKN                       R26 K89 [0] ; [+2]
      305 LOADB                            R25 0 +1
      306 LOADB                            R25 1
      307 SETTABLEKS                       R25 R24 K85 ["Disabled"]
      309 CALL                             R22 2 1
      310 SETTABLEKS                       R22 R21 K78 ["DisableAllBreakpointButton"]
      312 GETUPVAL                         R22 5
      313 GETTABLEKS                       R22 R22 K37 ["createElement"]
      315 GETUPVAL                         R23 7
      316 DUPTABLE                         R24 K91 [{["Size"], ["LayoutOrder"] = 2, ["LeftIcon"] = "rbxasset://textures/Debugger/Breakpoints/delete_all@2x.png", ["TooltipText"], ["OnClick"], ["Disabled"]}]
      317 GETIMPORT                        R25 K66 [UDim2.new]
      319 LOADN                            R26 0
      320 GETUPVAL                         R27 4
      321 GETTABLEKS                       R27 R27 K87 ["BUTTON_SIZE"]
      323 LOADN                            R28 0
      324 GETUPVAL                         R29 4
      325 GETTABLEKS                       R29 R29 K87 ["BUTTON_SIZE"]
      327 CALL                             R25 4 1
      328 SETTABLEKS                       R25 R24 K38 ["Size"]
      330 LOADK                            R27 K14 ["BreakpointsWindow"]
      331 LOADK                            R28 K92 ["DeleteAll"]
      332 NAMECALL                         R25 R2 K16 ["getText"]
      334 CALL                             R25 3 1
      335 SETTABLEKS                       R25 R24 K83 ["TooltipText"]
      337 GETTABLEKS                       R25 R0 K93 ["displayDeleteAllBreakpointsPopup"]
      339 SETTABLEKS                       R25 R24 K84 ["OnClick"]
      341 GETTABLEKS                       R27 R1 K29 ["Breakpoints"]
      343 LENGTH                           R26 R27
      344 JUMPIFEQKN                       R26 K89 [0] ; [+2]
      346 LOADB                            R25 0 +1
      347 LOADB                            R25 1
      348 SETTABLEKS                       R25 R24 K85 ["Disabled"]
      350 CALL                             R22 2 1
      351 SETTABLEKS                       R22 R21 K79 ["DeleteAllBreakpointButton"]
      353 CALL                             R18 3 1
      354 SETTABLEKS                       R18 R17 K73 ["ButtonsContainer"]
      356 GETUPVAL                         R18 5
      357 GETTABLEKS                       R18 R18 K37 ["createElement"]
      359 GETUPVAL                         R19 6
      360 DUPTABLE                         R20 K94 [{["Size"], ["LayoutOrder"] = 2, ["Style"] = "Box", ["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"]}]
      361 GETIMPORT                        R21 K66 [UDim2.new]
      363 LOADK                            R22 K77 [0.5]
      364 LOADN                            R23 0
      365 LOADN                            R24 0
      366 GETUPVAL                         R25 4
      367 GETTABLEKS                       R25 R25 K34 ["HEADER_HEIGHT"]
      369 CALL                             R21 4 1
      370 SETTABLEKS                       R21 R20 K38 ["Size"]
      372 GETIMPORT                        R21 K68 [Enum.FillDirection.Horizontal]
      374 SETTABLEKS                       R21 R20 K41 ["Layout"]
      376 GETIMPORT                        R21 K70 [Enum.VerticalAlignment.Center]
      378 SETTABLEKS                       R21 R20 K42 ["VerticalAlignment"]
      380 GETIMPORT                        R21 K96 [Enum.HorizontalAlignment.Right]
      382 SETTABLEKS                       R21 R20 K63 ["HorizontalAlignment"]
      384 DUPTABLE                         R21 K98 [{"ColumnDropdown"}]
      385 GETUPVAL                         R22 5
      386 GETTABLEKS                       R22 R22 K37 ["createElement"]
      388 GETUPVAL                         R23 8
      389 DUPTABLE                         R24 K100 [{["LayoutOrder"] = 1, ["AutomaticSize"]}]
      390 GETIMPORT                        R25 K102 [Enum.AutomaticSize.X]
      392 SETTABLEKS                       R25 R24 K99 ["AutomaticSize"]
      394 CALL                             R22 2 1
      395 SETTABLEKS                       R22 R21 K97 ["ColumnDropdown"]
      397 CALL                             R18 3 1
      398 SETTABLEKS                       R18 R17 K74 ["DropdownContainer"]
      400 CALL                             R14 3 1
      401 SETTABLEKS                       R14 R13 K55 ["HeaderPane"]
      403 GETUPVAL                         R14 5
      404 GETTABLEKS                       R14 R14 K37 ["createElement"]
      406 GETUPVAL                         R15 6
      407 DUPTABLE                         R16 K103 [{["Size"], ["Style"] = "Box", ["LayoutOrder"] = 2}]
      408 GETIMPORT                        R17 K66 [UDim2.new]
      410 LOADN                            R18 1
      411 LOADN                            R19 0
      412 LOADN                            R20 1
      413 MINUS                            R21 R9
      414 CALL                             R17 4 1
      415 SETTABLEKS                       R17 R16 K38 ["Size"]
      417 DUPTABLE                         R17 K105 [{"BreakpointsTable"}]
      418 GETUPVAL                         R18 5
      419 GETTABLEKS                       R18 R18 K37 ["createElement"]
      421 GETUPVAL                         R19 9
      422 DUPTABLE                         R20 K132 [{["Size"], ["Columns"], ["RootItems"], ["OnExpansionChange"], ["RightClick"], ["CellComponent"], ["LayoutOrder"] = 2, ["OnSelectionChange"], ["HighlightedRows"], ["Scroll"] = True, ["ScrollFocusIndex"], ["Expansion"], ["GetChildren"], ["TextInputCols"], ["OnFocusLost"], ["OnDoubleClick"], ["SortIndex"], ["SortOrder"], ["OnSortChange"], ["OnColumnSizesChange"], ["UseDeficit"] = False, ["UseScale"] = True, ["ClampSize"] = True, ["ColumnHeaderHeight"], ["RowHeight"], ["ExpandOnDoubleClick"] = True}]
      423 GETIMPORT                        R21 K66 [UDim2.new]
      425 LOADN                            R22 1
      426 LOADN                            R23 0
      427 LOADN                            R24 1
      428 LOADN                            R25 0
      429 CALL                             R21 4 1
      430 SETTABLEKS                       R21 R20 K38 ["Size"]
      432 SETTABLEKS                       R6 R20 K106 ["Columns"]
      434 GETTABLEKS                       R21 R1 K29 ["Breakpoints"]
      436 JUMPIF                           R21 ; [+2]
      437 NEWTABLE                         R21 0 0
      439 SETTABLEKS                       R21 R20 K107 ["RootItems"]
      441 GETTABLEKS                       R21 R0 K133 ["onExpansionChange"]
      443 SETTABLEKS                       R21 R20 K108 ["OnExpansionChange"]
      445 GETTABLEKS                       R21 R0 K134 ["onRightClick"]
      447 SETTABLEKS                       R21 R20 K109 ["RightClick"]
      449 GETUPVAL                         R21 10
      450 SETTABLEKS                       R21 R20 K110 ["CellComponent"]
      452 GETTABLEKS                       R21 R0 K135 ["onSelectionChange"]
      454 SETTABLEKS                       R21 R20 K111 ["OnSelectionChange"]
      456 GETTABLEKS                       R21 R0 K5 ["state"]
      458 GETTABLEKS                       R21 R21 K6 ["selectedBreakpoints"]
      460 SETTABLEKS                       R21 R20 K112 ["HighlightedRows"]
      462 MOVE                             R21 R4
      463 JUMPIFNOT                        R21 ; [+4]
      464 GETTABLEKS                       R21 R0 K0 ["props"]
      466 GETTABLEKS                       R21 R21 K136 ["CurrentBreakpointIndex"]
      468 SETTABLEKS                       R21 R20 K115 ["ScrollFocusIndex"]
      470 SETTABLEKS                       R7 R20 K116 ["Expansion"]
      472 GETTABLEKS                       R21 R0 K137 ["getTreeChildren"]
      474 SETTABLEKS                       R21 R20 K117 ["GetChildren"]
      476 GETTABLEKS                       R21 R1 K118 ["TextInputCols"]
      478 SETTABLEKS                       R21 R20 K118 ["TextInputCols"]
      480 GETTABLEKS                       R21 R0 K119 ["OnFocusLost"]
      482 SETTABLEKS                       R21 R20 K119 ["OnFocusLost"]
      484 GETTABLEKS                       R21 R0 K120 ["OnDoubleClick"]
      486 SETTABLEKS                       R21 R20 K120 ["OnDoubleClick"]
      488 GETTABLEKS                       R21 R1 K121 ["SortIndex"]
      490 SETTABLEKS                       R21 R20 K121 ["SortIndex"]
      492 GETTABLEKS                       R21 R1 K122 ["SortOrder"]
      494 SETTABLEKS                       R21 R20 K122 ["SortOrder"]
      496 GETTABLEKS                       R21 R0 K123 ["OnSortChange"]
      498 SETTABLEKS                       R21 R20 K123 ["OnSortChange"]
      500 GETTABLEKS                       R21 R0 K124 ["OnColumnSizesChange"]
      502 SETTABLEKS                       R21 R20 K124 ["OnColumnSizesChange"]
      504 GETUPVAL                         R21 4
      505 GETTABLEKS                       R21 R21 K138 ["COLUMN_HEADER_HEIGHT"]
      507 SETTABLEKS                       R21 R20 K129 ["ColumnHeaderHeight"]
      509 GETUPVAL                         R21 4
      510 GETTABLEKS                       R21 R21 K139 ["ROW_HEIGHT"]
      512 SETTABLEKS                       R21 R20 K130 ["RowHeight"]
      514 CALL                             R18 2 1
      515 SETTABLEKS                       R18 R17 K104 ["BreakpointsTable"]
      517 CALL                             R14 3 1
      518 SETTABLEKS                       R14 R13 K56 ["TablePane"]
      520 GETUPVAL                         R14 5
      521 GETTABLEKS                       R14 R14 K37 ["createElement"]
      523 GETUPVAL                         R15 11
      524 DUPTABLE                         R16 K143 [{"Enabled", "CloseDialog", "DeleteAllBreakpoints"}]
      525 GETTABLEKS                       R17 R0 K5 ["state"]
      527 GETTABLEKS                       R17 R17 K144 ["deleteAllPopup"]
      529 SETTABLEKS                       R17 R16 K140 ["Enabled"]
      531 GETTABLEKS                       R17 R0 K145 ["closeDeleteAllBreakpointsPopup"]
      533 SETTABLEKS                       R17 R16 K141 ["CloseDialog"]
      535 GETTABLEKS                       R17 R0 K146 ["deleteAllBreakpoints"]
      537 SETTABLEKS                       R17 R16 K142 ["DeleteAllBreakpoints"]
      539 CALL                             R14 2 1
      540 SETTABLEKS                       R14 R13 K57 ["DeleteAllDialog"]
      542 CALL                             R10 3 -1
      543 RETURN                           R10 -1

PROTO_32:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 LOADB                            R5 0
        5 GETIMPORT                        R6 K1 [pairs]
        7 GETTABLEKS                       R7 R0 K2 ["Breakpoint"]
        9 GETTABLEKS                       R7 R7 K3 ["MetaBreakpoints"]
       11 CALL                             R6 1 3
       12 FORGPREP_NEXT                    R6
       13 GETUPVAL                         R11 0
       14 MOVE                             R12 R10
       15 CALL                             R11 1 1
       16 GETTABLEKS                       R12 R10 K4 ["scriptName"]
       18 SETTABLEKS                       R12 R11 K5 ["scriptGUID"]
       20 GETTABLEKS                       R13 R0 K6 ["ScriptInfo"]
       22 GETTABLEKS                       R13 R13 K6 ["ScriptInfo"]
       24 GETTABLEKS                       R14 R11 K4 ["scriptName"]
       26 GETTABLE                         R12 R13 R14
       27 SETTABLEKS                       R12 R11 K4 ["scriptName"]
       29 GETTABLEKS                       R13 R0 K6 ["ScriptInfo"]
       31 GETTABLEKS                       R13 R13 K7 ["ScriptLineContents"]
       33 GETTABLEKS                       R14 R11 K5 ["scriptGUID"]
       35 GETTABLE                         R12 R13 R14
       36 JUMPIFNOT                        R12 ; [+10]
       37 GETTABLEKS                       R14 R0 K6 ["ScriptInfo"]
       39 GETTABLEKS                       R14 R14 K7 ["ScriptLineContents"]
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
       71 GETTABLEKS                       R13 R0 K17 ["Common"]
       73 GETTABLEKS                       R13 R13 K18 ["currentBreakpointId"]
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
       96 GETUPVAL                         R22 1
       97 GETTABLEKS                       R22 R22 K23 ["extractNonChildData"]
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
      124 GETTABLEKS                       R25 R0 K6 ["ScriptInfo"]
      126 GETTABLEKS                       R25 R25 K6 ["ScriptInfo"]
      128 GETTABLEKS                       R26 R21 K24 ["Script"]
      130 GETTABLE                         R24 R25 R26
      131 SETTABLEKS                       R24 R23 K32 ["Value"]
      133 DUPTABLE                         R24 K37 [{"Image", "Size"}]
      134 GETUPVAL                         R26 2
      135 GETTABLEKS                       R26 R26 K38 ["GameStateTypes"]
      137 GETTABLEKS                       R26 R26 K39 ["Client"]
      139 JUMPIFNOTEQ                      R15 R26 ; [+7]
      141 GETUPVAL                         R25 2
      142 GETTABLEKS                       R25 R25 K40 ["DebugpointIconTable"]
      144 GETTABLEKS                       R25 R25 K41 ["client"]
      146 JUMP                             ; [+14]
      147 GETUPVAL                         R26 2
      148 GETTABLEKS                       R26 R26 K38 ["GameStateTypes"]
      150 GETTABLEKS                       R26 R26 K42 ["Server"]
      152 JUMPIFNOTEQ                      R15 R26 ; [+7]
      154 GETUPVAL                         R25 2
      155 GETTABLEKS                       R25 R25 K40 ["DebugpointIconTable"]
      157 GETTABLEKS                       R25 R25 K43 ["server"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R25
      161 SETTABLEKS                       R25 R24 K35 ["Image"]
      163 GETIMPORT                        R25 K46 [UDim2.new]
      165 LOADN                            R26 0
      166 GETUPVAL                         R27 2
      167 GETTABLEKS                       R27 R27 K47 ["ICON_SIZE"]
      169 LOADN                            R28 0
      170 GETUPVAL                         R29 2
      171 GETTABLEKS                       R29 R29 K47 ["ICON_SIZE"]
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
      214 GETTABLEKS                       R10 R0 K2 ["Breakpoint"]
      216 GETTABLEKS                       R10 R10 K48 ["listOfEnabledColumns"]
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
      239 GETUPVAL                         R9 5
      240 GETTABLEKS                       R9 R9 K51 ["sortTableByColumnAndOrder"]
      242 MOVE                             R10 R2
      243 GETTABLEKS                       R11 R0 K2 ["Breakpoint"]
      245 GETTABLEKS                       R11 R11 K52 ["ColumnIndex"]
      247 GETTABLEKS                       R12 R0 K2 ["Breakpoint"]
      249 GETTABLEKS                       R12 R12 K53 ["SortDirection"]
      251 MOVE                             R13 R7
      252 LOADB                            R14 0
      253 NEWTABLE                         R15 0 2
      255 LOADK                            R16 K5 ["scriptGUID"]
      256 LOADK                            R17 K8 ["lineNumber"]
      257 SETLIST                          R15 R16 2 [1]
      259 CALL                             R9 6 0
      260 DUPTABLE                         R9 K65 [{"Breakpoints", "IsPaused", "CurrentBreakpoint", "CurrentBreakpointIndex", "CurrentDebuggerConnectionId", "SortIndex", "SortOrder", "hasDisabledBreakpoints", "ColumnFilter", "TextInputCols", "CurrentKeys"}]
      261 SETTABLEKS                       R2 R9 K54 ["Breakpoints"]
      263 GETTABLEKS                       R10 R0 K17 ["Common"]
      265 GETTABLEKS                       R10 R10 K66 ["isPaused"]
      267 SETTABLEKS                       R10 R9 K55 ["IsPaused"]
      269 SETTABLEKS                       R3 R9 K56 ["CurrentBreakpoint"]
      271 SETTABLEKS                       R4 R9 K57 ["CurrentBreakpointIndex"]
      273 GETTABLEKS                       R10 R0 K17 ["Common"]
      275 GETTABLEKS                       R10 R10 K67 ["currentDebuggerConnectionId"]
      277 SETTABLEKS                       R10 R9 K58 ["CurrentDebuggerConnectionId"]
      279 GETTABLEKS                       R10 R0 K2 ["Breakpoint"]
      281 GETTABLEKS                       R10 R10 K52 ["ColumnIndex"]
      283 SETTABLEKS                       R10 R9 K59 ["SortIndex"]
      285 GETTABLEKS                       R10 R0 K2 ["Breakpoint"]
      287 GETTABLEKS                       R10 R10 K53 ["SortDirection"]
      289 SETTABLEKS                       R10 R9 K60 ["SortOrder"]
      291 SETTABLEKS                       R5 R9 K61 ["hasDisabledBreakpoints"]
      293 GETTABLEKS                       R10 R0 K2 ["Breakpoint"]
      295 GETTABLEKS                       R10 R10 K48 ["listOfEnabledColumns"]
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
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R5 K9 ["Cryo"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R3 K10 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K11 ["Analytics"]
       43 GETTABLEKS                       R7 R5 K12 ["Plugin"]
       45 GETTABLEKS                       R8 R5 K13 ["Localization"]
       47 GETTABLEKS                       R9 R3 K14 ["Style"]
       49 GETTABLEKS                       R9 R9 K15 ["Stylizer"]
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
       73 GETTABLEKS                       R21 R0 K26 ["Src"]
       75 GETTABLEKS                       R21 R21 K27 ["Models"]
       77 GETTABLEKS                       R21 R21 K28 ["BreakpointRow"]
       79 CALL                             R20 1 1
       80 GETIMPORT                        R21 K4 [require]
       82 GETTABLEKS                       R22 R0 K26 ["Src"]
       84 GETTABLEKS                       R22 R22 K19 ["Util"]
       86 GETTABLEKS                       R22 R22 K29 ["Constants"]
       88 CALL                             R21 1 1
       89 GETIMPORT                        R22 K4 [require]
       91 GETTABLEKS                       R23 R0 K26 ["Src"]
       93 GETTABLEKS                       R23 R23 K30 ["Components"]
       95 GETTABLEKS                       R23 R23 K31 ["Breakpoints"]
       97 GETTABLEKS                       R23 R23 K32 ["BreakpointsTreeTableCell"]
       99 CALL                             R22 1 1
      100 GETTABLEKS                       R23 R1 K33 ["PureComponent"]
      102 LOADK                            R25 K34 ["BreakpointsTable"]
      103 NAMECALL                         R23 R23 K35 ["extend"]
      105 CALL                             R23 2 1
      106 GETTABLEKS                       R24 R0 K26 ["Src"]
      108 GETTABLEKS                       R24 R24 K19 ["Util"]
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
      127 GETTABLEKS                       R29 R0 K26 ["Src"]
      129 GETTABLEKS                       R29 R29 K39 ["Resources"]
      131 GETTABLEKS                       R29 R29 K40 ["AnalyticsEventNames"]
      133 CALL                             R28 1 1
      134 GETTABLEKS                       R29 R0 K26 ["Src"]
      136 GETTABLEKS                       R29 R29 K41 ["Thunks"]
      138 GETIMPORT                        R30 K4 [require]
      140 GETTABLEKS                       R31 R29 K31 ["Breakpoints"]
      142 GETTABLEKS                       R31 R31 K42 ["ToggleAllBreakpoints"]
      144 CALL                             R30 1 1
      145 GETTABLEKS                       R31 R0 K26 ["Src"]
      147 GETTABLEKS                       R31 R31 K43 ["Actions"]
      149 GETIMPORT                        R32 K4 [require]
      151 GETTABLEKS                       R33 R31 K44 ["BreakpointsWindow"]
      153 GETTABLEKS                       R33 R33 K45 ["SetBreakpointSortState"]
      155 CALL                             R32 1 1
      156 GETIMPORT                        R33 K4 [require]
      158 GETTABLEKS                       R34 R31 K44 ["BreakpointsWindow"]
      160 GETTABLEKS                       R34 R34 K46 ["BreakpointColumnFilter"]
      162 CALL                             R33 1 1
      163 GETIMPORT                        R34 K4 [require]
      165 GETIMPORT                        R35 K1 [script]
      167 GETTABLEKS                       R35 R35 K2 ["Parent"]
      169 GETTABLEKS                       R35 R35 K47 ["BreakpointsDropdownField"]
      171 CALL                             R34 1 1
      172 GETIMPORT                        R35 K4 [require]
      174 GETIMPORT                        R36 K1 [script]
      176 GETTABLEKS                       R36 R36 K2 ["Parent"]
      178 GETTABLEKS                       R36 R36 K48 ["DeleteAllBreakpointsDialog"]
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
      194 DUPTABLE                         R38 K63 [{["SourceLineColumn"] = "scriptLine", ["ConditionColumn"] = "condition", ["LogMessageColumn"] = "logMessage", ["ContinueExecutionColumn"] = "continueExecution", ["RemoveOnHitColumn"] = "removeOnHit"}]
      195 DUPCLOSURE                       R39 K64 [PROTO_0]
      196 CAPTURE                          VAL R21
      197 DUPCLOSURE                       R40 K65 [PROTO_21]
      198 CAPTURE                          VAL R37
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R28
      201 CAPTURE                          VAL R25
      202 CAPTURE                          VAL R36
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R4
      205 SETTABLEKS                       R40 R23 K66 ["init"]
      207 DUPCLOSURE                       R40 K67 [PROTO_24]
      208 CAPTURE                          VAL R21
      209 CAPTURE                          VAL R27
      210 SETTABLEKS                       R40 R23 K68 ["didMount"]
      212 DUPCLOSURE                       R40 K69 [PROTO_25]
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R27
      215 SETTABLEKS                       R40 R23 K70 ["willUnmount"]
      217 DUPCLOSURE                       R40 K71 [PROTO_29]
      218 CAPTURE                          VAL R37
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R27
      221 SETTABLEKS                       R40 R23 K72 ["didUpdate"]
      223 DUPCLOSURE                       R40 K73 [PROTO_31]
      224 CAPTURE                          VAL R37
      225 CAPTURE                          VAL R38
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R34
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R35
      236 SETTABLEKS                       R40 R23 K74 ["render"]
      238 GETTABLEKS                       R40 R5 K75 ["withContext"]
      240 DUPTABLE                         R41 K76 [{"Analytics", "Localization", "Stylizer", "Plugin"}]
      241 SETTABLEKS                       R6 R41 K11 ["Analytics"]
      243 SETTABLEKS                       R8 R41 K13 ["Localization"]
      245 SETTABLEKS                       R9 R41 K15 ["Stylizer"]
      247 SETTABLEKS                       R7 R41 K12 ["Plugin"]
      249 CALL                             R40 1 1
      250 MOVE                             R41 R23
      251 CALL                             R40 1 1
      252 MOVE                             R23 R40
      253 GETTABLEKS                       R40 R2 K77 ["connect"]
      255 DUPCLOSURE                       R41 K78 [PROTO_32]
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R37
      260 CAPTURE                          VAL R38
      261 CAPTURE                          VAL R26
      262 DUPCLOSURE                       R42 K79 [PROTO_36]
      263 CAPTURE                          VAL R30
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R33
      266 CALL                             R40 2 1
      267 MOVE                             R41 R23
      268 CALL                             R40 1 1
      269 MOVE                             R23 R40
      270 RETURN                           R23 1
