PROTO_0:
        0 JUMPIFNOTEQKN                    R0 K0 [1] ; [+8]
        2 GETTABLE                         R4 R2 R0
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["ICON_FRAME_TOP"]
        6 SETTABLEKS                       R5 R4 K2 ["arrowColumn"]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R1 K3 ["frameColumn"]
       11 JUMPIFNOTEQ                      R4 R3 ; [+8]
       13 GETTABLE                         R4 R2 R0
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K4 ["ICON_CURRENT_FRAME"]
       17 SETTABLEKS                       R5 R4 K2 ["arrowColumn"]
       19 RETURN                           R0 0
       20 GETTABLE                         R4 R2 R0
       21 LOADK                            R5 K5 [""]
       22 SETTABLEKS                       R5 R4 K2 ["arrowColumn"]
       24 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["ScriptInfo"]
        2 GETTABLE                         R2 R3 R0
        3 RETURN                           R2 1

PROTO_2:
        0 GETTABLE                         R4 R2 R0
        1 GETTABLE                         R6 R2 R0
        2 GETTABLEKS                       R5 R6 K0 ["sourceColumn"]
        4 SETTABLEKS                       R5 R4 K1 ["scriptGUID"]
        6 GETTABLE                         R6 R2 R0
        7 GETTABLEKS                       R5 R6 K0 ["sourceColumn"]
        9 GETTABLEKS                       R6 R3 K2 ["ScriptInfo"]
       11 GETTABLE                         R4 R6 R5
       12 GETTABLE                         R5 R2 R0
       13 SETTABLEKS                       R4 R5 K0 ["sourceColumn"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["displayString"]
        2 GETTABLEKS                       R5 R0 K1 ["threadId"]
        4 GETTABLEKS                       R8 R2 K2 ["currentFrameMap"]
        6 GETTABLEKS                       R9 R2 K3 ["currentDebuggerConnectionId"]
        8 GETTABLE                         R7 R8 R9
        9 GETTABLE                         R6 R7 R5
       10 GETTABLEKS                       R7 R1 K4 ["threadIdToFrameList"]
       12 JUMPIFNOT                        R7 ; [+3]
       13 GETTABLEKS                       R8 R1 K4 ["threadIdToFrameList"]
       15 GETTABLE                         R7 R8 R5
       16 LOADNIL                          R8
       17 NEWTABLE                         R9 0 1
       19 NEWTABLE                         R10 4 0
       21 LOADN                            R11 1
       22 SETTABLEKS                       R11 R10 K5 ["frameColumn"]
       24 LOADK                            R11 K6 [""]
       25 SETTABLEKS                       R11 R10 K7 ["functionColumn"]
       27 LOADN                            R11 255
       28 SETTABLEKS                       R11 R10 K8 ["lineColumn"]
       30 SETTABLEKS                       R4 R10 K9 ["sourceColumn"]
       32 SETTABLEN                        R10 R9 1
       33 JUMPIFNOT                        R7 ; [+5]
       34 GETUPVAL                         R10 0
       35 MOVE                             R11 R7
       36 CALL                             R10 1 1
       37 MOVE                             R8 R10
       38 JUMP                             ; [+1]
       39 MOVE                             R8 R9
       40 GETIMPORT                        R10 K11 [ipairs]
       42 MOVE                             R11 R8
       43 CALL                             R10 1 3
       44 FORGPREP_INEXT                   R10
       45 MOVE                             R15 R8
       46 JUMPIFNOTEQKN                    R13 K12 [1] ; [+8]
       48 GETTABLE                         R16 R15 R13
       49 GETUPVAL                         R18 1
       50 GETTABLEKS                       R17 R18 K13 ["ICON_FRAME_TOP"]
       52 SETTABLEKS                       R17 R16 K14 ["arrowColumn"]
       54 JUMP                             ; [+15]
       55 GETTABLEKS                       R16 R14 K5 ["frameColumn"]
       57 JUMPIFNOTEQ                      R16 R6 ; [+8]
       59 GETTABLE                         R16 R15 R13
       60 GETUPVAL                         R18 1
       61 GETTABLEKS                       R17 R18 K15 ["ICON_CURRENT_FRAME"]
       63 SETTABLEKS                       R17 R16 K14 ["arrowColumn"]
       65 JUMP                             ; [+4]
       66 GETTABLE                         R16 R15 R13
       67 LOADK                            R17 K6 [""]
       68 SETTABLEKS                       R17 R16 K14 ["arrowColumn"]
       70 MOVE                             R15 R8
       71 GETTABLE                         R16 R15 R13
       72 GETTABLE                         R18 R15 R13
       73 GETTABLEKS                       R17 R18 K9 ["sourceColumn"]
       75 SETTABLEKS                       R17 R16 K16 ["scriptGUID"]
       77 GETTABLE                         R18 R15 R13
       78 GETTABLEKS                       R17 R18 K9 ["sourceColumn"]
       80 GETTABLEKS                       R18 R3 K17 ["ScriptInfo"]
       82 GETTABLE                         R16 R18 R17
       83 GETTABLE                         R17 R15 R13
       84 SETTABLEKS                       R16 R17 K9 ["sourceColumn"]
       86 FORGLOOP                         R10 2 [inext] ; [-42]
       88 DUPTABLE                         R10 K19 [{"arrowColumn", "threadId", "children"}]
       89 SETTABLEKS                       R4 R10 K14 ["arrowColumn"]
       91 SETTABLEKS                       R5 R10 K1 ["threadId"]
       93 SETTABLEKS                       R8 R10 K18 ["children"]
       95 RETURN                           R10 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 LOADK                            R5 K3 ["callstackWindowConfigs"]
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
       38 GETTABLEKS                       R4 R5 K9 ["PluginActions"]
       40 NEWTABLE                         R5 0 0
       42 SETTABLEKS                       R5 R0 K10 ["connections"]
       44 NEWTABLE                         R5 0 0
       46 SETTABLEKS                       R5 R0 K11 ["shortcuts"]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R10 R11 K12 ["CallstackActionIds"]
       51 GETTABLEKS                       R9 R10 K13 ["CopySelected"]
       53 NAMECALL                         R7 R4 K2 ["get"]
       55 CALL                             R7 2 1
       56 GETTABLEKS                       R8 R0 K14 ["copySelectedRows"]
       58 NAMECALL                         R5 R0 K15 ["addAction"]
       60 CALL                             R5 3 0
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R10 R11 K12 ["CallstackActionIds"]
       64 GETTABLEKS                       R9 R10 K16 ["SelectAll"]
       66 NAMECALL                         R7 R4 K2 ["get"]
       68 CALL                             R7 2 1
       69 GETTABLEKS                       R8 R0 K17 ["selectAllRows"]
       71 NAMECALL                         R5 R0 K15 ["addAction"]
       73 CALL                             R5 3 0
       74 RETURN                           R0 0

PROTO_7:
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
       27 LOADK                            R6 K8 ["callstackWindowConfigs"]
       28 MOVE                             R7 R3
       29 NAMECALL                         R4 R2 K9 ["SetSetting"]
       31 CALL                             R4 3 0
       32 GETTABLEKS                       R4 R0 K10 ["connections"]
       34 JUMPIFNOT                        R4 ; [+15]
       35 GETIMPORT                        R4 K12 [ipairs]
       37 GETTABLEKS                       R5 R0 K10 ["connections"]
       39 CALL                             R4 1 3
       40 FORGPREP_INEXT                   R4
       41 NAMECALL                         R9 R8 K13 ["Disconnect"]
       43 CALL                             R9 1 0
       44 FORGLOOP                         R4 2 [inext] ; [-4]
       46 NEWTABLE                         R4 0 0
       48 SETTABLEKS                       R4 R0 K10 ["connections"]
       50 GETTABLEKS                       R4 R0 K14 ["shortcuts"]
       52 JUMPIFNOT                        R4 ; [+15]
       53 GETIMPORT                        R4 K12 [ipairs]
       55 GETTABLEKS                       R5 R0 K14 ["shortcuts"]
       57 CALL                             R4 1 3
       58 FORGPREP_INEXT                   R4
       59 LOADB                            R9 0
       60 SETTABLEKS                       R9 R8 K15 ["Enabled"]
       62 FORGLOOP                         R4 2 [inext] ; [-4]
       64 NEWTABLE                         R4 0 0
       66 SETTABLEKS                       R4 R0 K14 ["shortcuts"]
       68 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["sizes"]
        4 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"selectedRows", "selectAll"}]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 0
        4 SETLIST                          R2 R3 1 [1]
        6 SETTABLEKS                       R2 R1 K0 ["selectedRows"]
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K1 ["selectAll"]
       11 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETIMPORT                        R2 K2 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R7 R5 K3 ["arrowColumn"]
       10 JUMPIFNOTEQKS                    R7 K4 [""] ; [+6]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K5 ["ICON_CURRENT_FRAME"]
       15 SETTABLEKS                       R7 R5 K3 ["arrowColumn"]
       17 GETUPVAL                         R7 0
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          VAL R5
       20 NAMECALL                         R7 R7 K6 ["setState"]
       22 CALL                             R7 2 0
       23 GETTABLEKS                       R7 R1 K7 ["CurrentThreadId"]
       25 GETTABLEKS                       R8 R5 K8 ["frameColumn"]
       27 GETTABLEKS                       R9 R1 K9 ["setCurrentFrameNumber"]
       29 MOVE                             R10 R7
       30 MOVE                             R11 R8
       31 CALL                             R9 2 0
       32 GETIMPORT                        R9 K11 [game]
       34 LOADK                            R11 K12 ["DebuggerUIService"]
       35 NAMECALL                         R9 R9 K13 ["GetService"]
       37 CALL                             R9 2 1
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R11 R12 K0 ["props"]
       41 GETTABLEKS                       R10 R11 K14 ["Analytics"]
       43 GETUPVAL                         R13 2
       44 GETTABLEKS                       R12 R13 K15 ["CallstackChangeFrame"]
       46 LOADK                            R13 K16 ["CallstackComponent"]
       47 NAMECALL                         R10 R10 K17 ["report"]
       49 CALL                             R10 3 0
       50 GETTABLEKS                       R10 R5 K18 ["scriptGUID"]
       52 JUMPIFEQKS                       R10 K4 [""] ; [+47]
       54 GETTABLEKS                       R10 R5 K19 ["sourceColumn"]
       56 JUMPIFEQKS                       R10 K4 [""] ; [+43]
       58 GETTABLEKS                       R10 R5 K20 ["lineColumn"]
       60 JUMPIFEQKS                       R10 K4 [""] ; [+39]
       62 JUMPIFNOT                        R8 ; [+37]
       63 LOADN                            R10 1
       64 JUMPIFNOTLT                      R10 R8 ; [+12]
       66 GETTABLEKS                       R12 R5 K18 ["scriptGUID"]
       68 GETTABLEKS                       R13 R1 K21 ["CurrentDebuggerConnectionId"]
       70 GETTABLEKS                       R14 R5 K20 ["lineColumn"]
       72 LOADB                            R15 0
       73 NAMECALL                         R10 R9 K22 ["SetScriptLineMarker"]
       75 CALL                             R10 5 0
       76 JUMP                             ; [+6]
       77 GETTABLEKS                       R12 R1 K21 ["CurrentDebuggerConnectionId"]
       79 LOADB                            R13 0
       80 NAMECALL                         R10 R9 K23 ["RemoveScriptLineMarkers"]
       82 CALL                             R10 3 0
       83 GETTABLEKS                       R12 R5 K18 ["scriptGUID"]
       85 GETTABLEKS                       R13 R1 K21 ["CurrentDebuggerConnectionId"]
       87 GETTABLEKS                       R14 R5 K20 ["lineColumn"]
       89 LOADB                            R15 0
       90 NAMECALL                         R10 R9 K24 ["OpenScriptAtLine"]
       92 CALL                             R10 5 0
       93 GETTABLEKS                       R10 R1 K25 ["onCurrentFrameChanged"]
       95 GETTABLEKS                       R11 R1 K21 ["CurrentDebuggerConnectionId"]
       97 MOVE                             R12 R7
       98 MOVE                             R13 R8
       99 CALL                             R10 3 0
      100 FORGLOOP                         R2 1 ; [-93]
      102 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R1 K0 [""]
        1 GETIMPORT                        R2 K2 [pairs]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K3 ["props"]
        6 GETTABLEKS                       R3 R5 K4 ["ColumnFilter"]
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 GETUPVAL                         R10 1
       11 GETTABLE                         R9 R10 R6
       12 GETTABLE                         R8 R0 R9
       13 FASTCALL1                        TYPEOF R8 ; [+2]
       14 GETIMPORT                        R7 K6 [typeof]
       16 CALL                             R7 1 1
       17 JUMPIFNOTEQKS                    R7 K7 ["EnumItem"] ; [+10]
       19 MOVE                             R7 R1
       20 GETUPVAL                         R12 1
       21 GETTABLE                         R11 R12 R6
       22 GETTABLE                         R10 R0 R11
       23 GETTABLEKS                       R8 R10 K8 ["Name"]
       25 LOADK                            R9 K9 ["\t"]
       26 CONCAT                           R1 R7 R9
       27 JUMP                             ; [+6]
       28 MOVE                             R7 R1
       29 GETUPVAL                         R11 1
       30 GETTABLE                         R10 R11 R6
       31 GETTABLE                         R8 R0 R10
       32 LOADK                            R9 K9 ["\t"]
       33 CONCAT                           R1 R7 R9
       34 FORGLOOP                         R2 2 ; [-25]
       36 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["selectedRows"]
        5 LENGTH                           R1 R0
        6 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
        8 RETURN                           R0 0
        9 LOADK                            R1 K3 [""]
       10 GETIMPORT                        R2 K5 [ipairs]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 3
       14 FORGPREP_INEXT                   R2
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K6 ["getTreeChildren"]
       18 MOVE                             R9 R6
       19 CALL                             R8 1 1
       20 LENGTH                           R7 R8
       21 JUMPIFNOTEQKN                    R7 K2 [0] ; [+11]
       23 MOVE                             R7 R1
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R10 R11 K7 ["rowToString"]
       27 MOVE                             R11 R6
       28 CALL                             R10 1 1
       29 MOVE                             R8 R10
       30 LOADK                            R9 K8 ["\n"]
       31 CONCAT                           R1 R7 R9
       32 JUMP                             ; [+22]
       33 MOVE                             R7 R1
       34 GETTABLEKS                       R8 R6 K9 ["arrowColumn"]
       36 LOADK                            R9 K8 ["\n"]
       37 CONCAT                           R1 R7 R9
       38 GETIMPORT                        R7 K5 [ipairs]
       40 GETTABLEKS                       R8 R6 K10 ["children"]
       42 CALL                             R7 1 3
       43 FORGPREP_INEXT                   R7
       44 MOVE                             R12 R1
       45 GETUPVAL                         R16 0
       46 GETTABLEKS                       R15 R16 K7 ["rowToString"]
       48 MOVE                             R16 R11
       49 CALL                             R15 1 1
       50 MOVE                             R13 R15
       51 LOADK                            R14 K8 ["\n"]
       52 CONCAT                           R1 R12 R14
       53 FORGLOOP                         R7 2 [inext] ; [-10]
       55 FORGLOOP                         R2 2 [inext] ; [-41]
       57 GETUPVAL                         R2 1
       58 MOVE                             R4 R1
       59 NAMECALL                         R2 R2 K11 ["CopyToClipboard"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K2 [{"selectedRows", "selectAll"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["selectedRows"]
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["selectAll"]
        7 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["state"]
        8 GETTABLEKS                       R3 R4 K2 ["selectedRows"]
       10 LENGTH                           R2 R3
       11 JUMPIFNOTEQKN                    R2 K3 [1] ; [+17]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["state"]
       16 GETTABLEKS                       R3 R4 K2 ["selectedRows"]
       18 GETTABLEN                        R2 R3 1
       19 GETTABLEKS                       R3 R2 K4 ["threadId"]
       21 JUMPIFNOT                        R3 ; [+7]
       22 GETTABLEKS                       R3 R2 K4 ["threadId"]
       24 GETTABLEKS                       R4 R0 K5 ["CurrentThreadId"]
       26 JUMPIFEQ                         R3 R4 ; [+2]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [ipairs]
       31 GETTABLEKS                       R3 R0 K8 ["RootItems"]
       33 CALL                             R2 1 3
       34 FORGPREP_INEXT                   R2
       35 GETTABLEKS                       R7 R0 K5 ["CurrentThreadId"]
       37 GETTABLEKS                       R8 R6 K4 ["threadId"]
       39 JUMPIFNOTEQ                      R7 R8 ; [+19]
       41 GETIMPORT                        R7 K7 [ipairs]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K9 ["getTreeChildren"]
       46 MOVE                             R9 R6
       47 CALL                             R8 1 -1
       48 CALL                             R7 -1 3
       49 FORGPREP_INEXT                   R7
       50 FASTCALL2                        TABLE_INSERT R1 R11 ; [+5]
       52 MOVE                             R13 R1
       53 MOVE                             R14 R11
       54 GETIMPORT                        R12 K12 [table.insert]
       56 CALL                             R12 2 0
       57 FORGLOOP                         R7 2 [inext] ; [-8]
       59 FORGLOOP                         R2 2 [inext] ; [-25]
       61 GETUPVAL                         R2 0
       62 NEWCLOSURE                       R4 P0
       63 CAPTURE                          VAL R1
       64 NAMECALL                         R2 R2 K13 ["setState"]
       66 CALL                             R2 2 0
       67 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["CallstackActionIds"]
        5 GETTABLEKS                       R2 R3 K2 ["CopySelected"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+6]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K3 ["copySelectedRows"]
       12 CALL                             R2 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K1 ["CallstackActionIds"]
       17 GETTABLEKS                       R2 R3 K4 ["SelectAll"]
       19 JUMPIFNOTEQ                      R1 R2 ; [+5]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K5 ["selectAllRows"]
       24 CALL                             R2 0 0
       25 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K2 [{"selectedRows", "selectAll"}]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["item"]
        6 SETLIST                          R2 R3 1 [1]
        8 SETTABLEKS                       R2 R1 K0 ["selectedRows"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K1 ["selectAll"]
       13 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["selectAll"]
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETTABLEKS                       R2 R0 K2 ["item"]
        8 GETTABLEKS                       R1 R2 K3 ["threadId"]
       10 JUMPIFNOT                        R1 ; [+17]
       11 GETTABLEKS                       R2 R0 K2 ["item"]
       13 GETTABLEKS                       R1 R2 K3 ["threadId"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["props"]
       18 GETTABLEKS                       R2 R3 K5 ["CurrentThreadId"]
       20 JUMPIFEQ                         R1 R2 ; [+7]
       22 GETUPVAL                         R1 0
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R1 R1 K6 ["setState"]
       27 CALL                             R1 2 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R1 R2 K4 ["props"]
       31 GETTABLEKS                       R2 R1 K7 ["Localization"]
       33 GETTABLEKS                       R3 R1 K8 ["Plugin"]
       35 NAMECALL                         R3 R3 K9 ["get"]
       37 CALL                             R3 1 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K10 ["getCallstackActions"]
       41 MOVE                             R5 R2
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K11 ["onMenuActionSelected"]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 2
       47 MOVE                             R6 R3
       48 MOVE                             R7 R4
       49 GETUPVAL                         R9 3
       50 GETTABLEKS                       R8 R9 K12 ["CallstackActionsOrder"]
       52 CALL                             R5 3 0
       53 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["props"]
        4 GETTABLEKS                       R1 R2 K1 ["CurrentDST"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+8]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["loadThreadData"]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 GETUPVAL                         R3 1
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K2 ["props"]
        8 GETTABLEKS                       R6 R7 K3 ["CurrentDebuggerConnectionId"]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K2 ["props"]
       13 GETTABLEKS                       R7 R8 K4 ["CurrentDST"]
       15 GETIMPORT                        R8 K6 [game]
       17 LOADK                            R10 K7 ["DebuggerConnectionManager"]
       18 NAMECALL                         R8 R8 K8 ["GetService"]
       20 CALL                             R8 2 1
       21 MOVE                             R11 R6
       22 NAMECALL                         R9 R8 K9 ["GetConnectionById"]
       24 CALL                             R9 2 1
       25 GETTABLEKS                       R11 R4 K10 ["children"]
       27 GETTABLEN                        R10 R11 1
       28 GETTABLEKS                       R12 R10 K11 ["lineColumn"]
       30 JUMPIFNOTEQKN                    R12 K12 [-1] ; [+2]
       32 LOADB                            R11 0 +1
       33 LOADB                            R11 1
       34 GETTABLEKS                       R12 R4 K13 ["threadId"]
       36 JUMPIFNOT                        R11 ; [+35]
       37 GETIMPORT                        R13 K6 [game]
       39 LOADK                            R15 K14 ["DebuggerUIService"]
       40 NAMECALL                         R13 R13 K8 ["GetService"]
       42 CALL                             R13 2 1
       43 GETTABLEKS                       R16 R10 K15 ["scriptGUID"]
       45 MOVE                             R17 R6
       46 GETTABLEKS                       R18 R10 K11 ["lineColumn"]
       48 LOADB                            R19 0
       49 NAMECALL                         R14 R13 K16 ["OpenScriptAtLine"]
       51 CALL                             R14 5 0
       52 GETTABLEKS                       R16 R10 K15 ["scriptGUID"]
       54 MOVE                             R17 R6
       55 GETTABLEKS                       R18 R10 K11 ["lineColumn"]
       57 LOADB                            R19 1
       58 NAMECALL                         R14 R13 K17 ["SetScriptLineMarker"]
       60 CALL                             R14 5 0
       61 GETUPVAL                         R16 0
       62 GETTABLEKS                       R15 R16 K2 ["props"]
       64 GETTABLEKS                       R14 R15 K18 ["onLoadAllVariablesForThreadAndFrame"]
       66 MOVE                             R15 R12
       67 MOVE                             R16 R9
       68 LOADN                            R17 0
       69 MOVE                             R18 R13
       70 CALL                             R14 4 0
       71 JUMP                             ; [+25]
       72 GETIMPORT                        R13 K6 [game]
       74 LOADK                            R15 K19 ["CrossDMScriptChangeListener"]
       75 NAMECALL                         R13 R13 K8 ["GetService"]
       77 CALL                             R13 2 1
       78 MOVE                             R16 R12
       79 NAMECALL                         R14 R9 K20 ["GetThreadById"]
       81 CALL                             R14 2 1
       82 GETUPVAL                         R17 0
       83 GETTABLEKS                       R16 R17 K2 ["props"]
       85 GETTABLEKS                       R15 R16 K21 ["onPopulateCallstackThreadThunk"]
       87 MOVE                             R16 R14
       88 MOVE                             R17 R9
       89 MOVE                             R18 R7
       90 MOVE                             R19 R13
       91 NEWCLOSURE                       R20 P0
       92 CAPTURE                          VAL R7
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R6
       96 CALL                             R15 5 0
       97 FORGLOOP                         R1 2 ; [-93]
       99 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_23:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["DebuggerUIService"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K4 ["props"]
        9 GETTABLEKS                       R3 R4 K5 ["setCurrentFrameNumber"]
       11 GETTABLEKS                       R4 R0 K6 ["ThreadId"]
       13 LOADN                            R5 1
       14 CALL                             R3 2 0
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K4 ["props"]
       18 GETTABLEKS                       R3 R4 K7 ["onCurrentFrameChanged"]
       20 MOVE                             R4 R1
       21 GETTABLEKS                       R5 R0 K6 ["ThreadId"]
       23 LOADN                            R6 1
       24 CALL                             R3 3 0
       25 LOADN                            R5 0
       26 NAMECALL                         R3 R0 K8 ["GetFrame"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R6 R3 K9 ["Script"]
       31 MOVE                             R7 R1
       32 GETTABLEKS                       R8 R3 K10 ["Line"]
       34 LOADB                            R9 1
       35 NAMECALL                         R4 R2 K11 ["SetScriptLineMarker"]
       37 CALL                             R4 5 0
       38 GETTABLEKS                       R6 R3 K9 ["Script"]
       40 MOVE                             R7 R1
       41 GETTABLEKS                       R8 R3 K10 ["Line"]
       43 LOADB                            R9 0
       44 NAMECALL                         R4 R2 K12 ["OpenScriptAtLine"]
       46 CALL                             R4 5 0
       47 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["onStepAction"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R2 K3 ["stepOverActionV2"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K4 ["CurrentDebuggerConnectionId"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["props"]
       18 GETTABLEKS                       R3 R4 K5 ["CurrentThreadId"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["onStepAction"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R2 K3 ["stepIntoActionV2"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K4 ["CurrentDebuggerConnectionId"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["props"]
       18 GETTABLEKS                       R3 R4 K5 ["CurrentThreadId"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["onStepAction"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R2 K3 ["stepOutActionV2"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K4 ["CurrentDebuggerConnectionId"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["props"]
       18 GETTABLEKS                       R3 R4 K5 ["CurrentThreadId"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_27:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["ArrowColumn"]
        5 LOADN                            R5 1
        6 GETTABLEKS                       R7 R0 K1 ["props"]
        8 GETTABLEKS                       R6 R7 K2 ["ColumnFilter"]
       10 LENGTH                           R3 R6
       11 LOADN                            R4 1
       12 FORNPREP                         R3
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R10 R0 K1 ["props"]
       16 GETTABLEKS                       R9 R10 K2 ["ColumnFilter"]
       18 GETTABLE                         R8 R9 R5
       19 GETTABLE                         R6 R7 R8
       20 ADD                              R2 R2 R6
       21 FORNLOOP                         R3
       22 MOVE                             R4 R1
       23 GETIMPORT                        R5 K5 [UDim.new]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R7 R8 K0 ["ArrowColumn"]
       28 DIV                              R6 R7 R2
       29 LOADN                            R7 0
       30 CALL                             R5 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R3 K8 [table.insert]
       34 CALL                             R3 -1 0
       35 LOADN                            R5 1
       36 GETTABLEKS                       R7 R0 K1 ["props"]
       38 GETTABLEKS                       R6 R7 K2 ["ColumnFilter"]
       40 LENGTH                           R3 R6
       41 LOADN                            R4 1
       42 FORNPREP                         R3
       43 MOVE                             R7 R1
       44 GETIMPORT                        R8 K5 [UDim.new]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R14 R0 K1 ["props"]
       49 GETTABLEKS                       R13 R14 K2 ["ColumnFilter"]
       51 GETTABLE                         R12 R13 R5
       52 GETTABLE                         R10 R11 R12
       53 DIV                              R9 R10 R2
       54 LOADN                            R10 0
       55 CALL                             R8 2 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R6 K8 [table.insert]
       59 CALL                             R6 -1 0
       60 FORNLOOP                         R3
       61 DUPTABLE                         R3 K12 [{"selectedRows", "selectAll", "sizes"}]
       62 NEWTABLE                         R4 0 0
       64 SETTABLEKS                       R4 R3 K9 ["selectedRows"]
       66 LOADB                            R4 0
       67 SETTABLEKS                       R4 R3 K10 ["selectAll"]
       69 SETTABLEKS                       R1 R3 K11 ["sizes"]
       71 SETTABLEKS                       R3 R0 K13 ["state"]
       73 NEWCLOSURE                       R3 P0
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R3 R0 K14 ["OnColumnSizesChange"]
       77 DUPCLOSURE                       R3 K15 [PROTO_10]
       78 SETTABLEKS                       R3 R0 K16 ["getTreeChildren"]
       80 NEWCLOSURE                       R3 P2
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          UPVAL U2
       84 SETTABLEKS                       R3 R0 K17 ["onSelectionChange"]
       86 NEWCLOSURE                       R3 P3
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U3
       89 SETTABLEKS                       R3 R0 K18 ["rowToString"]
       91 NEWCLOSURE                       R3 P4
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U4
       94 SETTABLEKS                       R3 R0 K19 ["copySelectedRows"]
       96 NEWCLOSURE                       R3 P5
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R3 R0 K20 ["selectAllRows"]
      100 NEWCLOSURE                       R3 P6
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R3 R0 K21 ["onMenuActionSelected"]
      105 NEWCLOSURE                       R3 P7
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          UPVAL U5
      110 SETTABLEKS                       R3 R0 K22 ["onRightClick"]
      112 NEWCLOSURE                       R3 P8
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R3 R0 K23 ["onExpansionChange"]
      116 DUPCLOSURE                       R3 K24 [PROTO_22]
      117 SETTABLEKS                       R3 R0 K16 ["getTreeChildren"]
      119 NEWCLOSURE                       R3 P10
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R3 R0 K25 ["loadThreadData"]
      123 NEWCLOSURE                       R3 P11
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U5
      126 SETTABLEKS                       R3 R0 K26 ["onStepOver"]
      128 NEWCLOSURE                       R3 P12
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U5
      131 SETTABLEKS                       R3 R0 K27 ["onStepInto"]
      133 NEWCLOSURE                       R3 P13
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U5
      136 SETTABLEKS                       R3 R0 K28 ["onStepOut"]
      138 RETURN                           R0 0

PROTO_28:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["sizes"]
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
       93 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R6 1
        4 GETTABLE                         R5 R6 R1
        5 SETTABLEKS                       R5 R4 K0 ["Width"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["ColumnFilter"]
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 NEWTABLE                         R5 0 1
       15 DUPTABLE                         R6 K6 [{"Name", "Key"}]
       16 LOADK                            R7 K7 [""]
       17 SETTABLEKS                       R7 R6 K4 ["Name"]
       19 GETUPVAL                         R8 0
       20 GETTABLEN                        R7 R8 1
       21 SETTABLEKS                       R7 R6 K5 ["Key"]
       23 SETLIST                          R5 R6 1 [1]
       25 GETIMPORT                        R6 K9 [ipairs]
       27 MOVE                             R7 R4
       28 CALL                             R6 1 3
       29 FORGPREP_INEXT                   R6
       30 DUPTABLE                         R11 K11 [{"Name", "Key", "Tooltip"}]
       31 LOADK                            R14 K12 ["Callstack"]
       32 MOVE                             R15 R10
       33 NAMECALL                         R12 R2 K13 ["getText"]
       35 CALL                             R12 3 1
       36 SETTABLEKS                       R12 R11 K4 ["Name"]
       38 GETUPVAL                         R13 1
       39 GETTABLE                         R12 R13 R10
       40 SETTABLEKS                       R12 R11 K5 ["Key"]
       42 LOADK                            R15 K12 ["Callstack"]
       43 MOVE                             R17 R10
       44 LOADK                            R18 K10 ["Tooltip"]
       45 CONCAT                           R16 R17 R18
       46 NAMECALL                         R13 R2 K13 ["getText"]
       48 CALL                             R13 3 1
       49 ORK                              R12 R13 K14 []
       50 SETTABLEKS                       R12 R11 K10 ["Tooltip"]
       52 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       54 MOVE                             R13 R5
       55 MOVE                             R14 R11
       56 GETIMPORT                        R12 K17 [table.insert]
       58 CALL                             R12 2 0
       59 FORGLOOP                         R6 2 [inext] ; [-30]
       61 GETTABLEKS                       R7 R0 K18 ["state"]
       63 GETTABLEKS                       R6 R7 K19 ["sizes"]
       65 GETUPVAL                         R7 2
       66 MOVE                             R8 R5
       67 NEWCLOSURE                       R9 P0
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R6
       70 CALL                             R7 2 1
       71 GETUPVAL                         R10 4
       72 GETTABLEKS                       R9 R10 K20 ["HEADER_HEIGHT"]
       74 GETUPVAL                         R12 4
       75 GETTABLEKS                       R11 R12 K22 ["BUTTON_PADDING"]
       77 MULK                             R10 R11 K21 [2]
       78 ADD                              R8 R9 R10
       79 GETUPVAL                         R10 5
       80 GETTABLEKS                       R9 R10 K23 ["createElement"]
       82 GETUPVAL                         R10 6
       83 DUPTABLE                         R11 K27 [{"Size", "Style", "Layout"}]
       84 GETIMPORT                        R12 K30 [UDim2.fromScale]
       86 LOADN                            R13 1
       87 LOADN                            R14 1
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K24 ["Size"]
       91 LOADK                            R12 K31 ["Box"]
       92 SETTABLEKS                       R12 R11 K25 ["Style"]
       94 GETIMPORT                        R12 K35 [Enum.FillDirection.Vertical]
       96 SETTABLEKS                       R12 R11 K26 ["Layout"]
       98 DUPTABLE                         R12 K38 [{"HeaderView", "BodyView"}]
       99 GETUPVAL                         R14 5
      100 GETTABLEKS                       R13 R14 K23 ["createElement"]
      102 GETUPVAL                         R14 6
      103 DUPTABLE                         R15 K44 [{"Size", "Spacing", "Padding", "LayoutOrder", "Style", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
      104 GETIMPORT                        R16 K46 [UDim2.new]
      106 LOADN                            R17 1
      107 LOADN                            R18 0
      108 LOADN                            R19 0
      109 MOVE                             R20 R8
      110 CALL                             R16 4 1
      111 SETTABLEKS                       R16 R15 K24 ["Size"]
      113 GETUPVAL                         R17 4
      114 GETTABLEKS                       R16 R17 K22 ["BUTTON_PADDING"]
      116 SETTABLEKS                       R16 R15 K39 ["Spacing"]
      118 GETUPVAL                         R17 4
      119 GETTABLEKS                       R16 R17 K22 ["BUTTON_PADDING"]
      121 SETTABLEKS                       R16 R15 K40 ["Padding"]
      123 LOADN                            R16 1
      124 SETTABLEKS                       R16 R15 K41 ["LayoutOrder"]
      126 LOADK                            R16 K31 ["Box"]
      127 SETTABLEKS                       R16 R15 K25 ["Style"]
      129 GETIMPORT                        R16 K48 [Enum.FillDirection.Horizontal]
      131 SETTABLEKS                       R16 R15 K26 ["Layout"]
      133 GETIMPORT                        R16 K50 [Enum.VerticalAlignment.Center]
      135 SETTABLEKS                       R16 R15 K42 ["VerticalAlignment"]
      137 GETIMPORT                        R16 K52 [Enum.HorizontalAlignment.Left]
      139 SETTABLEKS                       R16 R15 K43 ["HorizontalAlignment"]
      141 DUPTABLE                         R16 K55 [{"ButtonContainer", "ColContainer"}]
      142 GETUPVAL                         R18 5
      143 GETTABLEKS                       R17 R18 K23 ["createElement"]
      145 GETUPVAL                         R18 6
      146 DUPTABLE                         R19 K56 [{"Size", "LayoutOrder", "Style", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
      147 GETIMPORT                        R20 K46 [UDim2.new]
      149 LOADK                            R21 K57 [0.5]
      150 LOADN                            R22 0
      151 LOADN                            R23 0
      152 GETUPVAL                         R25 4
      153 GETTABLEKS                       R24 R25 K20 ["HEADER_HEIGHT"]
      155 CALL                             R20 4 1
      156 SETTABLEKS                       R20 R19 K24 ["Size"]
      158 LOADN                            R20 1
      159 SETTABLEKS                       R20 R19 K41 ["LayoutOrder"]
      161 LOADK                            R20 K31 ["Box"]
      162 SETTABLEKS                       R20 R19 K25 ["Style"]
      164 GETIMPORT                        R20 K48 [Enum.FillDirection.Horizontal]
      166 SETTABLEKS                       R20 R19 K26 ["Layout"]
      168 GETIMPORT                        R20 K50 [Enum.VerticalAlignment.Center]
      170 SETTABLEKS                       R20 R19 K42 ["VerticalAlignment"]
      172 GETIMPORT                        R20 K52 [Enum.HorizontalAlignment.Left]
      174 SETTABLEKS                       R20 R19 K43 ["HorizontalAlignment"]
      176 DUPTABLE                         R20 K61 [{"StepIntoButton", "StepOverButton", "StepOutButton"}]
      177 GETUPVAL                         R22 5
      178 GETTABLEKS                       R21 R22 K23 ["createElement"]
      180 GETUPVAL                         R22 7
      181 DUPTABLE                         R23 K66 [{"Size", "LayoutOrder", "LeftIcon", "TooltipText", "OnClick", "Disabled"}]
      182 GETIMPORT                        R24 K46 [UDim2.new]
      184 LOADN                            R25 0
      185 GETUPVAL                         R27 4
      186 GETTABLEKS                       R26 R27 K67 ["BUTTON_SIZE"]
      188 LOADN                            R27 0
      189 GETUPVAL                         R29 4
      190 GETTABLEKS                       R28 R29 K67 ["BUTTON_SIZE"]
      192 CALL                             R24 4 1
      193 SETTABLEKS                       R24 R23 K24 ["Size"]
      195 LOADN                            R24 1
      196 SETTABLEKS                       R24 R23 K41 ["LayoutOrder"]
      198 LOADK                            R24 K68 ["rbxasset://textures/Debugger/Step-In.png"]
      199 SETTABLEKS                       R24 R23 K62 ["LeftIcon"]
      201 LOADK                            R26 K69 ["Common"]
      202 LOADK                            R27 K70 ["stepIntoActionV2"]
      203 NAMECALL                         R24 R2 K13 ["getText"]
      205 CALL                             R24 3 1
      206 SETTABLEKS                       R24 R23 K63 ["TooltipText"]
      208 GETTABLEKS                       R24 R0 K71 ["onStepInto"]
      210 SETTABLEKS                       R24 R23 K64 ["OnClick"]
      212 LOADB                            R24 1
      213 GETTABLEKS                       R26 R0 K0 ["props"]
      215 GETTABLEKS                       R25 R26 K72 ["CurrentThreadId"]
      217 JUMPIFEQKNIL                     R25 ; [+5]
      219 GETTABLEKS                       R25 R0 K0 ["props"]
      221 GETTABLEKS                       R24 R25 K73 ["HitException"]
      223 SETTABLEKS                       R24 R23 K65 ["Disabled"]
      225 CALL                             R21 2 1
      226 SETTABLEKS                       R21 R20 K58 ["StepIntoButton"]
      228 GETUPVAL                         R22 5
      229 GETTABLEKS                       R21 R22 K23 ["createElement"]
      231 GETUPVAL                         R22 7
      232 DUPTABLE                         R23 K66 [{"Size", "LayoutOrder", "LeftIcon", "TooltipText", "OnClick", "Disabled"}]
      233 GETIMPORT                        R24 K46 [UDim2.new]
      235 LOADN                            R25 0
      236 GETUPVAL                         R27 4
      237 GETTABLEKS                       R26 R27 K67 ["BUTTON_SIZE"]
      239 LOADN                            R27 0
      240 GETUPVAL                         R29 4
      241 GETTABLEKS                       R28 R29 K67 ["BUTTON_SIZE"]
      243 CALL                             R24 4 1
      244 SETTABLEKS                       R24 R23 K24 ["Size"]
      246 LOADN                            R24 2
      247 SETTABLEKS                       R24 R23 K41 ["LayoutOrder"]
      249 LOADK                            R24 K74 ["rbxasset://textures/Debugger/Step-Over.png"]
      250 SETTABLEKS                       R24 R23 K62 ["LeftIcon"]
      252 LOADK                            R26 K69 ["Common"]
      253 LOADK                            R27 K75 ["stepOverActionV2"]
      254 NAMECALL                         R24 R2 K13 ["getText"]
      256 CALL                             R24 3 1
      257 SETTABLEKS                       R24 R23 K63 ["TooltipText"]
      259 GETTABLEKS                       R24 R0 K76 ["onStepOver"]
      261 SETTABLEKS                       R24 R23 K64 ["OnClick"]
      263 LOADB                            R24 1
      264 GETTABLEKS                       R26 R0 K0 ["props"]
      266 GETTABLEKS                       R25 R26 K72 ["CurrentThreadId"]
      268 JUMPIFEQKNIL                     R25 ; [+5]
      270 GETTABLEKS                       R25 R0 K0 ["props"]
      272 GETTABLEKS                       R24 R25 K73 ["HitException"]
      274 SETTABLEKS                       R24 R23 K65 ["Disabled"]
      276 CALL                             R21 2 1
      277 SETTABLEKS                       R21 R20 K59 ["StepOverButton"]
      279 GETUPVAL                         R22 5
      280 GETTABLEKS                       R21 R22 K23 ["createElement"]
      282 GETUPVAL                         R22 7
      283 DUPTABLE                         R23 K66 [{"Size", "LayoutOrder", "LeftIcon", "TooltipText", "OnClick", "Disabled"}]
      284 GETIMPORT                        R24 K46 [UDim2.new]
      286 LOADN                            R25 0
      287 GETUPVAL                         R27 4
      288 GETTABLEKS                       R26 R27 K67 ["BUTTON_SIZE"]
      290 LOADN                            R27 0
      291 GETUPVAL                         R29 4
      292 GETTABLEKS                       R28 R29 K67 ["BUTTON_SIZE"]
      294 CALL                             R24 4 1
      295 SETTABLEKS                       R24 R23 K24 ["Size"]
      297 LOADN                            R24 3
      298 SETTABLEKS                       R24 R23 K41 ["LayoutOrder"]
      300 LOADK                            R24 K77 ["rbxasset://textures/Debugger/Step-Out.png"]
      301 SETTABLEKS                       R24 R23 K62 ["LeftIcon"]
      303 LOADK                            R26 K69 ["Common"]
      304 LOADK                            R27 K78 ["stepOutActionV2"]
      305 NAMECALL                         R24 R2 K13 ["getText"]
      307 CALL                             R24 3 1
      308 SETTABLEKS                       R24 R23 K63 ["TooltipText"]
      310 GETTABLEKS                       R24 R0 K79 ["onStepOut"]
      312 SETTABLEKS                       R24 R23 K64 ["OnClick"]
      314 LOADB                            R24 1
      315 GETTABLEKS                       R26 R0 K0 ["props"]
      317 GETTABLEKS                       R25 R26 K72 ["CurrentThreadId"]
      319 JUMPIFEQKNIL                     R25 ; [+5]
      321 GETTABLEKS                       R25 R0 K0 ["props"]
      323 GETTABLEKS                       R24 R25 K73 ["HitException"]
      325 SETTABLEKS                       R24 R23 K65 ["Disabled"]
      327 CALL                             R21 2 1
      328 SETTABLEKS                       R21 R20 K60 ["StepOutButton"]
      330 CALL                             R17 3 1
      331 SETTABLEKS                       R17 R16 K53 ["ButtonContainer"]
      333 GETUPVAL                         R18 5
      334 GETTABLEKS                       R17 R18 K23 ["createElement"]
      336 GETUPVAL                         R18 6
      337 DUPTABLE                         R19 K56 [{"Size", "LayoutOrder", "Style", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
      338 GETIMPORT                        R20 K46 [UDim2.new]
      340 LOADK                            R21 K57 [0.5]
      341 LOADN                            R22 0
      342 LOADN                            R23 0
      343 GETUPVAL                         R25 4
      344 GETTABLEKS                       R24 R25 K20 ["HEADER_HEIGHT"]
      346 CALL                             R20 4 1
      347 SETTABLEKS                       R20 R19 K24 ["Size"]
      349 LOADN                            R20 2
      350 SETTABLEKS                       R20 R19 K41 ["LayoutOrder"]
      352 LOADK                            R20 K31 ["Box"]
      353 SETTABLEKS                       R20 R19 K25 ["Style"]
      355 GETIMPORT                        R20 K48 [Enum.FillDirection.Horizontal]
      357 SETTABLEKS                       R20 R19 K26 ["Layout"]
      359 GETIMPORT                        R20 K50 [Enum.VerticalAlignment.Center]
      361 SETTABLEKS                       R20 R19 K42 ["VerticalAlignment"]
      363 GETIMPORT                        R20 K81 [Enum.HorizontalAlignment.Right]
      365 SETTABLEKS                       R20 R19 K43 ["HorizontalAlignment"]
      367 DUPTABLE                         R20 K83 [{"ColumnDropdown"}]
      368 GETUPVAL                         R22 5
      369 GETTABLEKS                       R21 R22 K23 ["createElement"]
      371 GETUPVAL                         R22 8
      372 DUPTABLE                         R23 K85 [{"LayoutOrder", "AutomaticSize"}]
      373 LOADN                            R24 1
      374 SETTABLEKS                       R24 R23 K41 ["LayoutOrder"]
      376 GETIMPORT                        R24 K87 [Enum.AutomaticSize.X]
      378 SETTABLEKS                       R24 R23 K84 ["AutomaticSize"]
      380 CALL                             R21 2 1
      381 SETTABLEKS                       R21 R20 K82 ["ColumnDropdown"]
      383 CALL                             R17 3 1
      384 SETTABLEKS                       R17 R16 K54 ["ColContainer"]
      386 CALL                             R13 3 1
      387 SETTABLEKS                       R13 R12 K36 ["HeaderView"]
      389 GETUPVAL                         R14 5
      390 GETTABLEKS                       R13 R14 K23 ["createElement"]
      392 GETUPVAL                         R14 6
      393 DUPTABLE                         R15 K88 [{"Size", "LayoutOrder", "Style"}]
      394 GETIMPORT                        R16 K46 [UDim2.new]
      396 LOADN                            R17 1
      397 LOADN                            R18 0
      398 LOADN                            R19 1
      399 MINUS                            R20 R8
      400 CALL                             R16 4 1
      401 SETTABLEKS                       R16 R15 K24 ["Size"]
      403 LOADN                            R16 2
      404 SETTABLEKS                       R16 R15 K41 ["LayoutOrder"]
      406 LOADK                            R16 K31 ["Box"]
      407 SETTABLEKS                       R16 R15 K25 ["Style"]
      409 DUPTABLE                         R16 K90 [{"TableView"}]
      410 GETUPVAL                         R18 5
      411 GETTABLEKS                       R17 R18 K23 ["createElement"]
      413 GETUPVAL                         R18 9
      414 DUPTABLE                         R19 K109 [{"Scroll", "Size", "Columns", "RootItems", "Stylizer", "Expansion", "GetChildren", "DisableTooltip", "OnSelectionChange", "RightClick", "OnExpansionChange", "FullSpan", "HighlightedRows", "OnColumnSizesChange", "UseDeficit", "UseScale", "ClampSize", "Padding", "ColumnHeaderHeight", "RowHeight", "ExpandOnDoubleClick"}]
      415 LOADB                            R20 1
      416 SETTABLEKS                       R20 R19 K91 ["Scroll"]
      418 GETIMPORT                        R20 K30 [UDim2.fromScale]
      420 LOADN                            R21 1
      421 LOADN                            R22 1
      422 CALL                             R20 2 1
      423 SETTABLEKS                       R20 R19 K24 ["Size"]
      425 SETTABLEKS                       R7 R19 K92 ["Columns"]
      427 GETTABLEKS                       R20 R1 K93 ["RootItems"]
      429 SETTABLEKS                       R20 R19 K93 ["RootItems"]
      431 SETTABLEKS                       R3 R19 K2 ["Stylizer"]
      433 GETTABLEKS                       R20 R1 K110 ["ExpansionTable"]
      435 SETTABLEKS                       R20 R19 K94 ["Expansion"]
      437 GETTABLEKS                       R20 R0 K111 ["getTreeChildren"]
      439 SETTABLEKS                       R20 R19 K95 ["GetChildren"]
      441 LOADB                            R20 0
      442 SETTABLEKS                       R20 R19 K96 ["DisableTooltip"]
      444 GETTABLEKS                       R20 R0 K112 ["onSelectionChange"]
      446 SETTABLEKS                       R20 R19 K97 ["OnSelectionChange"]
      448 GETTABLEKS                       R20 R0 K113 ["onRightClick"]
      450 SETTABLEKS                       R20 R19 K98 ["RightClick"]
      452 GETTABLEKS                       R20 R0 K114 ["onExpansionChange"]
      454 SETTABLEKS                       R20 R19 K99 ["OnExpansionChange"]
      456 LOADB                            R20 1
      457 SETTABLEKS                       R20 R19 K100 ["FullSpan"]
      459 GETTABLEKS                       R21 R0 K18 ["state"]
      461 GETTABLEKS                       R20 R21 K115 ["selectedRows"]
      463 SETTABLEKS                       R20 R19 K101 ["HighlightedRows"]
      465 GETTABLEKS                       R20 R0 K102 ["OnColumnSizesChange"]
      467 SETTABLEKS                       R20 R19 K102 ["OnColumnSizesChange"]
      469 LOADB                            R20 0
      470 SETTABLEKS                       R20 R19 K103 ["UseDeficit"]
      472 LOADB                            R20 1
      473 SETTABLEKS                       R20 R19 K104 ["UseScale"]
      475 LOADB                            R20 1
      476 SETTABLEKS                       R20 R19 K105 ["ClampSize"]
      478 LOADN                            R20 1
      479 SETTABLEKS                       R20 R19 K40 ["Padding"]
      481 GETUPVAL                         R21 4
      482 GETTABLEKS                       R20 R21 K116 ["COLUMN_HEADER_HEIGHT"]
      484 SETTABLEKS                       R20 R19 K106 ["ColumnHeaderHeight"]
      486 GETUPVAL                         R21 4
      487 GETTABLEKS                       R20 R21 K117 ["ROW_HEIGHT"]
      489 SETTABLEKS                       R20 R19 K107 ["RowHeight"]
      491 LOADB                            R20 1
      492 SETTABLEKS                       R20 R19 K108 ["ExpandOnDoubleClick"]
      494 CALL                             R17 2 1
      495 SETTABLEKS                       R17 R16 K89 ["TableView"]
      497 CALL                             R13 3 1
      498 SETTABLEKS                       R13 R12 K37 ["BodyView"]
      500 CALL                             R9 3 -1
      501 RETURN                           R9 -1

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["Common"]
        2 GETTABLEKS                       R4 R2 K1 ["debuggerConnectionIdToCurrentThreadId"]
        4 GETTABLEKS                       R5 R2 K2 ["currentDebuggerConnectionId"]
        6 GETTABLE                         R3 R4 R5
        7 GETTABLEKS                       R4 R0 K3 ["Callstack"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+18]
       11 DUPTABLE                         R5 K8 [{"RootItems", "ExpansionTable", "CurrentThreadId", "ColumnFilter"}]
       12 NEWTABLE                         R6 0 0
       14 SETTABLEKS                       R6 R5 K4 ["RootItems"]
       16 NEWTABLE                         R6 0 0
       18 SETTABLEKS                       R6 R5 K5 ["ExpansionTable"]
       20 LOADNIL                          R6
       21 SETTABLEKS                       R6 R5 K6 ["CurrentThreadId"]
       23 GETTABLEKS                       R6 R4 K9 ["listOfEnabledColumns"]
       25 SETTABLEKS                       R6 R5 K7 ["ColumnFilter"]
       27 RETURN                           R5 1
       28 GETTABLEKS                       R6 R2 K10 ["debuggerConnectionIdToDST"]
       30 GETTABLEKS                       R7 R2 K2 ["currentDebuggerConnectionId"]
       32 GETTABLE                         R5 R6 R7
       33 GETTABLEKS                       R7 R4 K11 ["stateTokenToCallstackVars"]
       35 GETTABLE                         R6 R7 R5
       36 FASTCALL1                        ASSERT R6 ; [+3]
       37 MOVE                             R8 R6
       38 GETIMPORT                        R7 K13 [assert]
       40 CALL                             R7 1 0
       41 GETTABLEKS                       R7 R6 K14 ["threadList"]
       43 NEWTABLE                         R8 0 0
       45 NEWTABLE                         R9 0 0
       47 GETIMPORT                        R10 K16 [ipairs]
       49 MOVE                             R11 R7
       50 CALL                             R10 1 3
       51 FORGPREP_INEXT                   R10
       52 GETUPVAL                         R15 0
       53 MOVE                             R16 R14
       54 MOVE                             R17 R6
       55 MOVE                             R18 R2
       56 GETTABLEKS                       R19 R0 K17 ["ScriptInfo"]
       58 CALL                             R15 4 1
       59 JUMPIFNOTEQKNIL                  R15 ; [+2]
       61 LOADB                            R17 0 +1
       62 LOADB                            R17 1
       63 FASTCALL1                        ASSERT R17 ; [+2]
       64 GETIMPORT                        R16 K13 [assert]
       66 CALL                             R16 1 0
       67 FASTCALL2                        TABLE_INSERT R8 R15 ; [+5]
       69 MOVE                             R17 R8
       70 MOVE                             R18 R15
       71 GETIMPORT                        R16 K20 [table.insert]
       73 CALL                             R16 2 0
       74 GETTABLEKS                       R16 R14 K21 ["threadId"]
       76 JUMPIFNOTEQ                      R16 R3 ; [+3]
       78 LOADB                            R16 1
       79 SETTABLE                         R16 R9 R15
       80 FORGLOOP                         R10 2 [inext] ; [-29]
       82 DUPTABLE                         R10 K25 [{"RootItems", "CurrentThreadId", "ExpansionTable", "ColumnFilter", "CurrentDebuggerConnectionId", "CurrentDST", "HitException"}]
       83 SETTABLEKS                       R8 R10 K4 ["RootItems"]
       85 SETTABLEKS                       R3 R10 K6 ["CurrentThreadId"]
       87 SETTABLEKS                       R9 R10 K5 ["ExpansionTable"]
       89 GETUPVAL                         R11 1
       90 GETTABLEKS                       R12 R4 K9 ["listOfEnabledColumns"]
       92 CALL                             R11 1 1
       93 SETTABLEKS                       R11 R10 K7 ["ColumnFilter"]
       95 GETTABLEKS                       R11 R2 K2 ["currentDebuggerConnectionId"]
       97 SETTABLEKS                       R11 R10 K22 ["CurrentDebuggerConnectionId"]
       99 GETTABLEKS                       R12 R2 K10 ["debuggerConnectionIdToDST"]
      101 GETTABLEKS                       R13 R2 K2 ["currentDebuggerConnectionId"]
      103 GETTABLE                         R11 R12 R13
      104 SETTABLEKS                       R11 R10 K23 ["CurrentDST"]
      106 JUMPIFNOT                        R3 ; [+4]
      107 GETTABLEKS                       R12 R2 K26 ["hitException"]
      109 GETTABLE                         R11 R12 R3
      110 JUMP                             ; [+1]
      111 LOADB                            R11 0
      112 SETTABLEKS                       R11 R10 K24 ["HitException"]
      114 RETURN                           R10 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_34:
        0 GETIMPORT                        R3 K1 [game]
        2 LOADK                            R5 K2 ["DebuggerUIService"]
        3 NAMECALL                         R3 R3 K3 ["GetService"]
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K1 [game]
        8 LOADK                            R6 K4 ["DebuggerConnectionManager"]
        9 NAMECALL                         R4 R4 K3 ["GetService"]
       11 CALL                             R4 2 1
       12 MOVE                             R7 R0
       13 NAMECALL                         R5 R4 K5 ["GetConnectionById"]
       15 CALL                             R5 2 1
       16 GETUPVAL                         R6 0
       17 GETUPVAL                         R7 1
       18 MOVE                             R8 R1
       19 MOVE                             R9 R5
       20 SUBK                             R10 R2 K6 [1]
       21 MOVE                             R11 R3
       22 CALL                             R7 4 -1
       23 CALL                             R6 -1 -1
       24 RETURN                           R6 -1

PROTO_35:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 -1
        9 RETURN                           R5 -1

PROTO_36:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 LOADK                            R6 K0 ["CallstackComponent"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R4 4 -1
        7 CALL                             R3 -1 -1
        8 RETURN                           R3 -1

PROTO_39:
        0 DUPTABLE                         R1 K6 [{"setCurrentFrameNumber", "onCurrentFrameChanged", "onPopulateCallstackThreadThunk", "onLoadAllVariablesForThreadAndFrame", "onColumnFilterChange", "onStepAction"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setCurrentFrameNumber"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["onCurrentFrameChanged"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["onPopulateCallstackThreadThunk"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R2 R1 K3 ["onLoadAllVariablesForThreadAndFrame"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 SETTABLEKS                       R2 R1 K4 ["onColumnFilterChange"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R2 R1 K5 ["onStepAction"]
       31 RETURN                           R1 1

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
       39 GETIMPORT                        R5 K4 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R7 R8 K2 ["Parent"]
       45 GETTABLEKS                       R6 R7 K10 ["CallstackDropdownField"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       50 GETTABLEKS                       R7 R6 K12 ["withContext"]
       52 GETTABLEKS                       R8 R6 K13 ["Analytics"]
       54 GETTABLEKS                       R9 R6 K14 ["Localization"]
       56 GETTABLEKS                       R10 R6 K15 ["PluginActions"]
       58 GETTABLEKS                       R11 R6 K16 ["Plugin"]
       60 GETIMPORT                        R12 K4 [require]
       62 GETTABLEKS                       R15 R0 K17 ["Src"]
       64 GETTABLEKS                       R14 R15 K18 ["Resources"]
       66 GETTABLEKS                       R13 R14 K19 ["AnalyticsEventNames"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R14 R3 K20 ["Style"]
       71 GETTABLEKS                       R13 R14 K21 ["Stylizer"]
       73 GETTABLEKS                       R14 R3 K22 ["Util"]
       75 GETTABLEKS                       R15 R14 K23 ["deepCopy"]
       77 GETTABLEKS                       R16 R3 K24 ["Dash"]
       79 GETTABLEKS                       R17 R16 K25 ["map"]
       81 GETTABLEKS                       R18 R16 K26 ["join"]
       83 GETTABLEKS                       R19 R3 K27 ["UI"]
       85 GETTABLEKS                       R20 R19 K28 ["Pane"]
       87 GETTABLEKS                       R21 R19 K29 ["TreeTable"]
       89 GETTABLEKS                       R22 R19 K30 ["IconButton"]
       91 GETTABLEKS                       R23 R19 K31 ["showContextMenu"]
       93 GETTABLEKS                       R25 R0 K17 ["Src"]
       95 GETTABLEKS                       R24 R25 K22 ["Util"]
       97 GETIMPORT                        R25 K4 [require]
       99 GETTABLEKS                       R26 R24 K32 ["ColumnResizeHelperFunctions"]
      101 CALL                             R25 1 1
      102 GETTABLEKS                       R27 R0 K17 ["Src"]
      104 GETTABLEKS                       R26 R27 K33 ["Actions"]
      106 GETIMPORT                        R27 K4 [require]
      108 GETTABLEKS                       R29 R26 K34 ["Callstack"]
      110 GETTABLEKS                       R28 R29 K35 ["SetCurrentFrameNumber"]
      112 CALL                             R27 1 1
      113 GETIMPORT                        R28 K4 [require]
      115 GETTABLEKS                       R30 R26 K34 ["Callstack"]
      117 GETTABLEKS                       R29 R30 K36 ["ColumnFilterChange"]
      119 CALL                             R28 1 1
      120 GETIMPORT                        R29 K4 [require]
      122 GETTABLEKS                       R33 R0 K17 ["Src"]
      124 GETTABLEKS                       R32 R33 K37 ["Thunks"]
      126 GETTABLEKS                       R31 R32 K38 ["Watch"]
      128 GETTABLEKS                       R30 R31 K39 ["LoadAllVariablesForThreadAndFrame"]
      130 CALL                             R29 1 1
      131 GETIMPORT                        R30 K4 [require]
      133 GETTABLEKS                       R34 R0 K17 ["Src"]
      135 GETTABLEKS                       R33 R34 K37 ["Thunks"]
      137 GETTABLEKS                       R32 R33 K34 ["Callstack"]
      139 GETTABLEKS                       R31 R32 K40 ["PopulateCallstackThreadThunk"]
      141 CALL                             R30 1 1
      142 GETIMPORT                        R31 K4 [require]
      144 GETTABLEKS                       R32 R24 K41 ["MakePluginActions"]
      146 CALL                             R31 1 1
      147 GETTABLEKS                       R33 R0 K17 ["Src"]
      149 GETTABLEKS                       R32 R33 K42 ["Models"]
      151 GETIMPORT                        R33 K4 [require]
      153 GETTABLEKS                       R35 R32 K34 ["Callstack"]
      155 GETTABLEKS                       R34 R35 K43 ["CallstackRow"]
      157 CALL                             R33 1 1
      158 GETTABLEKS                       R34 R1 K44 ["PureComponent"]
      160 LOADK                            R36 K45 ["CallstackComponent"]
      161 NAMECALL                         R34 R34 K46 ["extend"]
      163 CALL                             R34 2 1
      164 GETIMPORT                        R35 K4 [require]
      166 GETTABLEKS                       R38 R0 K17 ["Src"]
      168 GETTABLEKS                       R37 R38 K22 ["Util"]
      170 GETTABLEKS                       R36 R37 K47 ["Constants"]
      172 CALL                             R35 1 1
      173 GETIMPORT                        R36 K4 [require]
      175 GETTABLEKS                       R40 R0 K17 ["Src"]
      177 GETTABLEKS                       R39 R40 K37 ["Thunks"]
      179 GETTABLEKS                       R38 R39 K34 ["Callstack"]
      181 GETTABLEKS                       R37 R38 K48 ["StepHandlers"]
      183 CALL                             R36 1 1
      184 GETIMPORT                        R37 K50 [game]
      186 LOADK                            R39 K51 ["StudioService"]
      187 NAMECALL                         R37 R37 K52 ["GetService"]
      189 CALL                             R37 2 1
      190 NEWTABLE                         R38 0 1
      192 LOADK                            R39 K53 ["arrowColumn"]
      193 SETTABLEN                        R39 R38 1
      194 DUPTABLE                         R39 K58 [{"FrameColumn", "SourceColumn", "FunctionColumn", "LineColumn"}]
      195 LOADK                            R40 K59 ["frameColumn"]
      196 SETTABLEKS                       R40 R39 K54 ["FrameColumn"]
      198 LOADK                            R40 K60 ["sourceColumn"]
      199 SETTABLEKS                       R40 R39 K55 ["SourceColumn"]
      201 LOADK                            R40 K61 ["functionColumn"]
      202 SETTABLEKS                       R40 R39 K56 ["FunctionColumn"]
      204 LOADK                            R40 K62 ["lineColumn"]
      205 SETTABLEKS                       R40 R39 K57 ["LineColumn"]
      207 DUPTABLE                         R40 K64 [{"ArrowColumn", "FrameColumn", "SourceColumn", "FunctionColumn", "LineColumn"}]
      208 LOADK                            R41 K65 [0.5]
      209 SETTABLEKS                       R41 R40 K63 ["ArrowColumn"]
      211 LOADK                            R41 K65 [0.5]
      212 SETTABLEKS                       R41 R40 K54 ["FrameColumn"]
      214 LOADK                            R41 K66 [1.5]
      215 SETTABLEKS                       R41 R40 K55 ["SourceColumn"]
      217 LOADN                            R41 1
      218 SETTABLEKS                       R41 R40 K56 ["FunctionColumn"]
      220 LOADK                            R41 K65 [0.5]
      221 SETTABLEKS                       R41 R40 K57 ["LineColumn"]
      223 DUPCLOSURE                       R41 K67 [PROTO_0]
      224 CAPTURE                          VAL R33
      225 DUPCLOSURE                       R42 K68 [PROTO_1]
      226 DUPCLOSURE                       R43 K69 [PROTO_2]
      227 DUPCLOSURE                       R44 K70 [PROTO_3]
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R33
      230 DUPCLOSURE                       R45 K71 [PROTO_4]
      231 SETTABLEKS                       R45 R34 K72 ["addAction"]
      233 DUPCLOSURE                       R45 K73 [PROTO_6]
      234 CAPTURE                          VAL R35
      235 CAPTURE                          VAL R25
      236 SETTABLEKS                       R45 R34 K74 ["didMount"]
      238 DUPCLOSURE                       R45 K75 [PROTO_7]
      239 CAPTURE                          VAL R35
      240 CAPTURE                          VAL R25
      241 SETTABLEKS                       R45 R34 K76 ["willUnmount"]
      243 DUPCLOSURE                       R45 K77 [PROTO_27]
      244 CAPTURE                          VAL R40
      245 CAPTURE                          VAL R33
      246 CAPTURE                          VAL R12
      247 CAPTURE                          VAL R39
      248 CAPTURE                          VAL R37
      249 CAPTURE                          VAL R35
      250 CAPTURE                          VAL R31
      251 CAPTURE                          VAL R23
      252 SETTABLEKS                       R45 R34 K78 ["init"]
      254 DUPCLOSURE                       R45 K79 [PROTO_29]
      255 CAPTURE                          VAL R38
      256 CAPTURE                          VAL R4
      257 CAPTURE                          VAL R25
      258 SETTABLEKS                       R45 R34 K80 ["didUpdate"]
      260 DUPCLOSURE                       R45 K81 [PROTO_31]
      261 CAPTURE                          VAL R38
      262 CAPTURE                          VAL R39
      263 CAPTURE                          VAL R17
      264 CAPTURE                          VAL R18
      265 CAPTURE                          VAL R35
      266 CAPTURE                          VAL R1
      267 CAPTURE                          VAL R20
      268 CAPTURE                          VAL R22
      269 CAPTURE                          VAL R5
      270 CAPTURE                          VAL R21
      271 SETTABLEKS                       R45 R34 K82 ["render"]
      273 MOVE                             R45 R7
      274 DUPTABLE                         R46 K83 [{"Analytics", "Localization", "Stylizer", "PluginActions", "Plugin"}]
      275 SETTABLEKS                       R8 R46 K13 ["Analytics"]
      277 SETTABLEKS                       R9 R46 K14 ["Localization"]
      279 SETTABLEKS                       R13 R46 K21 ["Stylizer"]
      281 SETTABLEKS                       R10 R46 K15 ["PluginActions"]
      283 SETTABLEKS                       R11 R46 K16 ["Plugin"]
      285 CALL                             R45 1 1
      286 MOVE                             R46 R34
      287 CALL                             R45 1 1
      288 MOVE                             R34 R45
      289 GETTABLEKS                       R45 R2 K84 ["connect"]
      291 DUPCLOSURE                       R46 K85 [PROTO_32]
      292 CAPTURE                          VAL R44
      293 CAPTURE                          VAL R15
      294 DUPCLOSURE                       R47 K86 [PROTO_39]
      295 CAPTURE                          VAL R27
      296 CAPTURE                          VAL R29
      297 CAPTURE                          VAL R30
      298 CAPTURE                          VAL R28
      299 CAPTURE                          VAL R36
      300 CALL                             R45 2 1
      301 MOVE                             R46 R34
      302 CALL                             R45 1 1
      303 MOVE                             R34 R45
      304 RETURN                           R34 1
