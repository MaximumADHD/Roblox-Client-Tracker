PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+4]
        3 NEWTABLE                         R2 0 0
        5 RETURN                           R2 1
        6 NEWTABLE                         R2 0 0
        8 GETIMPORT                        R3 K2 [ipairs]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 3
       12 FORGPREP_INEXT                   R3
       13 LOADNIL                          R8
       14 GETTABLE                         R9 R1 R7
       15 JUMPIFNOT                        R9 ; [+12]
       16 GETUPVAL                         R9 0
       17 GETTABLE                         R10 R1 R7
       18 CALL                             R9 1 1
       19 MOVE                             R8 R9
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R10 R8 K3 ["childPaths"]
       23 MOVE                             R11 R1
       24 CALL                             R9 2 1
       25 SETTABLEKS                       R9 R8 K4 ["children"]
       27 JUMP                             ; [+10]
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R9 R10 K5 ["fromExpression"]
       31 MOVE                             R10 R7
       32 CALL                             R9 1 1
       33 MOVE                             R8 R9
       34 NEWTABLE                         R9 0 0
       36 SETTABLEKS                       R9 R8 K4 ["children"]
       38 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       40 MOVE                             R10 R2
       41 MOVE                             R11 R8
       42 GETIMPORT                        R9 K8 [table.insert]
       44 CALL                             R9 2 0
       45 FORGLOOP                         R3 2 [inext] ; [-33]
       47 RETURN                           R2 1

