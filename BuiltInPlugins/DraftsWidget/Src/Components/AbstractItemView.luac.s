PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Toggle", "Expand"}]
        1 GETIMPORT                        R4 K6 [Enum.ModifierKey.Ctrl]
        3 NAMECALL                         R2 R0 K7 ["IsModifierKeyDown"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["Toggle"]
        8 GETIMPORT                        R4 K9 [Enum.ModifierKey.Shift]
       10 NAMECALL                         R2 R0 K7 ["IsModifierKeyDown"]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K1 ["Expand"]
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["MakeMenuActions"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["state"]
       10 GETTABLEKS                       R2 R3 K3 ["selection"]
       12 GETTABLE                         R1 R2 R0
       13 JUMPIF                           R1 ; [+5]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K4 ["setSelection"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K0 ["props"]
       22 GETTABLEKS                       R1 R2 K5 ["Plugin"]
       24 NAMECALL                         R1 R1 K6 ["get"]
       26 CALL                             R1 1 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K7 ["makeMenuActions"]
       30 CALL                             R2 0 1
       31 GETIMPORT                        R3 K10 [task.spawn]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getPressedModifiers"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R2 K1 ["Expand"]
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["expandSelection"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 0
       13 JUMP                             ; [+14]
       14 GETTABLEKS                       R3 R2 K3 ["Toggle"]
       16 JUMPIFNOT                        R3 ; [+6]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K4 ["toggleSelected"]
       20 MOVE                             R4 R0
       21 CALL                             R3 1 0
       22 JUMP                             ; [+5]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K5 ["setSelection"]
       26 MOVE                             R4 R0
       27 CALL                             R3 1 0
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K6 ["lastItemClicked"]
       31 JUMPIFNOTEQ                      R3 R0 ; [+21]
       33 GETIMPORT                        R4 K8 [tick]
       35 CALL                             R4 0 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K9 ["lastClickTime"]
       39 SUB                              R3 R4 R5
       40 LOADK                            R4 K10 [0.5]
       41 JUMPIFNOTLT                      R3 R4 ; [+14]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R3 R4 K11 ["itemDoubleClicked"]
       46 MOVE                             R4 R0
       47 CALL                             R3 1 0
       48 GETUPVAL                         R3 0
       49 LOADNIL                          R4
       50 SETTABLEKS                       R4 R3 K6 ["lastItemClicked"]
       52 JUMP                             ; [+3]
       53 GETUPVAL                         R3 0
       54 SETTABLEKS                       R0 R3 K6 ["lastItemClicked"]
       56 GETUPVAL                         R3 0
       57 GETIMPORT                        R4 K8 [tick]
       59 CALL                             R4 0 1
       60 SETTABLEKS                       R4 R3 K9 ["lastClickTime"]
       62 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["OnDoubleClicked"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["OnDoubleClicked"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["OnSelectionChanged"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["OnSelectionChanged"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{"selection", "selectionAnchorTop", "selectionAnchorBottom"}]
        2 NEWTABLE                         R4 1 0
        4 LOADB                            R5 1
        5 SETTABLE                         R5 R4 R0
        6 SETTABLEKS                       R4 R3 K0 ["selection"]
        8 SETTABLEKS                       R0 R3 K1 ["selectionAnchorTop"]
       10 SETTABLEKS                       R0 R3 K2 ["selectionAnchorBottom"]
       12 NAMECALL                         R1 R1 K4 ["setState"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K5 ["selectionChanged"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K6 ["state"]
       21 GETTABLEKS                       R2 R3 K0 ["selection"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Items"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K2 ["state"]
        8 GETTABLEKS                       R4 R5 K3 ["selection"]
       10 GETTABLE                         R3 R4 R0
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K4 ["Dictionary"]
       18 GETTABLEKS                       R3 R4 K5 ["join"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K2 ["state"]
       23 GETTABLEKS                       R4 R5 K3 ["selection"]
       25 NEWTABLE                         R5 1 0
       27 JUMPIFNOT                        R2 ; [+4]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K6 ["None"]
       31 JUMPIF                           R6 ; [+1]
       32 LOADB                            R6 1
       33 SETTABLE                         R6 R5 R0
       34 CALL                             R3 2 1
       35 LOADNIL                          R4
       36 LOADNIL                          R5
       37 GETIMPORT                        R6 K8 [ipairs]
       39 MOVE                             R7 R1
       40 CALL                             R6 1 3
       41 FORGPREP_INEXT                   R6
       42 GETTABLE                         R11 R3 R10
       43 JUMPIFNOT                        R11 ; [+2]
       44 OR                               R4 R4 R10
       45 MOVE                             R5 R10
       46 FORGLOOP                         R6 2 [inext] ; [-5]
       48 GETUPVAL                         R6 0
       49 DUPTABLE                         R8 K11 [{"selection", "selectionAnchorTop", "selectionAnchorBottom"}]
       50 SETTABLEKS                       R3 R8 K3 ["selection"]
       52 SETTABLEKS                       R4 R8 K9 ["selectionAnchorTop"]
       54 SETTABLEKS                       R5 R8 K10 ["selectionAnchorBottom"]
       56 NAMECALL                         R6 R6 K12 ["setState"]
       58 CALL                             R6 2 0
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R6 R7 K13 ["selectionChanged"]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R8 R9 K2 ["state"]
       65 GETTABLEKS                       R7 R8 K3 ["selection"]
       67 CALL                             R6 1 0
       68 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Items"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETIMPORT                        R5 K3 [ipairs]
       10 MOVE                             R6 R1
       11 CALL                             R5 1 3
       12 FORGPREP_INEXT                   R5
       13 GETUPVAL                         R12 0
       14 GETTABLEKS                       R11 R12 K4 ["state"]
       16 GETTABLEKS                       R10 R11 K5 ["selectionAnchorTop"]
       18 JUMPIFNOTEQ                      R9 R10 ; [+2]
       20 MOVE                             R2 R8
       21 GETUPVAL                         R12 0
       22 GETTABLEKS                       R11 R12 K4 ["state"]
       24 GETTABLEKS                       R10 R11 K6 ["selectionAnchorBottom"]
       26 JUMPIFNOTEQ                      R9 R10 ; [+2]
       28 MOVE                             R3 R8
       29 JUMPIFNOTEQ                      R9 R0 ; [+2]
       31 MOVE                             R4 R8
       32 FORGLOOP                         R5 2 [inext] ; [-20]
       34 OR                               R2 R2 R4
       35 OR                               R3 R3 R4
       36 NEWTABLE                         R5 0 0
       38 FASTCALL2                        MATH_MIN R2 R4 ; [+5]
       40 MOVE                             R9 R2
       41 MOVE                             R10 R4
       42 GETIMPORT                        R8 K9 [math.min]
       44 CALL                             R8 2 1
       45 FASTCALL2                        MATH_MAX R3 R4 ; [+5]
       47 MOVE                             R10 R3
       48 MOVE                             R11 R4
       49 GETIMPORT                        R9 K11 [math.max]
       51 CALL                             R9 2 1
       52 MOVE                             R6 R9
       53 LOADN                            R7 1
       54 FORNPREP                         R6
       55 GETTABLE                         R9 R1 R8
       56 LOADB                            R10 1
       57 SETTABLE                         R10 R5 R9
       58 FORNLOOP                         R6
       59 GETUPVAL                         R6 0
       60 DUPTABLE                         R8 K13 [{"selection"}]
       61 SETTABLEKS                       R5 R8 K12 ["selection"]
       63 NAMECALL                         R6 R6 K14 ["setState"]
       65 CALL                             R6 2 0
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R6 R7 K15 ["selectionChanged"]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R8 R9 K4 ["state"]
       72 GETTABLEKS                       R7 R8 K12 ["selection"]
       74 CALL                             R6 1 0
       75 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Items"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["MakeMenuActions"]
       10 NEWTABLE                         R2 0 0
       12 GETIMPORT                        R3 K4 [ipairs]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 3
       16 FORGPREP_INEXT                   R3
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R10 R11 K5 ["state"]
       20 GETTABLEKS                       R9 R10 K6 ["selection"]
       22 GETTABLE                         R8 R9 R7
       23 JUMPIFNOT                        R8 ; [+7]
       24 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       26 MOVE                             R9 R2
       27 MOVE                             R10 R7
       28 GETIMPORT                        R8 K9 [table.insert]
       30 CALL                             R8 2 0
       31 FORGLOOP                         R3 2 [inext] ; [-15]
       33 MOVE                             R3 R1
       34 MOVE                             R4 R2
       35 CALL                             R3 1 -1
       36 RETURN                           R3 -1

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["props"]
        7 GETTABLEKS                       R2 R4 K3 ["Items"]
        9 CALL                             R1 1 3
       10 FORGPREP_INEXT                   R1
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K4 ["state"]
       14 GETTABLEKS                       R7 R8 K5 ["selection"]
       16 GETTABLE                         R6 R7 R5
       17 JUMPIFNOT                        R6 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       20 MOVE                             R7 R0
       21 MOVE                             R8 R5
       22 GETIMPORT                        R6 K8 [table.insert]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 [inext] ; [-15]
       27 RETURN                           R0 1

PROTO_11:
        0 DUPTABLE                         R3 K3 [{"selection", "selectionAnchorTop", "selectionAnchorBottom"}]
        1 NEWTABLE                         R4 0 0
        3 SETTABLEKS                       R4 R3 K0 ["selection"]
        5 LOADNIL                          R4
        6 SETTABLEKS                       R4 R3 K1 ["selectionAnchorTop"]
        8 LOADNIL                          R4
        9 SETTABLEKS                       R4 R3 K2 ["selectionAnchorBottom"]
       11 NAMECALL                         R1 R0 K4 ["setState"]
       13 CALL                             R1 2 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K5 ["lastItemClicked"]
       17 LOADN                            R1 0
       18 SETTABLEKS                       R1 R0 K6 ["lastClickTime"]
       20 DUPCLOSURE                       R1 K7 [PROTO_0]
       21 SETTABLEKS                       R1 R0 K8 ["getPressedModifiers"]
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 SETTABLEKS                       R1 R0 K9 ["itemRightClicked"]
       28 NEWCLOSURE                       R1 P2
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K10 ["itemClicked"]
       32 NEWCLOSURE                       R1 P3
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K11 ["itemDoubleClicked"]
       36 NEWCLOSURE                       R1 P4
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K12 ["selectionChanged"]
       40 NEWCLOSURE                       R1 P5
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K13 ["setSelection"]
       44 NEWCLOSURE                       R1 P6
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U1
       47 SETTABLEKS                       R1 R0 K14 ["toggleSelected"]
       49 NEWCLOSURE                       R1 P7
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R1 R0 K15 ["expandSelection"]
       53 NEWCLOSURE                       R1 P8
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R1 R0 K16 ["makeMenuActions"]
       57 NEWCLOSURE                       R1 P9
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R1 R0 K17 ["getSelectedIds"]
       61 GETTABLEKS                       R2 R0 K18 ["props"]
       63 GETTABLEKS                       R1 R2 K19 ["GetCurrentSelection"]
       65 JUMPIFNOT                        R1 ; [+8]
       66 GETTABLEKS                       R2 R0 K18 ["props"]
       68 GETTABLEKS                       R1 R2 K19 ["GetCurrentSelection"]
       70 GETTABLEKS                       R2 R0 K17 ["getSelectedIds"]
       72 SETTABLEKS                       R2 R1 K20 ["OnInvoke"]
       74 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["GetCurrentSelection"]
        2 GETTABLEKS                       R5 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R5 K0 ["GetCurrentSelection"]
        6 JUMPIFEQ                         R3 R4 ; [+22]
        8 GETTABLEKS                       R3 R1 K0 ["GetCurrentSelection"]
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETTABLEKS                       R3 R1 K0 ["GetCurrentSelection"]
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R3 K2 ["OnInvoke"]
       16 GETTABLEKS                       R4 R0 K1 ["props"]
       18 GETTABLEKS                       R3 R4 K0 ["GetCurrentSelection"]
       20 JUMPIFNOT                        R3 ; [+8]
       21 GETTABLEKS                       R4 R0 K1 ["props"]
       23 GETTABLEKS                       R3 R4 K0 ["GetCurrentSelection"]
       25 GETTABLEKS                       R4 R0 K3 ["getSelectedIds"]
       27 SETTABLEKS                       R4 R3 K2 ["OnInvoke"]
       29 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["itemClicked"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["itemRightClicked"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Items"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["RenderItem"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["RenderContents"]
       12 NEWTABLE                         R4 0 0
       14 NEWTABLE                         R5 0 0
       16 GETIMPORT                        R6 K5 [ipairs]
       18 MOVE                             R7 R1
       19 CALL                             R6 1 3
       20 FORGPREP_INEXT                   R6
       21 GETTABLEKS                       R14 R0 K6 ["state"]
       23 GETTABLEKS                       R13 R14 K7 ["selection"]
       25 GETTABLE                         R12 R13 R10
       26 JUMPIFEQKB                       R12 TRUE ; [+2]
       28 LOADB                            R11 0 +1
       29 LOADB                            R11 1
       30 LOADB                            R12 1
       31 SETTABLE                         R12 R4 R10
       32 MOVE                             R12 R2
       33 MOVE                             R13 R10
       34 DUPTABLE                         R14 K11 [{"Selected", "OnPress", "OnSecondaryPress"}]
       35 SETTABLEKS                       R11 R14 K8 ["Selected"]
       37 NEWCLOSURE                       R15 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R10
       40 SETTABLEKS                       R15 R14 K9 ["OnPress"]
       42 NEWCLOSURE                       R15 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R10
       45 SETTABLEKS                       R15 R14 K10 ["OnSecondaryPress"]
       47 CALL                             R12 2 1
       48 DUPTABLE                         R13 K14 [{"Button", "Index"}]
       49 SETTABLEKS                       R12 R13 K12 ["Button"]
       51 SETTABLEKS                       R9 R13 K13 ["Index"]
       53 SETTABLE                         R13 R5 R10
       54 FORGLOOP                         R6 2 [inext] ; [-34]
       56 LOADB                            R6 0
       57 GETIMPORT                        R7 K16 [pairs]
       59 GETTABLEKS                       R10 R0 K6 ["state"]
       61 GETTABLEKS                       R8 R10 K7 ["selection"]
       63 CALL                             R7 1 3
       64 FORGPREP_NEXT                    R7
       65 GETTABLE                         R12 R4 R10
       66 JUMPIF                           R12 ; [+7]
       67 GETTABLEKS                       R13 R0 K6 ["state"]
       69 GETTABLEKS                       R12 R13 K7 ["selection"]
       71 LOADNIL                          R13
       72 SETTABLE                         R13 R12 R10
       73 LOADB                            R6 1
       74 FORGLOOP                         R7 2 ; [-10]
       76 JUMPIFNOT                        R6 ; [+7]
       77 GETTABLEKS                       R7 R0 K17 ["selectionChanged"]
       79 GETTABLEKS                       R9 R0 K6 ["state"]
       81 GETTABLEKS                       R8 R9 K7 ["selection"]
       83 CALL                             R7 1 0
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R7 R8 K18 ["createElement"]
       87 LOADK                            R8 K19 ["Frame"]
       88 DUPTABLE                         R9 K22 [{"Size", "BackgroundTransparency"}]
       89 GETIMPORT                        R10 K25 [UDim2.new]
       91 LOADN                            R11 1
       92 LOADN                            R12 0
       93 LOADN                            R13 1
       94 LOADN                            R14 0
       95 CALL                             R10 4 1
       96 SETTABLEKS                       R10 R9 K20 ["Size"]
       98 LOADN                            R10 1
       99 SETTABLEKS                       R10 R9 K21 ["BackgroundTransparency"]
      101 DUPTABLE                         R10 K27 [{"Contents"}]
      102 MOVE                             R11 R3
      103 MOVE                             R12 R5
      104 CALL                             R11 1 1
      105 SETTABLEKS                       R11 R10 K26 ["Contents"]
      107 CALL                             R7 3 -1
      108 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["showContextMenu"]
       38 GETTABLEKS                       R8 R1 K13 ["PureComponent"]
       40 LOADK                            R10 K14 ["AbstractItemView"]
       41 NAMECALL                         R8 R8 K15 ["extend"]
       43 CALL                             R8 2 1
       44 DUPCLOSURE                       R9 K16 [PROTO_11]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R9 R8 K17 ["init"]
       49 DUPCLOSURE                       R9 K18 [PROTO_12]
       50 SETTABLEKS                       R9 R8 K19 ["didUpdate"]
       52 DUPCLOSURE                       R9 K20 [PROTO_15]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R9 R8 K21 ["render"]
       56 MOVE                             R9 R5
       57 DUPTABLE                         R10 K24 [{"Localization", "Plugin"}]
       58 GETTABLEKS                       R11 R4 K22 ["Localization"]
       60 SETTABLEKS                       R11 R10 K22 ["Localization"]
       62 GETTABLEKS                       R11 R4 K23 ["Plugin"]
       64 SETTABLEKS                       R11 R10 K23 ["Plugin"]
       66 CALL                             R9 1 1
       67 MOVE                             R10 R8
       68 CALL                             R9 1 1
       69 MOVE                             R8 R9
       70 RETURN                           R8 1
