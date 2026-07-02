PROTO_0:
        0 JUMPIFNOTEQKN                    R0 K0 [1] ; [+8]
        2 GETTABLE                         R4 R2 R0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["ICON_FRAME_TOP"]
        6 SETTABLEKS                       R5 R4 K2 ["arrowColumn"]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R1 K3 ["frameColumn"]
       11 JUMPIFNOTEQ                      R4 R3 ; [+8]
       13 GETTABLE                         R4 R2 R0
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["ICON_CURRENT_FRAME"]
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
        1 GETTABLE                         R5 R2 R0
        2 GETTABLEKS                       R5 R5 K0 ["sourceColumn"]
        4 SETTABLEKS                       R5 R4 K1 ["scriptGUID"]
        6 GETTABLE                         R5 R2 R0
        7 GETTABLEKS                       R5 R5 K0 ["sourceColumn"]
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
       27 LOADN                            R11 -1
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
       49 GETUPVAL                         R17 1
       50 GETTABLEKS                       R17 R17 K13 ["ICON_FRAME_TOP"]
       52 SETTABLEKS                       R17 R16 K14 ["arrowColumn"]
       54 JUMP                             ; [+15]
       55 GETTABLEKS                       R16 R14 K5 ["frameColumn"]
       57 JUMPIFNOTEQ                      R16 R6 ; [+8]
       59 GETTABLE                         R16 R15 R13
       60 GETUPVAL                         R17 1
       61 GETTABLEKS                       R17 R17 K15 ["ICON_CURRENT_FRAME"]
       63 SETTABLEKS                       R17 R16 K14 ["arrowColumn"]
       65 JUMP                             ; [+4]
       66 GETTABLE                         R16 R15 R13
       67 LOADK                            R17 K6 [""]
       68 SETTABLEKS                       R17 R16 K14 ["arrowColumn"]
       70 MOVE                             R15 R8
       71 GETTABLE                         R16 R15 R13
       72 GETTABLE                         R17 R15 R13
       73 GETTABLEKS                       R17 R17 K9 ["sourceColumn"]
       75 SETTABLEKS                       R17 R16 K16 ["scriptGUID"]
       77 GETTABLE                         R17 R15 R13
       78 GETTABLEKS                       R17 R17 K9 ["sourceColumn"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["fetchSizesFromColumnScales"]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K3 ["ColumnSize"]
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
       38 GETTABLEKS                       R4 R4 K9 ["PluginActions"]
       40 NEWTABLE                         R5 0 0
       42 SETTABLEKS                       R5 R0 K10 ["connections"]
       44 NEWTABLE                         R5 0 0
       46 SETTABLEKS                       R5 R0 K11 ["shortcuts"]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K12 ["CallstackActionIds"]
       51 GETTABLEKS                       R9 R9 K13 ["CopySelected"]
       53 NAMECALL                         R7 R4 K2 ["get"]
       55 CALL                             R7 2 1
       56 GETTABLEKS                       R8 R0 K14 ["copySelectedRows"]
       58 NAMECALL                         R5 R0 K15 ["addAction"]
       60 CALL                             R5 3 0
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K12 ["CallstackActionIds"]
       64 GETTABLEKS                       R9 R9 K16 ["SelectAll"]
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
        0 DUPTABLE                         R1 K3 [{[1], ["selectAll"] = False}]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 0
        4 SETLIST                          R2 R3 1 [1]
        6 SETTABLEKS                       R2 R1 K0 ["selectedRows"]
        8 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETIMPORT                        R2 K2 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R7 R5 K3 ["arrowColumn"]
       10 JUMPIFNOTEQKS                    R7 K4 [""] ; [+6]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K5 ["ICON_CURRENT_FRAME"]
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
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K0 ["props"]
       41 GETTABLEKS                       R10 R10 K14 ["Analytics"]
       43 GETUPVAL                         R12 2
       44 GETTABLEKS                       R12 R12 K15 ["CallstackChangeFrame"]
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
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["props"]
        6 GETTABLEKS                       R3 R3 K4 ["ColumnFilter"]
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
       20 GETUPVAL                         R11 1
       21 GETTABLE                         R10 R11 R6
       22 GETTABLE                         R8 R0 R10
       23 GETTABLEKS                       R8 R8 K8 ["Name"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["selectedRows"]
        5 LENGTH                           R1 R0
        6 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
        8 RETURN                           R0 0
        9 LOADK                            R1 K3 [""]
       10 GETIMPORT                        R2 K5 [ipairs]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 3
       14 FORGPREP_INEXT                   R2
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K6 ["getTreeChildren"]
       18 MOVE                             R9 R6
       19 CALL                             R8 1 1
       20 LENGTH                           R7 R8
       21 JUMPIFNOTEQKN                    R7 K2 [0] ; [+11]
       23 MOVE                             R7 R1
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K7 ["rowToString"]
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
       45 GETUPVAL                         R15 0
       46 GETTABLEKS                       R15 R15 K7 ["rowToString"]
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
        0 DUPTABLE                         R1 K3 [{[1], ["selectAll"] = True}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["selectedRows"]
        4 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["state"]
        8 GETTABLEKS                       R3 R3 K2 ["selectedRows"]
       10 LENGTH                           R2 R3
       11 JUMPIFNOTEQKN                    R2 K3 [1] ; [+17]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["state"]
       16 GETTABLEKS                       R3 R3 K2 ["selectedRows"]
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
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K9 ["getTreeChildren"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["CallstackActionIds"]
        5 GETTABLEKS                       R2 R2 K2 ["CopySelected"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["copySelectedRows"]
       12 CALL                             R2 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K1 ["CallstackActionIds"]
       17 GETTABLEKS                       R2 R2 K4 ["SelectAll"]
       19 JUMPIFNOTEQ                      R1 R2 ; [+5]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["selectAllRows"]
       24 CALL                             R2 0 0
       25 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K3 [{[1], ["selectAll"] = False}]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["item"]
        6 SETLIST                          R2 R3 1 [1]
        8 SETTABLEKS                       R2 R1 K0 ["selectedRows"]
       10 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["selectAll"]
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETTABLEKS                       R1 R0 K2 ["item"]
        8 GETTABLEKS                       R1 R1 K3 ["threadId"]
       10 JUMPIFNOT                        R1 ; [+17]
       11 GETTABLEKS                       R1 R0 K2 ["item"]
       13 GETTABLEKS                       R1 R1 K3 ["threadId"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["props"]
       18 GETTABLEKS                       R2 R2 K5 ["CurrentThreadId"]
       20 JUMPIFEQ                         R1 R2 ; [+7]
       22 GETUPVAL                         R1 0
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R1 R1 K6 ["setState"]
       27 CALL                             R1 2 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K4 ["props"]
       31 GETTABLEKS                       R2 R1 K7 ["Localization"]
       33 GETTABLEKS                       R3 R1 K8 ["Plugin"]
       35 NAMECALL                         R3 R3 K9 ["get"]
       37 CALL                             R3 1 1
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K10 ["getCallstackActions"]
       41 MOVE                             R5 R2
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K11 ["onMenuActionSelected"]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 2
       47 MOVE                             R6 R3
       48 MOVE                             R7 R4
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K12 ["CallstackActionsOrder"]
       52 CALL                             R5 3 0
       53 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["CurrentDST"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+8]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["loadThreadData"]
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
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K2 ["props"]
        8 GETTABLEKS                       R6 R6 K3 ["CurrentDebuggerConnectionId"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K2 ["props"]
       13 GETTABLEKS                       R7 R7 K4 ["CurrentDST"]
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
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R14 R14 K2 ["props"]
       64 GETTABLEKS                       R14 R14 K18 ["onLoadAllVariablesForThreadAndFrame"]
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
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R15 R15 K2 ["props"]
       85 GETTABLEKS                       R15 R15 K21 ["onPopulateCallstackThreadThunk"]
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
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["props"]
        9 GETTABLEKS                       R3 R3 K5 ["setCurrentFrameNumber"]
       11 GETTABLEKS                       R4 R0 K6 ["ThreadId"]
       13 LOADN                            R5 1
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["props"]
       18 GETTABLEKS                       R3 R3 K7 ["onCurrentFrameChanged"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onStepAction"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R1 K3 ["stepOverActionV2"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K4 ["CurrentDebuggerConnectionId"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["props"]
       18 GETTABLEKS                       R3 R3 K5 ["CurrentThreadId"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onStepAction"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R1 K3 ["stepIntoActionV2"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K4 ["CurrentDebuggerConnectionId"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["props"]
       18 GETTABLEKS                       R3 R3 K5 ["CurrentThreadId"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onStepAction"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["StepActionIds"]
        8 GETTABLEKS                       R1 R1 K3 ["stepOutActionV2"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K4 ["CurrentDebuggerConnectionId"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["props"]
       18 GETTABLEKS                       R3 R3 K5 ["CurrentThreadId"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_27:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R2 K0 [0.5]
        3 LOADN                            R5 1
        4 GETTABLEKS                       R6 R0 K1 ["props"]
        6 GETTABLEKS                       R6 R6 K2 ["ColumnFilter"]
        8 LENGTH                           R3 R6
        9 LOADN                            R4 1
       10 FORNPREP                         R3
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R9 R0 K1 ["props"]
       14 GETTABLEKS                       R9 R9 K2 ["ColumnFilter"]
       16 GETTABLE                         R8 R9 R5
       17 GETTABLE                         R6 R7 R8
       18 ADD                              R2 R2 R6
       19 FORNLOOP                         R3
       20 MOVE                             R4 R1
       21 GETIMPORT                        R5 K5 [UDim.new]
       23 DIVRK                            R6 K0 [0.5] R2
       24 LOADN                            R7 0
       25 CALL                             R5 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R3 K8 [table.insert]
       29 CALL                             R3 -1 0
       30 LOADN                            R5 1
       31 GETTABLEKS                       R6 R0 K1 ["props"]
       33 GETTABLEKS                       R6 R6 K2 ["ColumnFilter"]
       35 LENGTH                           R3 R6
       36 LOADN                            R4 1
       37 FORNPREP                         R3
       38 MOVE                             R7 R1
       39 GETIMPORT                        R8 K5 [UDim.new]
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R13 R0 K1 ["props"]
       44 GETTABLEKS                       R13 R13 K2 ["ColumnFilter"]
       46 GETTABLE                         R12 R13 R5
       47 GETTABLE                         R10 R11 R12
       48 DIV                              R9 R10 R2
       49 LOADN                            R10 0
       50 CALL                             R8 2 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R6 K8 [table.insert]
       54 CALL                             R6 -1 0
       55 FORNLOOP                         R3
       56 DUPTABLE                         R3 K13 [{["selectedRows"], ["selectAll"] = False, ["sizes"]}]
       57 NEWTABLE                         R4 0 0
       59 SETTABLEKS                       R4 R3 K9 ["selectedRows"]
       61 SETTABLEKS                       R1 R3 K12 ["sizes"]
       63 SETTABLEKS                       R3 R0 K14 ["state"]
       65 NEWCLOSURE                       R3 P0
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R3 R0 K15 ["OnColumnSizesChange"]
       69 DUPCLOSURE                       R3 K16 [PROTO_10]
       70 SETTABLEKS                       R3 R0 K17 ["getTreeChildren"]
       72 NEWCLOSURE                       R3 P2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          UPVAL U2
       76 SETTABLEKS                       R3 R0 K18 ["onSelectionChange"]
       78 NEWCLOSURE                       R3 P3
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U3
       81 SETTABLEKS                       R3 R0 K19 ["rowToString"]
       83 NEWCLOSURE                       R3 P4
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U4
       86 SETTABLEKS                       R3 R0 K20 ["copySelectedRows"]
       88 NEWCLOSURE                       R3 P5
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R3 R0 K21 ["selectAllRows"]
       92 NEWCLOSURE                       R3 P6
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R3 R0 K22 ["onMenuActionSelected"]
       97 NEWCLOSURE                       R3 P7
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          UPVAL U7
      101 CAPTURE                          UPVAL U5
      102 SETTABLEKS                       R3 R0 K23 ["onRightClick"]
      104 NEWCLOSURE                       R3 P8
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R3 R0 K24 ["onExpansionChange"]
      108 DUPCLOSURE                       R3 K25 [PROTO_22]
      109 SETTABLEKS                       R3 R0 K17 ["getTreeChildren"]
      111 NEWCLOSURE                       R3 P10
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R3 R0 K26 ["loadThreadData"]
      115 NEWCLOSURE                       R3 P11
      116 CAPTURE                          VAL R0
      117 CAPTURE                          UPVAL U5
      118 SETTABLEKS                       R3 R0 K27 ["onStepOver"]
      120 NEWCLOSURE                       R3 P12
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U5
      123 SETTABLEKS                       R3 R0 K28 ["onStepInto"]
      125 NEWCLOSURE                       R3 P13
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U5
      128 SETTABLEKS                       R3 R0 K29 ["onStepOut"]
      130 RETURN                           R0 0

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
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["ColumnFilter"]
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 NEWTABLE                         R5 0 1
       15 DUPTABLE                         R6 K7 [{["Name"] = "", ["Key"]}]
       16 GETUPVAL                         R8 0
       17 GETTABLEN                        R7 R8 1
       18 SETTABLEKS                       R7 R6 K6 ["Key"]
       20 SETLIST                          R5 R6 1 [1]
       22 GETIMPORT                        R6 K9 [ipairs]
       24 MOVE                             R7 R4
       25 CALL                             R6 1 3
       26 FORGPREP_INEXT                   R6
       27 DUPTABLE                         R11 K11 [{"Name", "Key", "Tooltip"}]
       28 LOADK                            R14 K12 ["Callstack"]
       29 MOVE                             R15 R10
       30 NAMECALL                         R12 R2 K13 ["getText"]
       32 CALL                             R12 3 1
       33 SETTABLEKS                       R12 R11 K4 ["Name"]
       35 GETUPVAL                         R13 1
       36 GETTABLE                         R12 R13 R10
       37 SETTABLEKS                       R12 R11 K6 ["Key"]
       39 LOADK                            R15 K12 ["Callstack"]
       40 MOVE                             R17 R10
       41 LOADK                            R18 K10 ["Tooltip"]
       42 CONCAT                           R16 R17 R18
       43 NAMECALL                         R13 R2 K13 ["getText"]
       45 CALL                             R13 3 1
       46 ORK                              R12 R13 K14 []
       47 SETTABLEKS                       R12 R11 K10 ["Tooltip"]
       49 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       51 MOVE                             R13 R5
       52 MOVE                             R14 R11
       53 GETIMPORT                        R12 K17 [table.insert]
       55 CALL                             R12 2 0
       56 FORGLOOP                         R6 2 [inext] ; [-30]
       58 GETTABLEKS                       R6 R0 K18 ["state"]
       60 GETTABLEKS                       R6 R6 K19 ["sizes"]
       62 GETUPVAL                         R7 2
       63 MOVE                             R8 R5
       64 NEWCLOSURE                       R9 P0
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R6
       67 CALL                             R7 2 1
       68 GETUPVAL                         R9 4
       69 GETTABLEKS                       R9 R9 K20 ["HEADER_HEIGHT"]
       71 GETUPVAL                         R11 4
       72 GETTABLEKS                       R11 R11 K22 ["BUTTON_PADDING"]
       74 MULK                             R10 R11 K21 [2]
       75 ADD                              R8 R9 R10
       76 GETUPVAL                         R9 5
       77 GETTABLEKS                       R9 R9 K23 ["createElement"]
       79 GETUPVAL                         R10 6
       80 DUPTABLE                         R11 K28 [{["Size"], ["Style"] = "Box", ["Layout"]}]
       81 GETIMPORT                        R12 K31 [UDim2.fromScale]
       83 LOADN                            R13 1
       84 LOADN                            R14 1
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K24 ["Size"]
       88 GETIMPORT                        R12 K35 [Enum.FillDirection.Vertical]
       90 SETTABLEKS                       R12 R11 K27 ["Layout"]
       92 DUPTABLE                         R12 K38 [{"HeaderView", "BodyView"}]
       93 GETUPVAL                         R13 5
       94 GETTABLEKS                       R13 R13 K23 ["createElement"]
       96 GETUPVAL                         R14 6
       97 DUPTABLE                         R15 K45 [{["Size"], ["Spacing"], ["Padding"], ["LayoutOrder"] = 1, ["Style"] = "Box", ["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"]}]
       98 GETIMPORT                        R16 K47 [UDim2.new]
      100 LOADN                            R17 1
      101 LOADN                            R18 0
      102 LOADN                            R19 0
      103 MOVE                             R20 R8
      104 CALL                             R16 4 1
      105 SETTABLEKS                       R16 R15 K24 ["Size"]
      107 GETUPVAL                         R16 4
      108 GETTABLEKS                       R16 R16 K22 ["BUTTON_PADDING"]
      110 SETTABLEKS                       R16 R15 K39 ["Spacing"]
      112 GETUPVAL                         R16 4
      113 GETTABLEKS                       R16 R16 K22 ["BUTTON_PADDING"]
      115 SETTABLEKS                       R16 R15 K40 ["Padding"]
      117 GETIMPORT                        R16 K49 [Enum.FillDirection.Horizontal]
      119 SETTABLEKS                       R16 R15 K27 ["Layout"]
      121 GETIMPORT                        R16 K51 [Enum.VerticalAlignment.Center]
      123 SETTABLEKS                       R16 R15 K43 ["VerticalAlignment"]
      125 GETIMPORT                        R16 K53 [Enum.HorizontalAlignment.Left]
      127 SETTABLEKS                       R16 R15 K44 ["HorizontalAlignment"]
      129 DUPTABLE                         R16 K56 [{"ButtonContainer", "ColContainer"}]
      130 GETUPVAL                         R17 5
      131 GETTABLEKS                       R17 R17 K23 ["createElement"]
      133 GETUPVAL                         R18 6
      134 DUPTABLE                         R19 K57 [{["Size"], ["LayoutOrder"] = 1, ["Style"] = "Box", ["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"]}]
      135 GETIMPORT                        R20 K47 [UDim2.new]
      137 LOADK                            R21 K58 [0.5]
      138 LOADN                            R22 0
      139 LOADN                            R23 0
      140 GETUPVAL                         R24 4
      141 GETTABLEKS                       R24 R24 K20 ["HEADER_HEIGHT"]
      143 CALL                             R20 4 1
      144 SETTABLEKS                       R20 R19 K24 ["Size"]
      146 GETIMPORT                        R20 K49 [Enum.FillDirection.Horizontal]
      148 SETTABLEKS                       R20 R19 K27 ["Layout"]
      150 GETIMPORT                        R20 K51 [Enum.VerticalAlignment.Center]
      152 SETTABLEKS                       R20 R19 K43 ["VerticalAlignment"]
      154 GETIMPORT                        R20 K53 [Enum.HorizontalAlignment.Left]
      156 SETTABLEKS                       R20 R19 K44 ["HorizontalAlignment"]
      158 DUPTABLE                         R20 K62 [{"StepIntoButton", "StepOverButton", "StepOutButton"}]
      159 GETUPVAL                         R21 5
      160 GETTABLEKS                       R21 R21 K23 ["createElement"]
      162 GETUPVAL                         R22 7
      163 DUPTABLE                         R23 K68 [{["Size"], ["LayoutOrder"] = 1, ["LeftIcon"] = "rbxasset://textures/Debugger/Step-In.png", ["TooltipText"], ["OnClick"], ["Disabled"]}]
      164 GETIMPORT                        R24 K47 [UDim2.new]
      166 LOADN                            R25 0
      167 GETUPVAL                         R26 4
      168 GETTABLEKS                       R26 R26 K69 ["BUTTON_SIZE"]
      170 LOADN                            R27 0
      171 GETUPVAL                         R28 4
      172 GETTABLEKS                       R28 R28 K69 ["BUTTON_SIZE"]
      174 CALL                             R24 4 1
      175 SETTABLEKS                       R24 R23 K24 ["Size"]
      177 LOADK                            R26 K70 ["Common"]
      178 LOADK                            R27 K71 ["stepIntoActionV2"]
      179 NAMECALL                         R24 R2 K13 ["getText"]
      181 CALL                             R24 3 1
      182 SETTABLEKS                       R24 R23 K65 ["TooltipText"]
      184 GETTABLEKS                       R24 R0 K72 ["onStepInto"]
      186 SETTABLEKS                       R24 R23 K66 ["OnClick"]
      188 LOADB                            R24 1
      189 GETTABLEKS                       R25 R0 K0 ["props"]
      191 GETTABLEKS                       R25 R25 K73 ["CurrentThreadId"]
      193 JUMPIFEQKNIL                     R25 ; [+5]
      195 GETTABLEKS                       R24 R0 K0 ["props"]
      197 GETTABLEKS                       R24 R24 K74 ["HitException"]
      199 SETTABLEKS                       R24 R23 K67 ["Disabled"]
      201 CALL                             R21 2 1
      202 SETTABLEKS                       R21 R20 K59 ["StepIntoButton"]
      204 GETUPVAL                         R21 5
      205 GETTABLEKS                       R21 R21 K23 ["createElement"]
      207 GETUPVAL                         R22 7
      208 DUPTABLE                         R23 K76 [{["Size"], ["LayoutOrder"] = 2, ["LeftIcon"] = "rbxasset://textures/Debugger/Step-Over.png", ["TooltipText"], ["OnClick"], ["Disabled"]}]
      209 GETIMPORT                        R24 K47 [UDim2.new]
      211 LOADN                            R25 0
      212 GETUPVAL                         R26 4
      213 GETTABLEKS                       R26 R26 K69 ["BUTTON_SIZE"]
      215 LOADN                            R27 0
      216 GETUPVAL                         R28 4
      217 GETTABLEKS                       R28 R28 K69 ["BUTTON_SIZE"]
      219 CALL                             R24 4 1
      220 SETTABLEKS                       R24 R23 K24 ["Size"]
      222 LOADK                            R26 K70 ["Common"]
      223 LOADK                            R27 K77 ["stepOverActionV2"]
      224 NAMECALL                         R24 R2 K13 ["getText"]
      226 CALL                             R24 3 1
      227 SETTABLEKS                       R24 R23 K65 ["TooltipText"]
      229 GETTABLEKS                       R24 R0 K78 ["onStepOver"]
      231 SETTABLEKS                       R24 R23 K66 ["OnClick"]
      233 LOADB                            R24 1
      234 GETTABLEKS                       R25 R0 K0 ["props"]
      236 GETTABLEKS                       R25 R25 K73 ["CurrentThreadId"]
      238 JUMPIFEQKNIL                     R25 ; [+5]
      240 GETTABLEKS                       R24 R0 K0 ["props"]
      242 GETTABLEKS                       R24 R24 K74 ["HitException"]
      244 SETTABLEKS                       R24 R23 K67 ["Disabled"]
      246 CALL                             R21 2 1
      247 SETTABLEKS                       R21 R20 K60 ["StepOverButton"]
      249 GETUPVAL                         R21 5
      250 GETTABLEKS                       R21 R21 K23 ["createElement"]
      252 GETUPVAL                         R22 7
      253 DUPTABLE                         R23 K81 [{["Size"], ["LayoutOrder"] = 3, ["LeftIcon"] = "rbxasset://textures/Debugger/Step-Out.png", ["TooltipText"], ["OnClick"], ["Disabled"]}]
      254 GETIMPORT                        R24 K47 [UDim2.new]
      256 LOADN                            R25 0
      257 GETUPVAL                         R26 4
      258 GETTABLEKS                       R26 R26 K69 ["BUTTON_SIZE"]
      260 LOADN                            R27 0
      261 GETUPVAL                         R28 4
      262 GETTABLEKS                       R28 R28 K69 ["BUTTON_SIZE"]
      264 CALL                             R24 4 1
      265 SETTABLEKS                       R24 R23 K24 ["Size"]
      267 LOADK                            R26 K70 ["Common"]
      268 LOADK                            R27 K82 ["stepOutActionV2"]
      269 NAMECALL                         R24 R2 K13 ["getText"]
      271 CALL                             R24 3 1
      272 SETTABLEKS                       R24 R23 K65 ["TooltipText"]
      274 GETTABLEKS                       R24 R0 K83 ["onStepOut"]
      276 SETTABLEKS                       R24 R23 K66 ["OnClick"]
      278 LOADB                            R24 1
      279 GETTABLEKS                       R25 R0 K0 ["props"]
      281 GETTABLEKS                       R25 R25 K73 ["CurrentThreadId"]
      283 JUMPIFEQKNIL                     R25 ; [+5]
      285 GETTABLEKS                       R24 R0 K0 ["props"]
      287 GETTABLEKS                       R24 R24 K74 ["HitException"]
      289 SETTABLEKS                       R24 R23 K67 ["Disabled"]
      291 CALL                             R21 2 1
      292 SETTABLEKS                       R21 R20 K61 ["StepOutButton"]
      294 CALL                             R17 3 1
      295 SETTABLEKS                       R17 R16 K54 ["ButtonContainer"]
      297 GETUPVAL                         R17 5
      298 GETTABLEKS                       R17 R17 K23 ["createElement"]
      300 GETUPVAL                         R18 6
      301 DUPTABLE                         R19 K84 [{["Size"], ["LayoutOrder"] = 2, ["Style"] = "Box", ["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"]}]
      302 GETIMPORT                        R20 K47 [UDim2.new]
      304 LOADK                            R21 K58 [0.5]
      305 LOADN                            R22 0
      306 LOADN                            R23 0
      307 GETUPVAL                         R24 4
      308 GETTABLEKS                       R24 R24 K20 ["HEADER_HEIGHT"]
      310 CALL                             R20 4 1
      311 SETTABLEKS                       R20 R19 K24 ["Size"]
      313 GETIMPORT                        R20 K49 [Enum.FillDirection.Horizontal]
      315 SETTABLEKS                       R20 R19 K27 ["Layout"]
      317 GETIMPORT                        R20 K51 [Enum.VerticalAlignment.Center]
      319 SETTABLEKS                       R20 R19 K43 ["VerticalAlignment"]
      321 GETIMPORT                        R20 K86 [Enum.HorizontalAlignment.Right]
      323 SETTABLEKS                       R20 R19 K44 ["HorizontalAlignment"]
      325 DUPTABLE                         R20 K88 [{"ColumnDropdown"}]
      326 GETUPVAL                         R21 5
      327 GETTABLEKS                       R21 R21 K23 ["createElement"]
      329 GETUPVAL                         R22 8
      330 DUPTABLE                         R23 K90 [{["LayoutOrder"] = 1, ["AutomaticSize"]}]
      331 GETIMPORT                        R24 K92 [Enum.AutomaticSize.X]
      333 SETTABLEKS                       R24 R23 K89 ["AutomaticSize"]
      335 CALL                             R21 2 1
      336 SETTABLEKS                       R21 R20 K87 ["ColumnDropdown"]
      338 CALL                             R17 3 1
      339 SETTABLEKS                       R17 R16 K55 ["ColContainer"]
      341 CALL                             R13 3 1
      342 SETTABLEKS                       R13 R12 K36 ["HeaderView"]
      344 GETUPVAL                         R13 5
      345 GETTABLEKS                       R13 R13 K23 ["createElement"]
      347 GETUPVAL                         R14 6
      348 DUPTABLE                         R15 K93 [{["Size"], ["LayoutOrder"] = 2, ["Style"] = "Box"}]
      349 GETIMPORT                        R16 K47 [UDim2.new]
      351 LOADN                            R17 1
      352 LOADN                            R18 0
      353 LOADN                            R19 1
      354 MINUS                            R20 R8
      355 CALL                             R16 4 1
      356 SETTABLEKS                       R16 R15 K24 ["Size"]
      358 DUPTABLE                         R16 K95 [{"TableView"}]
      359 GETUPVAL                         R17 5
      360 GETTABLEKS                       R17 R17 K23 ["createElement"]
      362 GETUPVAL                         R18 9
      363 DUPTABLE                         R19 K116 [{["Scroll"] = True, ["Size"], ["Columns"], ["RootItems"], ["Stylizer"], ["Expansion"], ["GetChildren"], ["DisableTooltip"] = False, ["OnSelectionChange"], ["RightClick"], ["OnExpansionChange"], ["FullSpan"] = True, ["HighlightedRows"], ["OnColumnSizesChange"], ["UseDeficit"] = False, ["UseScale"] = True, ["ClampSize"] = True, ["Padding"] = 1, ["ColumnHeaderHeight"], ["RowHeight"], ["ExpandOnDoubleClick"] = True}]
      364 GETIMPORT                        R20 K31 [UDim2.fromScale]
      366 LOADN                            R21 1
      367 LOADN                            R22 1
      368 CALL                             R20 2 1
      369 SETTABLEKS                       R20 R19 K24 ["Size"]
      371 SETTABLEKS                       R7 R19 K98 ["Columns"]
      373 GETTABLEKS                       R20 R1 K99 ["RootItems"]
      375 SETTABLEKS                       R20 R19 K99 ["RootItems"]
      377 SETTABLEKS                       R3 R19 K2 ["Stylizer"]
      379 GETTABLEKS                       R20 R1 K117 ["ExpansionTable"]
      381 SETTABLEKS                       R20 R19 K100 ["Expansion"]
      383 GETTABLEKS                       R20 R0 K118 ["getTreeChildren"]
      385 SETTABLEKS                       R20 R19 K101 ["GetChildren"]
      387 GETTABLEKS                       R20 R0 K119 ["onSelectionChange"]
      389 SETTABLEKS                       R20 R19 K104 ["OnSelectionChange"]
      391 GETTABLEKS                       R20 R0 K120 ["onRightClick"]
      393 SETTABLEKS                       R20 R19 K105 ["RightClick"]
      395 GETTABLEKS                       R20 R0 K121 ["onExpansionChange"]
      397 SETTABLEKS                       R20 R19 K106 ["OnExpansionChange"]
      399 GETTABLEKS                       R20 R0 K18 ["state"]
      401 GETTABLEKS                       R20 R20 K122 ["selectedRows"]
      403 SETTABLEKS                       R20 R19 K108 ["HighlightedRows"]
      405 GETTABLEKS                       R20 R0 K109 ["OnColumnSizesChange"]
      407 SETTABLEKS                       R20 R19 K109 ["OnColumnSizesChange"]
      409 GETUPVAL                         R20 4
      410 GETTABLEKS                       R20 R20 K123 ["COLUMN_HEADER_HEIGHT"]
      412 SETTABLEKS                       R20 R19 K113 ["ColumnHeaderHeight"]
      414 GETUPVAL                         R20 4
      415 GETTABLEKS                       R20 R20 K124 ["ROW_HEIGHT"]
      417 SETTABLEKS                       R20 R19 K114 ["RowHeight"]
      419 CALL                             R17 2 1
      420 SETTABLEKS                       R17 R16 K94 ["TableView"]
      422 CALL                             R13 3 1
      423 SETTABLEKS                       R13 R12 K37 ["BodyView"]
      425 CALL                             R9 3 -1
      426 RETURN                           R9 -1

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["Common"]
        2 GETTABLEKS                       R4 R2 K1 ["debuggerConnectionIdToCurrentThreadId"]
        4 GETTABLEKS                       R5 R2 K2 ["currentDebuggerConnectionId"]
        6 GETTABLE                         R3 R4 R5
        7 GETTABLEKS                       R4 R0 K3 ["Callstack"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+15]
       11 DUPTABLE                         R5 K9 [{["RootItems"], ["ExpansionTable"], ["CurrentThreadId"] = , ["ColumnFilter"]}]
       12 NEWTABLE                         R6 0 0
       14 SETTABLEKS                       R6 R5 K4 ["RootItems"]
       16 NEWTABLE                         R6 0 0
       18 SETTABLEKS                       R6 R5 K5 ["ExpansionTable"]
       20 GETTABLEKS                       R6 R4 K10 ["listOfEnabledColumns"]
       22 SETTABLEKS                       R6 R5 K8 ["ColumnFilter"]
       24 RETURN                           R5 1
       25 GETTABLEKS                       R6 R2 K11 ["debuggerConnectionIdToDST"]
       27 GETTABLEKS                       R7 R2 K2 ["currentDebuggerConnectionId"]
       29 GETTABLE                         R5 R6 R7
       30 GETTABLEKS                       R7 R4 K12 ["stateTokenToCallstackVars"]
       32 GETTABLE                         R6 R7 R5
       33 FASTCALL1                        ASSERT R6 ; [+3]
       34 MOVE                             R8 R6
       35 GETIMPORT                        R7 K14 [assert]
       37 CALL                             R7 1 0
       38 GETTABLEKS                       R7 R6 K15 ["threadList"]
       40 NEWTABLE                         R8 0 0
       42 NEWTABLE                         R9 0 0
       44 GETIMPORT                        R10 K17 [ipairs]
       46 MOVE                             R11 R7
       47 CALL                             R10 1 3
       48 FORGPREP_INEXT                   R10
       49 GETUPVAL                         R15 0
       50 MOVE                             R16 R14
       51 MOVE                             R17 R6
       52 MOVE                             R18 R2
       53 GETTABLEKS                       R19 R0 K18 ["ScriptInfo"]
       55 CALL                             R15 4 1
       56 JUMPIFNOTEQKNIL                  R15 ; [+2]
       58 LOADB                            R17 0 +1
       59 LOADB                            R17 1
       60 FASTCALL1                        ASSERT R17 ; [+2]
       61 GETIMPORT                        R16 K14 [assert]
       63 CALL                             R16 1 0
       64 FASTCALL2                        TABLE_INSERT R8 R15 ; [+5]
       66 MOVE                             R17 R8
       67 MOVE                             R18 R15
       68 GETIMPORT                        R16 K21 [table.insert]
       70 CALL                             R16 2 0
       71 GETTABLEKS                       R16 R14 K22 ["threadId"]
       73 JUMPIFNOTEQ                      R16 R3 ; [+3]
       75 LOADB                            R16 1
       76 SETTABLE                         R16 R9 R15
       77 FORGLOOP                         R10 2 [inext] ; [-29]
       79 DUPTABLE                         R10 K26 [{"RootItems", "CurrentThreadId", "ExpansionTable", "ColumnFilter", "CurrentDebuggerConnectionId", "CurrentDST", "HitException"}]
       80 SETTABLEKS                       R8 R10 K4 ["RootItems"]
       82 SETTABLEKS                       R3 R10 K6 ["CurrentThreadId"]
       84 SETTABLEKS                       R9 R10 K5 ["ExpansionTable"]
       86 GETUPVAL                         R11 1
       87 GETTABLEKS                       R12 R4 K10 ["listOfEnabledColumns"]
       89 CALL                             R11 1 1
       90 SETTABLEKS                       R11 R10 K8 ["ColumnFilter"]
       92 GETTABLEKS                       R11 R2 K2 ["currentDebuggerConnectionId"]
       94 SETTABLEKS                       R11 R10 K23 ["CurrentDebuggerConnectionId"]
       96 GETTABLEKS                       R12 R2 K11 ["debuggerConnectionIdToDST"]
       98 GETTABLEKS                       R13 R2 K2 ["currentDebuggerConnectionId"]
      100 GETTABLE                         R11 R12 R13
      101 SETTABLEKS                       R11 R10 K24 ["CurrentDST"]
      103 JUMPIFNOT                        R3 ; [+4]
      104 GETTABLEKS                       R12 R2 K27 ["hitException"]
      106 GETTABLE                         R11 R12 R3
      107 JUMP                             ; [+1]
      108 LOADB                            R11 0
      109 SETTABLEKS                       R11 R10 K25 ["HitException"]
      111 RETURN                           R10 1

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
       39 GETIMPORT                        R5 K4 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K2 ["Parent"]
       45 GETTABLEKS                       R6 R6 K10 ["CallstackDropdownField"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       50 GETTABLEKS                       R7 R6 K12 ["withContext"]
       52 GETTABLEKS                       R8 R6 K13 ["Analytics"]
       54 GETTABLEKS                       R9 R6 K14 ["Localization"]
       56 GETTABLEKS                       R10 R6 K15 ["PluginActions"]
       58 GETTABLEKS                       R11 R6 K16 ["Plugin"]
       60 GETIMPORT                        R12 K4 [require]
       62 GETTABLEKS                       R13 R0 K17 ["Src"]
       64 GETTABLEKS                       R13 R13 K18 ["Resources"]
       66 GETTABLEKS                       R13 R13 K19 ["AnalyticsEventNames"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R3 K20 ["Style"]
       71 GETTABLEKS                       R13 R13 K21 ["Stylizer"]
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
       93 GETTABLEKS                       R24 R0 K17 ["Src"]
       95 GETTABLEKS                       R24 R24 K22 ["Util"]
       97 GETIMPORT                        R25 K4 [require]
       99 GETTABLEKS                       R26 R24 K32 ["ColumnResizeHelperFunctions"]
      101 CALL                             R25 1 1
      102 GETTABLEKS                       R26 R0 K17 ["Src"]
      104 GETTABLEKS                       R26 R26 K33 ["Actions"]
      106 GETIMPORT                        R27 K4 [require]
      108 GETTABLEKS                       R28 R26 K34 ["Callstack"]
      110 GETTABLEKS                       R28 R28 K35 ["SetCurrentFrameNumber"]
      112 CALL                             R27 1 1
      113 GETIMPORT                        R28 K4 [require]
      115 GETTABLEKS                       R29 R26 K34 ["Callstack"]
      117 GETTABLEKS                       R29 R29 K36 ["ColumnFilterChange"]
      119 CALL                             R28 1 1
      120 GETIMPORT                        R29 K4 [require]
      122 GETTABLEKS                       R30 R0 K17 ["Src"]
      124 GETTABLEKS                       R30 R30 K37 ["Thunks"]
      126 GETTABLEKS                       R30 R30 K38 ["Watch"]
      128 GETTABLEKS                       R30 R30 K39 ["LoadAllVariablesForThreadAndFrame"]
      130 CALL                             R29 1 1
      131 GETIMPORT                        R30 K4 [require]
      133 GETTABLEKS                       R31 R0 K17 ["Src"]
      135 GETTABLEKS                       R31 R31 K37 ["Thunks"]
      137 GETTABLEKS                       R31 R31 K34 ["Callstack"]
      139 GETTABLEKS                       R31 R31 K40 ["PopulateCallstackThreadThunk"]
      141 CALL                             R30 1 1
      142 GETIMPORT                        R31 K4 [require]
      144 GETTABLEKS                       R32 R24 K41 ["MakePluginActions"]
      146 CALL                             R31 1 1
      147 GETTABLEKS                       R32 R0 K17 ["Src"]
      149 GETTABLEKS                       R32 R32 K42 ["Models"]
      151 GETIMPORT                        R33 K4 [require]
      153 GETTABLEKS                       R34 R32 K34 ["Callstack"]
      155 GETTABLEKS                       R34 R34 K43 ["CallstackRow"]
      157 CALL                             R33 1 1
      158 GETTABLEKS                       R34 R1 K44 ["PureComponent"]
      160 LOADK                            R36 K45 ["CallstackComponent"]
      161 NAMECALL                         R34 R34 K46 ["extend"]
      163 CALL                             R34 2 1
      164 GETIMPORT                        R35 K4 [require]
      166 GETTABLEKS                       R36 R0 K17 ["Src"]
      168 GETTABLEKS                       R36 R36 K22 ["Util"]
      170 GETTABLEKS                       R36 R36 K47 ["Constants"]
      172 CALL                             R35 1 1
      173 GETIMPORT                        R36 K4 [require]
      175 GETTABLEKS                       R37 R0 K17 ["Src"]
      177 GETTABLEKS                       R37 R37 K37 ["Thunks"]
      179 GETTABLEKS                       R37 R37 K34 ["Callstack"]
      181 GETTABLEKS                       R37 R37 K48 ["StepHandlers"]
      183 CALL                             R36 1 1
      184 GETIMPORT                        R37 K50 [game]
      186 LOADK                            R39 K51 ["StudioService"]
      187 NAMECALL                         R37 R37 K52 ["GetService"]
      189 CALL                             R37 2 1
      190 NEWTABLE                         R38 0 1
      192 LOADK                            R39 K53 ["arrowColumn"]
      193 SETTABLEN                        R39 R38 1
      194 DUPTABLE                         R39 K62 [{["FrameColumn"] = "frameColumn", ["SourceColumn"] = "sourceColumn", ["FunctionColumn"] = "functionColumn", ["LineColumn"] = "lineColumn"}]
      195 DUPTABLE                         R40 K67 [{["ArrowColumn"] = 0.5, ["FrameColumn"] = 0.5, ["SourceColumn"] = 1.5, ["FunctionColumn"] = 1, ["LineColumn"] = 0.5}]
      196 DUPCLOSURE                       R41 K68 [PROTO_0]
      197 CAPTURE                          VAL R33
      198 DUPCLOSURE                       R42 K69 [PROTO_1]
      199 DUPCLOSURE                       R43 K70 [PROTO_2]
      200 DUPCLOSURE                       R44 K71 [PROTO_3]
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R33
      203 DUPCLOSURE                       R45 K72 [PROTO_4]
      204 SETTABLEKS                       R45 R34 K73 ["addAction"]
      206 DUPCLOSURE                       R45 K74 [PROTO_6]
      207 CAPTURE                          VAL R35
      208 CAPTURE                          VAL R25
      209 SETTABLEKS                       R45 R34 K75 ["didMount"]
      211 DUPCLOSURE                       R45 K76 [PROTO_7]
      212 CAPTURE                          VAL R35
      213 CAPTURE                          VAL R25
      214 SETTABLEKS                       R45 R34 K77 ["willUnmount"]
      216 DUPCLOSURE                       R45 K78 [PROTO_27]
      217 CAPTURE                          VAL R40
      218 CAPTURE                          VAL R33
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R39
      221 CAPTURE                          VAL R37
      222 CAPTURE                          VAL R35
      223 CAPTURE                          VAL R31
      224 CAPTURE                          VAL R23
      225 SETTABLEKS                       R45 R34 K79 ["init"]
      227 DUPCLOSURE                       R45 K80 [PROTO_29]
      228 CAPTURE                          VAL R38
      229 CAPTURE                          VAL R4
      230 CAPTURE                          VAL R25
      231 SETTABLEKS                       R45 R34 K81 ["didUpdate"]
      233 DUPCLOSURE                       R45 K82 [PROTO_31]
      234 CAPTURE                          VAL R38
      235 CAPTURE                          VAL R39
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R35
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R5
      243 CAPTURE                          VAL R21
      244 SETTABLEKS                       R45 R34 K83 ["render"]
      246 MOVE                             R45 R7
      247 DUPTABLE                         R46 K84 [{"Analytics", "Localization", "Stylizer", "PluginActions", "Plugin"}]
      248 SETTABLEKS                       R8 R46 K13 ["Analytics"]
      250 SETTABLEKS                       R9 R46 K14 ["Localization"]
      252 SETTABLEKS                       R13 R46 K21 ["Stylizer"]
      254 SETTABLEKS                       R10 R46 K15 ["PluginActions"]
      256 SETTABLEKS                       R11 R46 K16 ["Plugin"]
      258 CALL                             R45 1 1
      259 MOVE                             R46 R34
      260 CALL                             R45 1 1
      261 MOVE                             R34 R45
      262 GETTABLEKS                       R45 R2 K85 ["connect"]
      264 DUPCLOSURE                       R46 K86 [PROTO_32]
      265 CAPTURE                          VAL R44
      266 CAPTURE                          VAL R15
      267 DUPCLOSURE                       R47 K87 [PROTO_39]
      268 CAPTURE                          VAL R27
      269 CAPTURE                          VAL R29
      270 CAPTURE                          VAL R30
      271 CAPTURE                          VAL R28
      272 CAPTURE                          VAL R36
      273 CALL                             R45 2 1
      274 MOVE                             R46 R34
      275 CALL                             R45 1 1
      276 MOVE                             R34 R45
      277 RETURN                           R34 1