PROTO_1:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R3 K2 [ipairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 GETTABLEKS                       R9 R7 K3 ["pathColumn"]
       11 GETTABLE                         R8 R2 R9
       12 SETTABLE                         R8 R1 R7
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R9 R7 K4 ["children"]
       16 MOVE                             R10 R1
       17 MOVE                             R11 R2
       18 CALL                             R8 3 0
       19 FORGLOOP                         R3 2 [inext] ; [-11]
       21 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 GETTABLEKS                       R10 R8 K2 ["pathColumn"]
        9 GETTABLE                         R9 R1 R10
       10 JUMPIFNOT                        R9 ; [+7]
       11 GETTABLEKS                       R10 R9 K3 ["textFilteredOut"]
       13 JUMPIF                           R10 ; [+11]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R10 R9 K4 ["scopeFilteredOut"]
       17 JUMPIF                           R10 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       20 MOVE                             R11 R3
       21 MOVE                             R12 R8
       22 GETIMPORT                        R10 K7 [table.insert]
       24 CALL                             R10 2 0
       25 FORGLOOP                         R4 2 [inext] ; [-19]
       27 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETIMPORT                        R4 K1 [ipairs]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 3
        7 FORGPREP_INEXT                   R4
        8 GETIMPORT                        R9 K1 [ipairs]
       10 MOVE                             R10 R1
       11 CALL                             R9 1 3
       12 FORGPREP_INEXT                   R9
       13 GETTABLE                         R14 R2 R13
       14 JUMPIFNOTEQKNIL                  R14 ; [+6]
       16 GETIMPORT                        R14 K3 [warn]
       18 LOADK                            R15 K4 ["debug variable id not found in store when constructing DisplayTable"]
       19 CALL                             R14 1 0
       20 RETURN                           R0 0
       21 GETTABLE                         R15 R2 R13
       22 GETTABLEKS                       R14 R15 K5 ["expressionColumn"]
       24 JUMPIFNOTEQ                      R8 R14 ; [+3]
       26 SETTABLE                         R13 R3 R7
       27 JUMP                             ; [+2]
       28 FORGLOOP                         R9 2 [inext] ; [-16]
       30 FORGLOOP                         R4 2 [inext] ; [-23]
       32 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Localization"]
        5 NEWTABLE                         R3 0 0
        7 GETIMPORT                        R4 K3 [ipairs]
        9 MOVE                             R5 R1
       10 CALL                             R4 1 3
       11 FORGPREP_INEXT                   R4
       12 DUPTABLE                         R9 K7 [{"Name", "Key", "Tooltip"}]
       13 LOADK                            R12 K8 ["Watch"]
       14 GETUPVAL                         R14 1
       15 GETTABLE                         R13 R14 R8
       16 NAMECALL                         R10 R2 K9 ["getText"]
       18 CALL                             R10 3 1
       19 SETTABLEKS                       R10 R9 K4 ["Name"]
       21 SETTABLEKS                       R8 R9 K5 ["Key"]
       23 LOADK                            R13 K8 ["Watch"]
       24 GETUPVAL                         R17 1
       25 GETTABLE                         R15 R17 R8
       26 LOADK                            R16 K6 ["Tooltip"]
       27 CONCAT                           R14 R15 R16
       28 NAMECALL                         R11 R2 K9 ["getText"]
       30 CALL                             R11 3 1
       31 ORK                              R10 R11 K10 []
       32 SETTABLEKS                       R10 R9 K6 ["Tooltip"]
       34 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       36 MOVE                             R11 R3
       37 MOVE                             R12 R9
       38 GETIMPORT                        R10 K13 [table.insert]
       40 CALL                             R10 2 0
       41 FORGLOOP                         R4 2 [inext] ; [-30]
       43 GETIMPORT                        R4 K3 [ipairs]
       45 MOVE                             R5 R0
       46 CALL                             R4 1 3
       47 FORGPREP_INEXT                   R4
       48 DUPTABLE                         R9 K7 [{"Name", "Key", "Tooltip"}]
       49 LOADK                            R12 K8 ["Watch"]
       50 MOVE                             R13 R8
       51 NAMECALL                         R10 R2 K9 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K4 ["Name"]
       56 GETUPVAL                         R11 2
       57 GETTABLE                         R10 R11 R8
       58 SETTABLEKS                       R10 R9 K5 ["Key"]
       60 LOADK                            R13 K8 ["Watch"]
       61 MOVE                             R15 R8
       62 LOADK                            R16 K6 ["Tooltip"]
       63 CONCAT                           R14 R15 R16
       64 NAMECALL                         R11 R2 K9 ["getText"]
       66 CALL                             R11 3 1
       67 ORK                              R10 R11 K10 []
       68 SETTABLEKS                       R10 R9 K6 ["Tooltip"]
       70 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       72 MOVE                             R11 R3
       73 MOVE                             R12 R9
       74 GETIMPORT                        R10 K13 [table.insert]
       76 CALL                             R10 2 0
       77 FORGLOOP                         R4 2 [inext] ; [-30]
       79 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Localization"]
        5 NEWTABLE                         R1 0 4
        7 DUPTABLE                         R2 K5 [{"Name", "Key", "Tooltip"}]
        8 LOADK                            R5 K6 ["Watch"]
        9 LOADK                            R6 K7 ["NameColumn"]
       10 NAMECALL                         R3 R0 K8 ["getText"]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K2 ["Name"]
       15 GETUPVAL                         R4 1
       16 GETTABLEN                        R3 R4 1
       17 SETTABLEKS                       R3 R2 K3 ["Key"]
       19 LOADK                            R6 K6 ["Watch"]
       20 LOADK                            R7 K10 ["NameColumnTooltip"]
       21 NAMECALL                         R4 R0 K8 ["getText"]
       23 CALL                             R4 3 1
       24 ORK                              R3 R4 K9 []
       25 SETTABLEKS                       R3 R2 K4 ["Tooltip"]
       27 DUPTABLE                         R3 K5 [{"Name", "Key", "Tooltip"}]
       28 LOADK                            R6 K6 ["Watch"]
       29 LOADK                            R7 K11 ["ScopeColumn"]
       30 NAMECALL                         R4 R0 K8 ["getText"]
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K2 ["Name"]
       35 GETUPVAL                         R5 1
       36 GETTABLEN                        R4 R5 2
       37 SETTABLEKS                       R4 R3 K3 ["Key"]
       39 LOADK                            R7 K6 ["Watch"]
       40 LOADK                            R8 K12 ["ScopeColumnTooltip"]
       41 NAMECALL                         R5 R0 K8 ["getText"]
       43 CALL                             R5 3 1
       44 ORK                              R4 R5 K9 []
       45 SETTABLEKS                       R4 R3 K4 ["Tooltip"]
       47 DUPTABLE                         R4 K5 [{"Name", "Key", "Tooltip"}]
       48 LOADK                            R7 K6 ["Watch"]
       49 LOADK                            R8 K13 ["ValueColumn"]
       50 NAMECALL                         R5 R0 K8 ["getText"]
       52 CALL                             R5 3 1
       53 SETTABLEKS                       R5 R4 K2 ["Name"]
       55 GETUPVAL                         R6 1
       56 GETTABLEN                        R5 R6 3
       57 SETTABLEKS                       R5 R4 K3 ["Key"]
       59 LOADK                            R8 K6 ["Watch"]
       60 LOADK                            R9 K14 ["ValueColumnTooltip"]
       61 NAMECALL                         R6 R0 K8 ["getText"]
       63 CALL                             R6 3 1
       64 ORK                              R5 R6 K9 []
       65 SETTABLEKS                       R5 R4 K4 ["Tooltip"]
       67 DUPTABLE                         R5 K5 [{"Name", "Key", "Tooltip"}]
       68 LOADK                            R8 K6 ["Watch"]
       69 LOADK                            R9 K15 ["DataTypeColumn"]
       70 NAMECALL                         R6 R0 K8 ["getText"]
       72 CALL                             R6 3 1
       73 SETTABLEKS                       R6 R5 K2 ["Name"]
       75 GETUPVAL                         R7 1
       76 GETTABLEN                        R6 R7 4
       77 SETTABLEKS                       R6 R5 K3 ["Key"]
       79 LOADK                            R9 K6 ["Watch"]
       80 LOADK                            R10 K16 ["DataTypeColumnTooltip"]
       81 NAMECALL                         R7 R0 K8 ["getText"]
       83 CALL                             R7 3 1
       84 ORK                              R6 R7 K9 []
       85 SETTABLEKS                       R6 R5 K4 ["Tooltip"]
       87 SETLIST                          R1 R2 4 [1]
       89 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Localization"]
        5 NEWTABLE                         R1 0 3
        7 DUPTABLE                         R2 K4 [{"Name", "Key"}]
        8 LOADK                            R5 K5 ["Watch"]
        9 LOADK                            R6 K6 ["ExpressionColumn"]
       10 NAMECALL                         R3 R0 K7 ["getText"]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K2 ["Name"]
       15 GETUPVAL                         R4 1
       16 GETTABLEN                        R3 R4 1
       17 SETTABLEKS                       R3 R2 K3 ["Key"]
       19 DUPTABLE                         R3 K9 [{"Name", "Key", "Tooltip"}]
       20 LOADK                            R6 K5 ["Watch"]
       21 LOADK                            R7 K10 ["ValueColumn"]
       22 NAMECALL                         R4 R0 K7 ["getText"]
       24 CALL                             R4 3 1
       25 SETTABLEKS                       R4 R3 K2 ["Name"]
       27 GETUPVAL                         R5 1
       28 GETTABLEN                        R4 R5 2
       29 SETTABLEKS                       R4 R3 K3 ["Key"]
       31 LOADK                            R7 K5 ["Watch"]
       32 LOADK                            R8 K12 ["ValueColumnTooltip"]
       33 NAMECALL                         R5 R0 K7 ["getText"]
       35 CALL                             R5 3 1
       36 ORK                              R4 R5 K11 []
       37 SETTABLEKS                       R4 R3 K8 ["Tooltip"]
       39 DUPTABLE                         R4 K9 [{"Name", "Key", "Tooltip"}]
       40 LOADK                            R7 K5 ["Watch"]
       41 LOADK                            R8 K13 ["DataTypeColumn"]
       42 NAMECALL                         R5 R0 K7 ["getText"]
       44 CALL                             R5 3 1
       45 SETTABLEKS                       R5 R4 K2 ["Name"]
       47 GETUPVAL                         R6 1
       48 GETTABLEN                        R5 R6 3
       49 SETTABLEKS                       R5 R4 K3 ["Key"]
       51 LOADK                            R8 K5 ["Watch"]
       52 LOADK                            R9 K14 ["DataTypeColumnTooltip"]
       53 NAMECALL                         R6 R0 K7 ["getText"]
       55 CALL                             R6 3 1
       56 ORK                              R5 R6 K11 []
       57 SETTABLEKS                       R5 R4 K8 ["Tooltip"]
       59 SETLIST                          R1 R2 3 [1]
       61 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"VariableColumnSizes"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["VariableColumnSizes"]
        4 RETURN                           R1 1

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"MyWatchColumnSizes"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["MyWatchColumnSizes"]
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["SelectedTab"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["Variables"]
        8 JUMPIFEQ                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETUPVAL                         R3 0
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R3 R3 K3 ["setState"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R3 R3 K3 ["setState"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["CurrentStepStateBundle"]
        5 GETIMPORT                        R3 K3 [game]
        7 LOADK                            R5 K4 ["DebuggerConnectionManager"]
        8 NAMECALL                         R3 R3 K5 ["GetService"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R2 ; [+6]
       12 LOADB                            R5 0
       13 FASTCALL1                        ASSERT R5 ; [+2]
       14 GETIMPORT                        R4 K7 [assert]
       16 CALL                             R4 1 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R7 R2 K8 ["debuggerStateToken"]
       20 GETTABLEKS                       R6 R7 K9 ["debuggerConnectionId"]
       22 NAMECALL                         R4 R3 K10 ["GetConnectionById"]
       24 CALL                             R4 2 1
       25 GETIMPORT                        R5 K12 [pairs]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 3
       29 FORGPREP_NEXT                    R5
       30 GETTABLEKS                       R11 R1 K13 ["SelectedTab"]
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R12 R13 K14 ["Variables"]
       35 JUMPIFEQ                         R11 R12 ; [+2]
       37 LOADB                            R10 0 +1
       38 LOADB                            R10 1
       39 JUMPIFNOT                        R10 ; [+10]
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R12 R13 K0 ["props"]
       43 GETTABLEKS                       R11 R12 K15 ["OnVariableExpansionDispatch"]
       45 GETTABLEKS                       R12 R8 K16 ["pathColumn"]
       47 MOVE                             R13 R9
       48 CALL                             R11 2 0
       49 JUMP                             ; [+9]
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R12 R13 K0 ["props"]
       53 GETTABLEKS                       R11 R12 K17 ["OnExpressionExpansionDispatch"]
       55 GETTABLEKS                       R12 R8 K16 ["pathColumn"]
       57 MOVE                             R13 R9
       58 CALL                             R11 2 0
       59 JUMPIFNOT                        R9 ; [+13]
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R12 R13 K0 ["props"]
       63 GETTABLEKS                       R11 R12 K18 ["OnLazyLoadChildren"]
       65 GETTABLEKS                       R12 R8 K16 ["pathColumn"]
       67 GETTABLEKS                       R13 R8 K19 ["idColumn"]
       69 MOVE                             R14 R2
       70 MOVE                             R15 R10
       71 MOVE                             R16 R4
       72 CALL                             R11 5 0
       73 FORGLOOP                         R5 2 ; [-44]
       75 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["props"]
        5 GETTABLEKS                       R2 R4 K3 ["RootItems"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 GETTABLEKS                       R6 R5 K4 ["expressionColumn"]
       11 JUMPIFNOTEQ                      R6 R0 ; [+3]
       13 LOADB                            R6 1
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 [inext] ; [-7]
       17 LOADB                            R1 0
       18 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R5 R2 K0 ["item"]
        2 GETTABLEKS                       R4 R5 K1 ["expressionColumn"]
        4 GETTABLEKS                       R5 R1 K2 ["Text"]
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K3 ["props"]
        9 GETTABLEKS                       R6 R7 K4 ["CurrentStepStateBundle"]
       11 GETIMPORT                        R7 K6 [game]
       13 LOADK                            R9 K7 ["DebuggerConnectionManager"]
       14 NAMECALL                         R7 R7 K8 ["GetService"]
       16 CALL                             R7 2 1
       17 JUMPIFNOTEQKN                    R3 K9 [1] ; [+113]
       19 LOADB                            R8 0
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R9 R10 K10 ["IsDuplicateWatchEntry"]
       23 MOVE                             R10 R5
       24 CALL                             R9 1 1
       25 JUMPIFNOT                        R9 ; [+16]
       26 JUMPIFNOTEQKS                    R4 K11 [""] ; [+5]
       28 LOADK                            R9 K11 [""]
       29 SETTABLEKS                       R9 R1 K2 ["Text"]
       31 RETURN                           R0 0
       32 JUMPIFEQ                         R4 R5 ; [+8]
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R10 R11 K3 ["props"]
       37 GETTABLEKS                       R9 R10 K12 ["OnRemoveExpression"]
       39 MOVE                             R10 R4
       40 CALL                             R9 1 0
       41 RETURN                           R0 0
       42 JUMPIFNOTEQKS                    R4 K11 [""] ; [+33]
       44 JUMPIFEQKS                       R5 K11 [""] ; [+31]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R10 R11 K3 ["props"]
       49 GETTABLEKS                       R9 R10 K13 ["OnAddExpression"]
       51 MOVE                             R10 R5
       52 CALL                             R9 1 0
       53 LOADB                            R8 1
       54 JUMPIFEQKNIL                     R6 ; [+63]
       56 GETTABLEKS                       R9 R6 K14 ["debuggerStateToken"]
       58 JUMPIFNOT                        R9 ; [+59]
       59 GETTABLEKS                       R12 R9 K15 ["debuggerConnectionId"]
       61 NAMECALL                         R10 R7 K16 ["GetConnectionById"]
       63 CALL                             R10 2 1
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R12 R13 K3 ["props"]
       67 GETTABLEKS                       R11 R12 K17 ["OnExecuteExpressionForAllFrames"]
       69 MOVE                             R12 R5
       70 MOVE                             R13 R10
       71 MOVE                             R14 R9
       72 GETTABLEKS                       R15 R6 K18 ["threadId"]
       74 CALL                             R11 4 0
       75 JUMP                             ; [+42]
       76 JUMPIFNOTEQKS                    R5 K11 [""] ; [+9]
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R10 R11 K3 ["props"]
       81 GETTABLEKS                       R9 R10 K12 ["OnRemoveExpression"]
       83 MOVE                             R10 R4
       84 CALL                             R9 1 0
       85 JUMP                             ; [+32]
       86 JUMPIFEQ                         R4 R5 ; [+31]
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R10 R11 K3 ["props"]
       91 GETTABLEKS                       R9 R10 K19 ["OnChangeExpression"]
       93 MOVE                             R10 R4
       94 MOVE                             R11 R5
       95 CALL                             R9 2 0
       96 LOADB                            R8 1
       97 JUMPIFEQKNIL                     R6 ; [+20]
       99 GETTABLEKS                       R9 R6 K14 ["debuggerStateToken"]
      101 JUMPIFNOT                        R9 ; [+16]
      102 GETTABLEKS                       R12 R9 K15 ["debuggerConnectionId"]
      104 NAMECALL                         R10 R7 K16 ["GetConnectionById"]
      106 CALL                             R10 2 1
      107 GETUPVAL                         R13 0
      108 GETTABLEKS                       R12 R13 K3 ["props"]
      110 GETTABLEKS                       R11 R12 K17 ["OnExecuteExpressionForAllFrames"]
      112 MOVE                             R12 R5
      113 MOVE                             R13 R10
      114 MOVE                             R14 R9
      115 GETTABLEKS                       R15 R6 K18 ["threadId"]
      117 CALL                             R11 4 0
      118 JUMPIFNOT                        R8 ; [+12]
      119 GETUPVAL                         R11 0
      120 GETTABLEKS                       R10 R11 K3 ["props"]
      122 GETTABLEKS                       R9 R10 K20 ["Analytics"]
      124 GETUPVAL                         R12 1
      125 GETTABLEKS                       R11 R12 K21 ["WatchAdded"]
      127 LOADK                            R12 K22 ["WatchWindow"]
      128 NAMECALL                         R9 R9 K23 ["report"]
      130 CALL                             R9 3 0
      131 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 GETTABLEKS                       R2 R0 K1 ["Data"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["props"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K3 ["WatchActionIds"]
       10 GETTABLEKS                       R4 R5 K4 ["DeleteWatch"]
       12 JUMPIFNOTEQ                      R1 R4 ; [+15]
       14 GETTABLEKS                       R5 R2 K5 ["item"]
       16 GETTABLEKS                       R4 R5 K6 ["expressionColumn"]
       18 JUMPIFEQKS                       R4 K7 [""] ; [+19]
       20 GETTABLEKS                       R4 R3 K8 ["OnRemoveExpression"]
       22 GETTABLEKS                       R6 R2 K5 ["item"]
       24 GETTABLEKS                       R5 R6 K6 ["expressionColumn"]
       26 CALL                             R4 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K3 ["WatchActionIds"]
       31 GETTABLEKS                       R4 R5 K9 ["DeleteAllWatches"]
       33 JUMPIFNOTEQ                      R1 R4 ; [+4]
       35 GETTABLEKS                       R4 R3 K10 ["OnClearAllExpressions"]
       37 CALL                             R4 0 0
       38 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["SelectedTab"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["Watches"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+27]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R1 K3 ["Localization"]
       15 GETTABLEKS                       R3 R1 K4 ["Plugin"]
       17 NAMECALL                         R3 R3 K5 ["get"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K6 ["getWatchActions"]
       23 MOVE                             R5 R2
       24 MOVE                             R6 R0
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R7 R8 K7 ["onMenuActionSelected"]
       28 CALL                             R4 3 1
       29 GETUPVAL                         R5 3
       30 MOVE                             R6 R3
       31 MOVE                             R7 R4
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R8 R9 K8 ["WatchActionsOrder"]
       35 CALL                             R5 3 0
       36 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["SelectedTab"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["Watches"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+14]
       10 GETIMPORT                        R1 K4 [game]
       12 LOADK                            R3 K5 ["DebuggerUIService"]
       13 NAMECALL                         R1 R1 K6 ["GetService"]
       15 CALL                             R1 2 1
       16 GETTABLEKS                       R5 R0 K7 ["item"]
       18 GETTABLEKS                       R4 R5 K8 ["expressionColumn"]
       20 NAMECALL                         R2 R1 K9 ["EditWatch"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R2 K1 ["SortOrder"]
        5 OR                               R3 R4 R1
        6 GETTABLEKS                       R4 R2 K2 ["OnSetWatchSortState"]
        8 GETTABLEKS                       R6 R2 K3 ["SortIndex"]
       10 JUMPIFNOTEQ                      R6 R0 ; [+3]
       12 MOVE                             R5 R1
       13 JUMPIF                           R5 ; [+1]
       14 MOVE                             R5 R3
       15 MOVE                             R6 R0
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R2 0 2
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 SETLIST                          R2 R3 2 [1]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["props"]
        9 GETTABLEKS                       R5 R3 K1 ["SelectedTab"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K2 ["Variables"]
       14 JUMPIFEQ                         R5 R6 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 JUMPIFNOTEQ                      R0 R1 ; [+3]
       20 LOADB                            R5 0
       21 RETURN                           R5 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K3 ["sortTableByColumnAndOrder"]
       25 MOVE                             R6 R2
       26 GETTABLEKS                       R7 R3 K4 ["SortIndex"]
       28 GETTABLEKS                       R8 R3 K5 ["SortOrder"]
       30 JUMPIFNOT                        R4 ; [+2]
       31 GETUPVAL                         R9 3
       32 JUMPIF                           R9 ; [+1]
       33 GETUPVAL                         R9 4
       34 LOADB                            R10 0
       35 CALL                             R5 5 0
       36 GETTABLEN                        R6 R2 1
       37 JUMPIFEQ                         R6 R0 ; [+2]
       39 LOADB                            R5 0 +1
       40 LOADB                            R5 1
       41 RETURN                           R5 1

PROTO_19:
        0 DUPCLOSURE                       R1 K0 [PROTO_4]
        1 SETTABLEKS                       R1 R0 K1 ["getTreeChildren"]
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R1 R0 K2 ["getTableColumns"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R1 R0 K3 ["getVariableTableColumns"]
       14 NEWCLOSURE                       R1 P3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 SETTABLEKS                       R1 R0 K4 ["getWatchTableColumns"]
       19 NEWTABLE                         R1 0 0
       21 LOADN                            R4 1
       22 LOADN                            R2 4
       23 LOADN                            R3 1
       24 FORNPREP                         R2
       25 MOVE                             R6 R1
       26 GETIMPORT                        R7 K7 [UDim.new]
       28 LOADK                            R8 K8 [0.25]
       29 LOADN                            R9 0
       30 CALL                             R7 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R5 K11 [table.insert]
       34 CALL                             R5 -1 0
       35 FORNLOOP                         R2
       36 NEWTABLE                         R2 0 0
       38 MOVE                             R4 R2
       39 GETIMPORT                        R5 K7 [UDim.new]
       41 LOADK                            R6 K12 [0.333333333333333]
       42 LOADN                            R7 0
       43 CALL                             R5 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R3 K11 [table.insert]
       47 CALL                             R3 -1 0
       48 MOVE                             R4 R2
       49 GETIMPORT                        R5 K7 [UDim.new]
       51 LOADK                            R6 K12 [0.333333333333333]
       52 LOADN                            R7 0
       53 CALL                             R5 2 -1
       54 FASTCALL                         TABLE_INSERT ; [+2]
       55 GETIMPORT                        R3 K11 [table.insert]
       57 CALL                             R3 -1 0
       58 MOVE                             R4 R2
       59 GETIMPORT                        R5 K7 [UDim.new]
       61 LOADK                            R6 K12 [0.333333333333333]
       62 LOADN                            R7 0
       63 CALL                             R5 2 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R3 K11 [table.insert]
       67 CALL                             R3 -1 0
       68 DUPTABLE                         R3 K15 [{"VariableColumnSizes", "MyWatchColumnSizes"}]
       69 SETTABLEKS                       R1 R3 K13 ["VariableColumnSizes"]
       71 SETTABLEKS                       R2 R3 K14 ["MyWatchColumnSizes"]
       73 SETTABLEKS                       R3 R0 K16 ["state"]
       75 NEWCLOSURE                       R3 P4
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U4
       78 SETTABLEKS                       R3 R0 K17 ["OnColumnSizesChange"]
       80 NEWCLOSURE                       R3 P5
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U4
       83 SETTABLEKS                       R3 R0 K18 ["onExpansionChange"]
       85 NEWCLOSURE                       R3 P6
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R3 R0 K19 ["IsDuplicateWatchEntry"]
       89 NEWCLOSURE                       R3 P7
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U5
       92 SETTABLEKS                       R3 R0 K20 ["OnFocusLost"]
       94 NEWCLOSURE                       R3 P8
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U6
       97 SETTABLEKS                       R3 R0 K21 ["onMenuActionSelected"]
       99 NEWCLOSURE                       R3 P9
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          UPVAL U8
      104 CAPTURE                          UPVAL U6
      105 SETTABLEKS                       R3 R0 K22 ["onRightClick"]
      107 NEWCLOSURE                       R3 P10
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U4
      110 SETTABLEKS                       R3 R0 K23 ["OnDoubleClick"]
      112 NEWCLOSURE                       R3 P11
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R3 R0 K24 ["OnSortChange"]
      116 NEWCLOSURE                       R3 P12
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U4
      119 CAPTURE                          UPVAL U9
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          UPVAL U3
      122 SETTABLEKS                       R3 R0 K25 ["childSort"]
      124 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K2 [{"VariableColumnSizes", "MyWatchColumnSizes"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["fetchSizesFromColumnScales"]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K4 ["ColumnSizeVariables"]
        8 GETTABLE                         R3 R4 R5
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K0 ["VariableColumnSizes"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["fetchSizesFromColumnScales"]
       15 GETUPVAL                         R4 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K5 ["ColumnSizeMyWatches"]
       19 GETTABLE                         R3 R4 R5
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R1 K1 ["MyWatchColumnSizes"]
       23 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 LOADK                            R5 K3 ["watchWindowConfigs"]
        8 NAMECALL                         R3 R2 K4 ["GetSetting"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+65]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K5 ["ColumnSizeVariables"]
       15 GETTABLE                         R4 R3 R5
       16 JUMPIFNOT                        R4 ; [+60]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K6 ["ColumnSizeMyWatches"]
       20 GETTABLE                         R4 R3 R5
       21 JUMPIFNOT                        R4 ; [+55]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K7 ["Tab"]
       25 GETTABLE                         R4 R3 R5
       26 JUMPIFNOT                        R4 ; [+50]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K8 ["ScopeFilter"]
       30 GETTABLE                         R4 R3 R5
       31 JUMPIFNOT                        R4 ; [+45]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K9 ["VariablesColumnFilter"]
       35 GETTABLE                         R4 R3 R5
       36 JUMPIFNOT                        R4 ; [+40]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K10 ["MyWatchesColumnFilter"]
       40 GETTABLE                         R4 R3 R5
       41 JUMPIFNOT                        R4 ; [+35]
       42 GETTABLEKS                       R4 R1 K11 ["onScopeFilterChange"]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K8 ["ScopeFilter"]
       47 GETTABLE                         R5 R3 R6
       48 CALL                             R4 1 0
       49 GETTABLEKS                       R4 R1 K12 ["onTabSelected"]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R6 R7 K7 ["Tab"]
       54 GETTABLE                         R5 R3 R6
       55 CALL                             R4 1 0
       56 GETTABLEKS                       R4 R1 K13 ["onVariablesFilterChange"]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R6 R7 K9 ["VariablesColumnFilter"]
       61 GETTABLE                         R5 R3 R6
       62 CALL                             R4 1 0
       63 GETTABLEKS                       R4 R1 K14 ["onMyWatchesFilterChange"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R6 R7 K10 ["MyWatchesColumnFilter"]
       68 GETTABLE                         R5 R3 R6
       69 CALL                             R4 1 0
       70 NEWCLOSURE                       R6 P0
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          VAL R3
       73 CAPTURE                          UPVAL U0
       74 NAMECALL                         R4 R0 K15 ["setState"]
       76 CALL                             R4 2 0
       77 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["ScopeFilter"]
       12 GETTABLEKS                       R5 R1 K4 ["EnabledScopes"]
       14 SETTABLE                         R5 R3 R4
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K5 ["Tab"]
       18 GETTABLEKS                       R5 R1 K6 ["SelectedTab"]
       20 SETTABLE                         R5 R3 R4
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K7 ["ColumnSizeVariables"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K8 ["fetchScaleFromColumnSizes"]
       27 GETTABLEKS                       R7 R0 K9 ["state"]
       29 GETTABLEKS                       R6 R7 K10 ["VariableColumnSizes"]
       31 CALL                             R5 1 1
       32 SETTABLE                         R5 R3 R4
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K11 ["ColumnSizeMyWatches"]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R5 R6 K8 ["fetchScaleFromColumnSizes"]
       39 GETTABLEKS                       R7 R0 K9 ["state"]
       41 GETTABLEKS                       R6 R7 K12 ["MyWatchColumnSizes"]
       43 CALL                             R5 1 1
       44 SETTABLE                         R5 R3 R4
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R4 R5 K13 ["VariablesColumnFilter"]
       48 GETTABLEKS                       R5 R1 K13 ["VariablesColumnFilter"]
       50 SETTABLE                         R5 R3 R4
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R4 R5 K14 ["MyWatchesColumnFilter"]
       54 GETTABLEKS                       R5 R1 K14 ["MyWatchesColumnFilter"]
       56 SETTABLE                         R5 R3 R4
       57 LOADK                            R6 K15 ["watchWindowConfigs"]
       58 MOVE                             R7 R3
       59 NAMECALL                         R4 R2 K16 ["SetSetting"]
       61 CALL                             R4 3 0
       62 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R1 K1 [{"VariableColumnSizes"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["VariableColumnSizes"]
        4 RETURN                           R1 1

PROTO_24:
        0 DUPTABLE                         R1 K1 [{"MyWatchColumnSizes"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["MyWatchColumnSizes"]
        4 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Expressions"]
        4 GETTABLEKS                       R4 R1 K1 ["Expressions"]
        6 JUMPIFEQ                         R3 R4 ; [+13]
        8 GETIMPORT                        R3 K3 [game]
       10 LOADK                            R5 K4 ["DebuggerUIService"]
       11 NAMECALL                         R3 R3 K5 ["GetService"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+5]
       15 GETTABLEKS                       R6 R2 K1 ["Expressions"]
       17 NAMECALL                         R4 R3 K6 ["SetWatchExpressions"]
       19 CALL                             R4 2 0
       20 GETTABLEKS                       R4 R2 K7 ["SelectedTab"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K8 ["Variables"]
       25 JUMPIFEQ                         R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 JUMPIFNOT                        R3 ; [+2]
       30 GETUPVAL                         R4 1
       31 JUMP                             ; [+1]
       32 GETUPVAL                         R4 2
       33 JUMPIFNOT                        R3 ; [+3]
       34 GETTABLEKS                       R5 R2 K9 ["VariablesColumnFilter"]
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R5 R2 K10 ["MyWatchesColumnFilter"]
       39 JUMPIFNOT                        R3 ; [+3]
       40 GETTABLEKS                       R6 R1 K9 ["VariablesColumnFilter"]
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R6 R1 K10 ["MyWatchesColumnFilter"]
       45 LENGTH                           R8 R5
       46 LENGTH                           R9 R4
       47 ADD                              R7 R8 R9
       48 JUMPIFNOT                        R3 ; [+5]
       49 GETTABLEKS                       R9 R0 K11 ["state"]
       51 GETTABLEKS                       R8 R9 K12 ["VariableColumnSizes"]
       53 JUMP                             ; [+4]
       54 GETTABLEKS                       R9 R0 K11 ["state"]
       56 GETTABLEKS                       R8 R9 K13 ["MyWatchColumnSizes"]
       58 LENGTH                           R9 R5
       59 LENGTH                           R10 R6
       60 JUMPIFEQ                         R9 R10 ; [+69]
       62 LENGTH                           R9 R8
       63 JUMPIFEQ                         R9 R7 ; [+66]
       65 NEWTABLE                         R9 0 0
       67 LENGTH                           R11 R6
       68 LENGTH                           R12 R4
       69 ADD                              R10 R11 R12
       70 GETUPVAL                         R13 3
       71 GETTABLEKS                       R12 R13 K14 ["List"]
       73 GETTABLEKS                       R11 R12 K15 ["toSet"]
       75 MOVE                             R12 R5
       76 CALL                             R11 1 1
       77 GETUPVAL                         R13 4
       78 GETTABLEKS                       R12 R13 K16 ["fetchOldColumnSizes"]
       80 MOVE                             R13 R10
       81 MOVE                             R14 R6
       82 MOVE                             R15 R4
       83 MOVE                             R16 R8
       84 CALL                             R12 4 1
       85 JUMPIFNOTLT                      R7 R10 ; [+21]
       87 GETUPVAL                         R14 4
       88 GETTABLEKS                       R13 R14 K17 ["fetchDeletedColumnsSize"]
       90 LENGTH                           R14 R4
       91 MOVE                             R15 R10
       92 MOVE                             R16 R6
       93 MOVE                             R17 R12
       94 MOVE                             R18 R11
       95 CALL                             R13 5 1
       96 GETUPVAL                         R15 4
       97 GETTABLEKS                       R14 R15 K18 ["updatedSizesAfterRemovingColumns"]
       99 MOVE                             R15 R7
      100 MOVE                             R16 R13
      101 MOVE                             R17 R12
      102 MOVE                             R18 R4
      103 MOVE                             R19 R5
      104 CALL                             R14 5 1
      105 MOVE                             R9 R14
      106 JUMP                             ; [+10]
      107 GETUPVAL                         R14 4
      108 GETTABLEKS                       R13 R14 K19 ["updatedSizesAfterAddingColumns"]
      110 MOVE                             R14 R7
      111 MOVE                             R15 R10
      112 MOVE                             R16 R12
      113 MOVE                             R17 R5
      114 MOVE                             R18 R4
      115 CALL                             R13 5 1
      116 MOVE                             R9 R13
      117 JUMPIFNOT                        R3 ; [+6]
      118 NEWCLOSURE                       R15 P0
      119 CAPTURE                          REF R9
      120 NAMECALL                         R13 R0 K20 ["setState"]
      122 CALL                             R13 2 0
      123 JUMP                             ; [+5]
      124 NEWCLOSURE                       R15 P1
      125 CAPTURE                          REF R9
      126 NAMECALL                         R13 R0 K20 ["setState"]
      128 CALL                             R13 2 0
      129 CLOSEUPVALS                      R9
      130 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+13]
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K1 [{"Width"}]
        5 GETUPVAL                         R8 2
        6 GETTABLEKS                       R7 R8 K2 ["state"]
        8 GETTABLEKS                       R6 R7 K3 ["VariableColumnSizes"]
       10 GETTABLE                         R5 R6 R1
       11 SETTABLEKS                       R5 R4 K0 ["Width"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R0
       17 DUPTABLE                         R4 K1 [{"Width"}]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K2 ["state"]
       21 GETTABLEKS                       R6 R7 K4 ["MyWatchColumnSizes"]
       23 GETTABLE                         R5 R6 R1
       24 SETTABLEKS                       R5 R4 K0 ["Width"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R1 K2 ["SelectedTab"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["Variables"]
        9 JUMPIFEQ                         R4 R5 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R3 ; [+5]
       15 GETTABLEKS                       R6 R0 K0 ["props"]
       17 GETTABLEKS                       R5 R6 K4 ["VariablesColumnFilter"]
       19 JUMP                             ; [+4]
       20 GETTABLEKS                       R6 R0 K0 ["props"]
       22 GETTABLEKS                       R5 R6 K5 ["MyWatchesColumnFilter"]
       24 JUMPIFNOT                        R3 ; [+2]
       25 GETUPVAL                         R6 1
       26 JUMP                             ; [+1]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R7 R0 K6 ["getTableColumns"]
       30 MOVE                             R8 R5
       31 MOVE                             R9 R6
       32 CALL                             R7 2 1
       33 MOVE                             R4 R7
       34 GETUPVAL                         R7 3
       35 MOVE                             R8 R4
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R0
       40 CALL                             R7 2 1
       41 JUMPIF                           R3 ; [+5]
       42 NEWTABLE                         R8 0 1
       44 LOADB                            R9 1
       45 SETTABLEN                        R9 R8 1
       46 JUMPIF                           R8 ; [+1]
       47 LOADNIL                          R8
       48 GETUPVAL                         R10 5
       49 GETTABLEKS                       R9 R10 K7 ["createElement"]
       51 GETUPVAL                         R10 6
       52 DUPTABLE                         R11 K31 [{"Scroll", "Size", "Columns", "RootItems", "Stylizer", "OnExpansionChange", "GetChildren", "Expansion", "OnFocusLost", "TextInputCols", "RightClick", "OnDoubleClick", "DisableTooltip", "SortIndex", "SortOrder", "OnSortChange", "SortChildren", "OnColumnSizesChange", "UseDeficit", "UseScale", "ClampSize", "ColumnHeaderHeight", "RowHeight", "ExpandOnDoubleClick"}]
       53 LOADB                            R12 1
       54 SETTABLEKS                       R12 R11 K8 ["Scroll"]
       56 GETIMPORT                        R12 K34 [UDim2.fromScale]
       58 LOADN                            R13 1
       59 LOADN                            R14 1
       60 CALL                             R12 2 1
       61 SETTABLEKS                       R12 R11 K9 ["Size"]
       63 SETTABLEKS                       R7 R11 K10 ["Columns"]
       65 GETTABLEKS                       R12 R1 K11 ["RootItems"]
       67 SETTABLEKS                       R12 R11 K11 ["RootItems"]
       69 SETTABLEKS                       R2 R11 K1 ["Stylizer"]
       71 GETTABLEKS                       R12 R0 K35 ["onExpansionChange"]
       73 SETTABLEKS                       R12 R11 K12 ["OnExpansionChange"]
       75 GETTABLEKS                       R12 R0 K36 ["getTreeChildren"]
       77 SETTABLEKS                       R12 R11 K13 ["GetChildren"]
       79 GETTABLEKS                       R12 R1 K37 ["ExpansionTable"]
       81 SETTABLEKS                       R12 R11 K14 ["Expansion"]
       83 GETTABLEKS                       R12 R0 K15 ["OnFocusLost"]
       85 SETTABLEKS                       R12 R11 K15 ["OnFocusLost"]
       87 SETTABLEKS                       R8 R11 K16 ["TextInputCols"]
       89 GETTABLEKS                       R12 R0 K38 ["onRightClick"]
       91 SETTABLEKS                       R12 R11 K17 ["RightClick"]
       93 GETTABLEKS                       R12 R0 K18 ["OnDoubleClick"]
       95 SETTABLEKS                       R12 R11 K18 ["OnDoubleClick"]
       97 LOADB                            R12 0
       98 SETTABLEKS                       R12 R11 K19 ["DisableTooltip"]
      100 GETTABLEKS                       R12 R1 K20 ["SortIndex"]
      102 SETTABLEKS                       R12 R11 K20 ["SortIndex"]
      104 GETTABLEKS                       R12 R1 K21 ["SortOrder"]
      106 SETTABLEKS                       R12 R11 K21 ["SortOrder"]
      108 GETTABLEKS                       R12 R0 K22 ["OnSortChange"]
      110 SETTABLEKS                       R12 R11 K22 ["OnSortChange"]
      112 GETTABLEKS                       R12 R0 K39 ["childSort"]
      114 SETTABLEKS                       R12 R11 K23 ["SortChildren"]
      116 GETTABLEKS                       R12 R0 K24 ["OnColumnSizesChange"]
      118 SETTABLEKS                       R12 R11 K24 ["OnColumnSizesChange"]
      120 LOADB                            R12 0
      121 SETTABLEKS                       R12 R11 K25 ["UseDeficit"]
      123 LOADB                            R12 1
      124 SETTABLEKS                       R12 R11 K26 ["UseScale"]
      126 LOADB                            R12 1
      127 SETTABLEKS                       R12 R11 K27 ["ClampSize"]
      129 GETUPVAL                         R13 7
      130 GETTABLEKS                       R12 R13 K40 ["COLUMN_HEADER_HEIGHT"]
      132 SETTABLEKS                       R12 R11 K28 ["ColumnHeaderHeight"]
      134 GETUPVAL                         R13 7
      135 GETTABLEKS                       R12 R13 K41 ["ROW_HEIGHT"]
      137 SETTABLEKS                       R12 R11 K29 ["RowHeight"]
      139 LOADB                            R12 1
      140 SETTABLEKS                       R12 R11 K30 ["ExpandOnDoubleClick"]
      142 CALL                             R9 2 -1
      143 RETURN                           R9 -1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["Common"]
        2 GETTABLEKS                       R3 R0 K1 ["Watch"]
        4 GETTABLEKS                       R4 R3 K2 ["currentTab"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K3 ["Variables"]
        9 JUMPIFEQ                         R4 R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 GETTABLEKS                       R7 R2 K4 ["debuggerConnectionIdToCurrentThreadId"]
       15 GETTABLEKS                       R8 R2 K5 ["currentDebuggerConnectionId"]
       17 GETTABLE                         R6 R7 R8
       18 JUMPIFNOT                        R6 ; [+13]
       19 GETTABLEKS                       R9 R2 K6 ["currentFrameMap"]
       21 GETTABLEKS                       R10 R2 K5 ["currentDebuggerConnectionId"]
       23 GETTABLE                         R8 R9 R10
       24 JUMPIFNOT                        R8 ; [+7]
       25 GETTABLEKS                       R9 R2 K6 ["currentFrameMap"]
       27 GETTABLEKS                       R10 R2 K5 ["currentDebuggerConnectionId"]
       29 GETTABLE                         R8 R9 R10
       30 GETTABLE                         R7 R8 R6
       31 JUMPIF                           R7 ; [+1]
       32 LOADN                            R7 1
       33 GETTABLEKS                       R9 R2 K7 ["debuggerConnectionIdToDST"]
       35 GETTABLEKS                       R10 R2 K5 ["currentDebuggerConnectionId"]
       37 GETTABLE                         R8 R9 R10
       38 JUMPIFNOT                        R8 ; [+4]
       39 GETTABLEKS                       R10 R3 K8 ["stateTokenToRoots"]
       41 GETTABLE                         R9 R10 R8
       42 JUMPIF                           R9 ; [+1]
       43 LOADNIL                          R9
       44 MOVE                             R10 R9
       45 JUMPIFNOT                        R10 ; [+4]
       46 GETTABLE                         R10 R9 R6
       47 JUMPIFNOT                        R10 ; [+2]
       48 GETTABLE                         R11 R9 R6
       49 GETTABLE                         R10 R11 R7
       50 JUMPIFNOT                        R5 ; [+2]
       51 LOADK                            R11 K3 ["Variables"]
       52 JUMP                             ; [+1]
       53 LOADK                            R11 K9 ["Watches"]
       54 JUMPIFNOT                        R10 ; [+9]
       55 GETTABLE                         R13 R10 R11
       56 JUMPIFNOT                        R13 ; [+4]
       57 GETUPVAL                         R12 1
       58 GETTABLE                         R13 R10 R11
       59 CALL                             R12 1 1
       60 JUMPIF                           R12 ; [+5]
       61 NEWTABLE                         R12 0 0
       63 JUMPIF                           R12 ; [+2]
       64 NEWTABLE                         R12 0 0
       66 GETTABLEKS                       R14 R3 K10 ["stateTokenToFlattenedTree"]
       68 GETTABLE                         R13 R14 R8
       69 MOVE                             R14 R13
       70 JUMPIFNOT                        R14 ; [+4]
       71 GETTABLE                         R14 R13 R6
       72 JUMPIFNOT                        R14 ; [+2]
       73 GETTABLE                         R15 R13 R6
       74 GETTABLE                         R14 R15 R7
       75 JUMPIFNOT                        R14 ; [+9]
       76 GETTABLE                         R16 R14 R11
       77 JUMPIFNOT                        R16 ; [+4]
       78 GETUPVAL                         R15 1
       79 GETTABLE                         R16 R14 R11
       80 CALL                             R15 1 1
       81 JUMPIF                           R15 ; [+5]
       82 NEWTABLE                         R15 0 0
       84 JUMPIF                           R15 ; [+2]
       85 NEWTABLE                         R15 0 0
       87 JUMPIF                           R5 ; [+7]
       88 GETUPVAL                         R16 2
       89 GETTABLEKS                       R17 R3 K11 ["listOfExpressions"]
       91 MOVE                             R18 R12
       92 MOVE                             R19 R15
       93 CALL                             R16 3 1
       94 MOVE                             R12 R16
       95 GETUPVAL                         R16 3
       96 MOVE                             R17 R12
       97 MOVE                             R18 R15
       98 CALL                             R16 2 1
       99 GETUPVAL                         R17 4
      100 MOVE                             R18 R16
      101 MOVE                             R19 R15
      102 MOVE                             R20 R5
      103 CALL                             R17 3 1
      104 MOVE                             R16 R17
      105 NEWTABLE                         R17 0 0
      107 JUMPIFNOT                        R5 ; [+3]
      108 GETTABLEKS                       R18 R3 K12 ["pathToExpansionState"]
      110 JUMPIF                           R18 ; [+2]
      111 GETTABLEKS                       R18 R3 K13 ["expressionToExpansionState"]
      113 GETUPVAL                         R19 5
      114 MOVE                             R20 R16
      115 MOVE                             R21 R17
      116 MOVE                             R22 R18
      117 CALL                             R19 3 0
      118 JUMPIF                           R5 ; [+10]
      119 MOVE                             R20 R16
      120 GETUPVAL                         R22 6
      121 GETTABLEKS                       R21 R22 K14 ["fromExpression"]
      123 LOADK                            R22 K15 [""]
      124 CALL                             R21 1 -1
      125 FASTCALL                         TABLE_INSERT ; [+2]
      126 GETIMPORT                        R19 K18 [table.insert]
      128 CALL                             R19 -1 0
      129 JUMPIFNOT                        R5 ; [+2]
      130 GETUPVAL                         R19 7
      131 JUMPIF                           R19 ; [+1]
      132 GETUPVAL                         R19 8
      133 LOADNIL                          R20
      134 LOADNIL                          R21
      135 JUMPIFNOT                        R5 ; [+3]
      136 GETTABLEKS                       R20 R3 K19 ["variablesColumnIndex"]
      138 JUMP                             ; [+2]
      139 GETTABLEKS                       R20 R3 K20 ["watchesColumnIndex"]
      141 JUMPIFNOT                        R5 ; [+3]
      142 GETTABLEKS                       R21 R3 K21 ["variablesSortDirection"]
      144 JUMP                             ; [+2]
      145 GETTABLEKS                       R21 R3 K22 ["watchesSortDirection"]
      147 GETUPVAL                         R23 9
      148 GETTABLEKS                       R22 R23 K23 ["sortTableByColumnAndOrder"]
      150 MOVE                             R23 R16
      151 JUMPIF                           R23 ; [+2]
      152 NEWTABLE                         R23 0 0
      154 MOVE                             R24 R20
      155 MOVE                             R25 R21
      156 MOVE                             R26 R19
      157 NOT                              R27 R5
      158 CALL                             R22 5 0
      159 DUPTABLE                         R22 K34 [{"SelectedTab", "RootItems", "ExpansionTable", "CurrentStepStateBundle", "SortIndex", "SortOrder", "EnabledScopes", "Expressions", "VariablesColumnFilter", "MyWatchesColumnFilter"}]
      160 SETTABLEKS                       R4 R22 K24 ["SelectedTab"]
      162 MOVE                             R23 R16
      163 JUMPIF                           R23 ; [+2]
      164 NEWTABLE                         R23 0 0
      166 SETTABLEKS                       R23 R22 K25 ["RootItems"]
      168 SETTABLEKS                       R17 R22 K26 ["ExpansionTable"]
      170 GETUPVAL                         R24 10
      171 GETTABLEKS                       R23 R24 K35 ["ctor"]
      173 MOVE                             R24 R8
      174 MOVE                             R25 R6
      175 MOVE                             R26 R7
      176 CALL                             R23 3 1
      177 SETTABLEKS                       R23 R22 K27 ["CurrentStepStateBundle"]
      179 SETTABLEKS                       R20 R22 K28 ["SortIndex"]
      181 SETTABLEKS                       R21 R22 K29 ["SortOrder"]
      183 GETTABLEKS                       R23 R3 K36 ["listOfEnabledScopes"]
      185 SETTABLEKS                       R23 R22 K30 ["EnabledScopes"]
      187 GETTABLEKS                       R23 R3 K11 ["listOfExpressions"]
      189 SETTABLEKS                       R23 R22 K31 ["Expressions"]
      191 GETTABLEKS                       R23 R3 K37 ["listOfVariablesColumns"]
      193 SETTABLEKS                       R23 R22 K32 ["VariablesColumnFilter"]
      195 GETTABLEKS                       R23 R3 K38 ["listOfMyWatchesColumns"]
      197 SETTABLEKS                       R23 R22 K33 ["MyWatchesColumnFilter"]
      199 RETURN                           R22 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_33:
        0 MOVE                             R7 R1
        1 NAMECALL                         R5 R4 K0 ["GetVariableById"]
        3 CALL                             R5 2 1
        4 JUMPIF                           R5 ; [+1]
        5 RETURN                           R0 0
        6 MOVE                             R6 R0
        7 LOADN                            R9 1
        8 GETTABLEKS                       R13 R5 K3 ["Name"]
       10 FASTCALL1                        STRING_LEN R13 ; [+2]
       11 GETIMPORT                        R12 K6 [string.len]
       13 CALL                             R12 1 1
       14 ADDK                             R11 R12 K2 [2]
       15 MULK                             R10 R11 K1 [-1]
       16 NAMECALL                         R7 R6 K7 ["sub"]
       18 CALL                             R7 3 1
       19 MOVE                             R6 R7
       20 GETUPVAL                         R7 0
       21 GETUPVAL                         R8 1
       22 MOVE                             R9 R6
       23 NEWTABLE                         R10 0 1
       25 MOVE                             R11 R5
       26 SETLIST                          R10 R11 1 [1]
       28 MOVE                             R11 R2
       29 MOVE                             R12 R3
       30 MOVE                             R13 R4
       31 CALL                             R8 5 -1
       32 CALL                             R7 -1 -1
       33 RETURN                           R7 -1

PROTO_34:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_42:
        0 DUPTABLE                         R1 K13 [{"OnVariableExpansionDispatch", "OnExpressionExpansionDispatch", "OnChangeExpression", "OnAddExpression", "OnLazyLoadChildren", "OnExecuteExpressionForAllFrames", "OnRemoveExpression", "OnClearAllExpressions", "OnSetWatchSortState", "onScopeFilterChange", "onTabSelected", "onVariablesFilterChange", "onMyWatchesFilterChange"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["OnVariableExpansionDispatch"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["OnExpressionExpansionDispatch"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["OnChangeExpression"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["OnAddExpression"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["OnLazyLoadChildren"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["OnExecuteExpressionForAllFrames"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["OnRemoveExpression"]
       36 NEWCLOSURE                       R2 P7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 SETTABLEKS                       R2 R1 K7 ["OnClearAllExpressions"]
       41 NEWCLOSURE                       R2 P8
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U8
       44 SETTABLEKS                       R2 R1 K8 ["OnSetWatchSortState"]
       46 NEWCLOSURE                       R2 P9
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U9
       49 SETTABLEKS                       R2 R1 K9 ["onScopeFilterChange"]
       51 NEWCLOSURE                       R2 P10
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U10
       54 SETTABLEKS                       R2 R1 K10 ["onTabSelected"]
       56 NEWCLOSURE                       R2 P11
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U11
       59 SETTABLEKS                       R2 R1 K11 ["onVariablesFilterChange"]
       61 NEWCLOSURE                       R2 P12
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U12
       64 SETTABLEKS                       R2 R1 K12 ["onMyWatchesFilterChange"]
       66 RETURN                           R1 1

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
       41 GETTABLEKS                       R6 R5 K11 ["withContext"]
       43 GETTABLEKS                       R7 R5 K12 ["Analytics"]
       45 GETTABLEKS                       R8 R5 K13 ["Localization"]
       47 GETTABLEKS                       R9 R5 K14 ["Plugin"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R13 R0 K15 ["Src"]
       53 GETTABLEKS                       R12 R13 K16 ["Resources"]
       55 GETTABLEKS                       R11 R12 K17 ["AnalyticsEventNames"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R11 R3 K18 ["UI"]
       60 GETTABLEKS                       R12 R11 K19 ["showContextMenu"]
       62 GETTABLEKS                       R13 R3 K20 ["Dash"]
       64 GETTABLEKS                       R14 R13 K21 ["map"]
       66 GETTABLEKS                       R15 R13 K22 ["join"]
       68 GETTABLEKS                       R16 R11 K23 ["TreeTable"]
       70 GETTABLEKS                       R18 R3 K24 ["Style"]
       72 GETTABLEKS                       R17 R18 K25 ["Stylizer"]
       74 GETTABLEKS                       R18 R3 K26 ["Util"]
       76 GETTABLEKS                       R19 R18 K27 ["deepCopy"]
       78 GETTABLEKS                       R21 R0 K15 ["Src"]
       80 GETTABLEKS                       R20 R21 K28 ["Models"]
       82 GETIMPORT                        R21 K4 [require]
       84 GETTABLEKS                       R23 R20 K29 ["Watch"]
       86 GETTABLEKS                       R22 R23 K30 ["TableTab"]
       88 CALL                             R21 1 1
       89 GETIMPORT                        R22 K4 [require]
       91 GETTABLEKS                       R24 R20 K29 ["Watch"]
       93 GETTABLEKS                       R23 R24 K31 ["WatchRow"]
       95 CALL                             R22 1 1
       96 GETIMPORT                        R23 K4 [require]
       98 GETTABLEKS                       R24 R20 K32 ["StepStateBundle"]
      100 CALL                             R23 1 1
      101 GETIMPORT                        R24 K4 [require]
      103 GETTABLEKS                       R27 R0 K15 ["Src"]
      105 GETTABLEKS                       R26 R27 K26 ["Util"]
      107 GETTABLEKS                       R25 R26 K33 ["WatchHelperFunctions"]
      109 CALL                             R24 1 1
      110 GETTABLEKS                       R26 R0 K15 ["Src"]
      112 GETTABLEKS                       R25 R26 K34 ["Actions"]
      114 GETIMPORT                        R26 K4 [require]
      116 GETTABLEKS                       R28 R25 K29 ["Watch"]
      118 GETTABLEKS                       R27 R28 K35 ["SetVariableExpanded"]
      120 CALL                             R26 1 1
      121 GETIMPORT                        R27 K4 [require]
      123 GETTABLEKS                       R29 R25 K29 ["Watch"]
      125 GETTABLEKS                       R28 R29 K36 ["SetExpressionExpanded"]
      127 CALL                             R27 1 1
      128 GETIMPORT                        R28 K4 [require]
      130 GETTABLEKS                       R30 R25 K29 ["Watch"]
      132 GETTABLEKS                       R29 R30 K37 ["ChangeExpression"]
      134 CALL                             R28 1 1
      135 GETIMPORT                        R29 K4 [require]
      137 GETTABLEKS                       R31 R25 K29 ["Watch"]
      139 GETTABLEKS                       R30 R31 K38 ["AddExpression"]
      141 CALL                             R29 1 1
      142 GETIMPORT                        R30 K4 [require]
      144 GETTABLEKS                       R32 R25 K29 ["Watch"]
      146 GETTABLEKS                       R31 R32 K39 ["RemoveExpression"]
      148 CALL                             R30 1 1
      149 GETIMPORT                        R31 K4 [require]
      151 GETTABLEKS                       R33 R25 K29 ["Watch"]
      153 GETTABLEKS                       R32 R33 K40 ["ClearAllExpressions"]
      155 CALL                             R31 1 1
      156 GETIMPORT                        R32 K4 [require]
      158 GETTABLEKS                       R34 R25 K29 ["Watch"]
      160 GETTABLEKS                       R33 R34 K41 ["SetWatchSortState"]
      162 CALL                             R32 1 1
      163 GETIMPORT                        R33 K4 [require]
      165 GETTABLEKS                       R35 R25 K29 ["Watch"]
      167 GETTABLEKS                       R34 R35 K42 ["SetTab"]
      169 CALL                             R33 1 1
      170 GETIMPORT                        R34 K4 [require]
      172 GETTABLEKS                       R36 R25 K29 ["Watch"]
      174 GETTABLEKS                       R35 R36 K43 ["MyWatchesFilterChange"]
      176 CALL                             R34 1 1
      177 GETIMPORT                        R35 K4 [require]
      179 GETTABLEKS                       R37 R25 K29 ["Watch"]
      181 GETTABLEKS                       R36 R37 K44 ["VariablesFilterChange"]
      183 CALL                             R35 1 1
      184 GETIMPORT                        R36 K4 [require]
      186 GETTABLEKS                       R40 R0 K15 ["Src"]
      188 GETTABLEKS                       R39 R40 K45 ["Thunks"]
      190 GETTABLEKS                       R38 R39 K46 ["Common"]
      192 GETTABLEKS                       R37 R38 K47 ["AddChildRowsToVars"]
      194 CALL                             R36 1 1
      195 GETIMPORT                        R37 K4 [require]
      197 GETTABLEKS                       R41 R0 K15 ["Src"]
      199 GETTABLEKS                       R40 R41 K45 ["Thunks"]
      201 GETTABLEKS                       R39 R40 K29 ["Watch"]
      203 GETTABLEKS                       R38 R39 K48 ["ExecuteExpressionForAllFrames"]
      205 CALL                             R37 1 1
      206 GETIMPORT                        R38 K4 [require]
      208 GETTABLEKS                       R42 R0 K15 ["Src"]
      210 GETTABLEKS                       R41 R42 K45 ["Thunks"]
      212 GETTABLEKS                       R40 R41 K29 ["Watch"]
      214 GETTABLEKS                       R39 R40 K49 ["FilterScopeWatchThunk"]
      216 CALL                             R38 1 1
      217 GETTABLEKS                       R40 R0 K15 ["Src"]
      219 GETTABLEKS                       R39 R40 K26 ["Util"]
      221 GETIMPORT                        R40 K4 [require]
      223 GETTABLEKS                       R41 R39 K50 ["Constants"]
      225 CALL                             R40 1 1
      226 GETIMPORT                        R41 K4 [require]
      228 GETTABLEKS                       R42 R39 K51 ["ColumnResizeHelperFunctions"]
      230 CALL                             R41 1 1
      231 GETIMPORT                        R42 K4 [require]
      233 GETTABLEKS                       R43 R39 K52 ["MakePluginActions"]
      235 CALL                             R42 1 1
      236 GETTABLEKS                       R43 R1 K53 ["PureComponent"]
      238 LOADK                            R45 K54 ["DisplayTable"]
      239 NAMECALL                         R43 R43 K55 ["extend"]
      241 CALL                             R43 2 1
      242 NEWTABLE                         R44 0 1
      244 LOADK                            R45 K56 ["nameColumn"]
      245 SETTABLEN                        R45 R44 1
      246 NEWTABLE                         R45 0 1
      248 LOADK                            R46 K57 ["expressionColumn"]
      249 SETTABLEN                        R46 R45 1
      250 DUPTABLE                         R46 K58 [{"nameColumn", "expressionColumn"}]
      251 LOADK                            R47 K59 ["NameColumn"]
      252 SETTABLEKS                       R47 R46 K56 ["nameColumn"]
      254 LOADK                            R47 K60 ["ExpressionColumn"]
      255 SETTABLEKS                       R47 R46 K57 ["expressionColumn"]
      257 DUPTABLE                         R47 K64 [{"ScopeColumn", "ValueColumn", "DataTypeColumn"}]
      258 LOADK                            R48 K65 ["scopeColumn"]
      259 SETTABLEKS                       R48 R47 K61 ["ScopeColumn"]
      261 LOADK                            R48 K66 ["valueColumn"]
      262 SETTABLEKS                       R48 R47 K62 ["ValueColumn"]
      264 LOADK                            R48 K67 ["dataTypeColumn"]
      265 SETTABLEKS                       R48 R47 K63 ["DataTypeColumn"]
      267 NEWTABLE                         R48 0 4
      269 LOADK                            R49 K56 ["nameColumn"]
      270 SETTABLEN                        R49 R48 1
      271 LOADK                            R49 K65 ["scopeColumn"]
      272 SETTABLEN                        R49 R48 2
      273 LOADK                            R49 K66 ["valueColumn"]
      274 SETTABLEN                        R49 R48 3
      275 LOADK                            R49 K67 ["dataTypeColumn"]
      276 SETTABLEN                        R49 R48 4
      277 NEWTABLE                         R49 0 3
      279 LOADK                            R50 K57 ["expressionColumn"]
      280 SETTABLEN                        R50 R49 1
      281 LOADK                            R50 K66 ["valueColumn"]
      282 SETTABLEN                        R50 R49 2
      283 LOADK                            R50 K67 ["dataTypeColumn"]
      284 SETTABLEN                        R50 R49 3
      285 DUPCLOSURE                       R50 K68 [PROTO_0]
      286 CAPTURE                          VAL R19
      287 CAPTURE                          VAL R50
      288 CAPTURE                          VAL R22
      289 DUPCLOSURE                       R51 K69 [PROTO_1]
      290 CAPTURE                          VAL R51
      291 DUPCLOSURE                       R52 K70 [PROTO_2]
      292 DUPCLOSURE                       R53 K71 [PROTO_3]
      293 CAPTURE                          VAL R19
      294 DUPCLOSURE                       R54 K72 [PROTO_19]
      295 CAPTURE                          VAL R46
      296 CAPTURE                          VAL R47
      297 CAPTURE                          VAL R48
      298 CAPTURE                          VAL R49
      299 CAPTURE                          VAL R21
      300 CAPTURE                          VAL R10
      301 CAPTURE                          VAL R40
      302 CAPTURE                          VAL R42
      303 CAPTURE                          VAL R12
      304 CAPTURE                          VAL R24
      305 SETTABLEKS                       R54 R43 K73 ["init"]
      307 DUPCLOSURE                       R54 K74 [PROTO_21]
      308 CAPTURE                          VAL R40
      309 CAPTURE                          VAL R41
      310 SETTABLEKS                       R54 R43 K75 ["didMount"]
      312 DUPCLOSURE                       R54 K76 [PROTO_22]
      313 CAPTURE                          VAL R40
      314 CAPTURE                          VAL R41
      315 SETTABLEKS                       R54 R43 K77 ["willUnmount"]
      317 DUPCLOSURE                       R54 K78 [PROTO_25]
      318 CAPTURE                          VAL R21
      319 CAPTURE                          VAL R44
      320 CAPTURE                          VAL R45
      321 CAPTURE                          VAL R4
      322 CAPTURE                          VAL R41
      323 SETTABLEKS                       R54 R43 K79 ["didUpdate"]
      325 DUPCLOSURE                       R54 K80 [PROTO_27]
      326 CAPTURE                          VAL R21
      327 CAPTURE                          VAL R44
      328 CAPTURE                          VAL R45
      329 CAPTURE                          VAL R14
      330 CAPTURE                          VAL R15
      331 CAPTURE                          VAL R1
      332 CAPTURE                          VAL R16
      333 CAPTURE                          VAL R40
      334 SETTABLEKS                       R54 R43 K81 ["render"]
      336 MOVE                             R54 R6
      337 DUPTABLE                         R55 K82 [{"Analytics", "Localization", "Stylizer", "Plugin"}]
      338 SETTABLEKS                       R7 R55 K12 ["Analytics"]
      340 SETTABLEKS                       R8 R55 K13 ["Localization"]
      342 SETTABLEKS                       R17 R55 K25 ["Stylizer"]
      344 SETTABLEKS                       R9 R55 K14 ["Plugin"]
      346 CALL                             R54 1 1
      347 MOVE                             R55 R43
      348 CALL                             R54 1 1
      349 MOVE                             R43 R54
      350 GETTABLEKS                       R54 R2 K83 ["connect"]
      352 DUPCLOSURE                       R55 K84 [PROTO_28]
      353 CAPTURE                          VAL R21
      354 CAPTURE                          VAL R19
      355 CAPTURE                          VAL R53
      356 CAPTURE                          VAL R50
      357 CAPTURE                          VAL R52
      358 CAPTURE                          VAL R51
      359 CAPTURE                          VAL R22
      360 CAPTURE                          VAL R48
      361 CAPTURE                          VAL R49
      362 CAPTURE                          VAL R24
      363 CAPTURE                          VAL R23
      364 DUPCLOSURE                       R56 K85 [PROTO_42]
      365 CAPTURE                          VAL R26
      366 CAPTURE                          VAL R27
      367 CAPTURE                          VAL R28
      368 CAPTURE                          VAL R29
      369 CAPTURE                          VAL R36
      370 CAPTURE                          VAL R37
      371 CAPTURE                          VAL R30
      372 CAPTURE                          VAL R31
      373 CAPTURE                          VAL R32
      374 CAPTURE                          VAL R38
      375 CAPTURE                          VAL R33
      376 CAPTURE                          VAL R35
      377 CAPTURE                          VAL R34
      378 CALL                             R54 2 1
      379 MOVE                             R55 R43
      380 CALL                             R54 1 1
      381 MOVE                             R43 R54
      382 RETURN                           R43 1
