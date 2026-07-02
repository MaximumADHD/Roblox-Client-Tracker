PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
        3 NAMECALL                         R1 R1 K1 ["isShift"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K2 ["_shiftDown"]
       11 JUMP                             ; [+11]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       15 NAMECALL                         R1 R1 K3 ["isControl"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 1
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R1 K4 ["_ctrlDown"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K2 ["_shiftDown"]
       26 JUMPIFNOT                        R1 ; [+15]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K4 ["_ctrlDown"]
       30 JUMPIFNOT                        R1 ; [+11]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       34 NAMECALL                         R1 R1 K5 ["isLetterA"]
       36 CALL                             R1 2 1
       37 JUMPIFNOT                        R1 ; [+4]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K6 ["selectAll"]
       41 CALL                             R1 0 0
       42 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
        3 NAMECALL                         R1 R1 K1 ["isShift"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["_shiftDown"]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       15 NAMECALL                         R1 R1 K3 ["isControl"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 1
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K4 ["_ctrlDown"]
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SetCharacterSelection"]
        5 NEWTABLE                         R2 0 1
        7 GETTABLEKS                       R3 R0 K2 ["key"]
        9 SETLIST                          R2 R3 1 [1]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["selection"]
        6 CALL                             R1 1 1
        7 GETIMPORT                        R2 K4 [table.find]
        9 MOVE                             R3 R1
       10 GETTABLEKS                       R4 R0 K5 ["key"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETIMPORT                        R3 K7 [table.remove]
       16 MOVE                             R4 R1
       17 MOVE                             R5 R2
       18 CALL                             R3 2 0
       19 JUMP                             ; [+8]
       20 GETTABLEKS                       R5 R0 K5 ["key"]
       22 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       24 MOVE                             R4 R1
       25 GETIMPORT                        R3 K9 [table.insert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K0 ["props"]
       31 GETTABLEKS                       R3 R3 K10 ["SetCharacterSelection"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Items"]
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["state"]
       10 GETTABLEKS                       R3 R3 K3 ["expandedNestedItem"]
       12 NEWTABLE                         R4 0 0
       14 MOVE                             R5 R1
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 GETTABLEKS                       R11 R9 K4 ["key"]
       20 GETTABLE                         R10 R3 R11
       21 JUMPIFNOT                        R10 ; [+23]
       22 GETTABLEKS                       R10 R9 K5 ["children"]
       24 LOADNIL                          R11
       25 LOADNIL                          R12
       26 FORGPREP                         R10
       27 GETTABLEKS                       R16 R14 K4 ["key"]
       29 GETTABLE                         R15 R4 R16
       30 JUMPIF                           R15 ; [+12]
       31 GETTABLEKS                       R15 R14 K4 ["key"]
       33 LOADB                            R16 1
       34 SETTABLE                         R16 R4 R15
       35 GETTABLEKS                       R17 R14 K4 ["key"]
       37 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
       39 MOVE                             R16 R2
       40 GETIMPORT                        R15 K8 [table.insert]
       42 CALL                             R15 2 0
       43 FORGLOOP                         R10 2 ; [-17]
       45 FORGLOOP                         R5 2 ; [-28]
       47 GETTABLEKS                       R5 R0 K9 ["SetCharacterSelection"]
       49 MOVE                             R6 R2
       50 CALL                             R5 1 0
       51 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R6 0 0
        2 MOVE                             R7 R1
        3 LOADNIL                          R8
        4 LOADNIL                          R9
        5 FORGPREP                         R7
        6 LOADB                            R12 1
        7 SETTABLE                         R12 R6 R11
        8 FORGLOOP                         R7 2 ; [-3]
       10 GETTABLE                         R7 R0 R2
       11 GETTABLE                         R8 R0 R4
       12 JUMPIFNOTEQ                      R2 R4 ; [+23]
       14 MOVE                             R11 R3
       15 MOVE                             R9 R5
       16 LOADN                            R10 1
       17 FORNPREP                         R9
       18 GETTABLEKS                       R13 R7 K0 ["children"]
       20 GETTABLE                         R12 R13 R11
       21 GETTABLEKS                       R12 R12 K1 ["key"]
       23 GETTABLE                         R13 R6 R12
       24 JUMPIF                           R13 ; [+9]
       25 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       27 MOVE                             R14 R1
       28 MOVE                             R15 R12
       29 GETIMPORT                        R13 K4 [table.insert]
       31 CALL                             R13 2 0
       32 LOADB                            R13 1
       33 SETTABLE                         R13 R6 R12
       34 FORNLOOP                         R9
       35 RETURN                           R0 0
       36 MOVE                             R11 R3
       37 GETTABLEKS                       R12 R7 K0 ["children"]
       39 LENGTH                           R9 R12
       40 LOADN                            R10 1
       41 FORNPREP                         R9
       42 GETTABLEKS                       R13 R7 K0 ["children"]
       44 GETTABLE                         R12 R13 R11
       45 GETTABLEKS                       R12 R12 K1 ["key"]
       47 GETTABLE                         R13 R6 R12
       48 JUMPIF                           R13 ; [+13]
       49 GETTABLEKS                       R16 R7 K0 ["children"]
       51 GETTABLE                         R15 R16 R11
       52 GETTABLEKS                       R15 R15 K1 ["key"]
       54 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       56 MOVE                             R14 R1
       57 GETIMPORT                        R13 K4 [table.insert]
       59 CALL                             R13 2 0
       60 LOADB                            R13 1
       61 SETTABLE                         R13 R6 R12
       62 FORNLOOP                         R9
       63 LOADN                            R11 1
       64 MOVE                             R9 R5
       65 LOADN                            R10 1
       66 FORNPREP                         R9
       67 GETTABLEKS                       R13 R8 K0 ["children"]
       69 GETTABLE                         R12 R13 R11
       70 GETTABLEKS                       R12 R12 K1 ["key"]
       72 GETTABLE                         R13 R6 R12
       73 JUMPIF                           R13 ; [+13]
       74 GETTABLEKS                       R16 R8 K0 ["children"]
       76 GETTABLE                         R15 R16 R11
       77 GETTABLEKS                       R15 R15 K1 ["key"]
       79 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       81 MOVE                             R14 R1
       82 GETIMPORT                        R13 K4 [table.insert]
       84 CALL                             R13 2 0
       85 LOADB                            R13 1
       86 SETTABLE                         R13 R6 R12
       87 FORNLOOP                         R9
       88 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 NEWTABLE                         R2 0 0
        5 GETTABLEKS                       R3 R1 K1 ["selection"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 LOADB                            R8 1
       11 SETTABLE                         R8 R2 R7
       12 FORGLOOP                         R3 2 ; [-3]
       14 GETTABLEKS                       R3 R0 K2 ["children"]
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 GETTABLEKS                       R8 R7 K2 ["children"]
       21 JUMPIF                           R8 ; [+6]
       22 GETTABLEKS                       R9 R7 K3 ["key"]
       24 GETTABLE                         R8 R2 R9
       25 JUMPIF                           R8 ; [+2]
       26 LOADB                            R8 0
       27 RETURN                           R8 1
       28 FORGLOOP                         R3 2 ; [-10]
       30 LOADB                            R3 1
       31 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["areAllChildrenSelected"]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 NOT                              R3 R4
       11 JUMPIFNOT                        R3 ; [+42]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R5 R1 K2 ["selection"]
       15 CALL                             R4 1 1
       16 MOVE                             R2 R4
       17 NEWTABLE                         R4 0 0
       19 MOVE                             R5 R2
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 LOADB                            R10 1
       24 SETTABLE                         R10 R4 R9
       25 FORGLOOP                         R5 2 ; [-3]
       27 GETTABLEKS                       R5 R0 K3 ["children"]
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETTABLEKS                       R11 R9 K4 ["key"]
       34 GETTABLE                         R10 R4 R11
       35 JUMPIF                           R10 ; [+15]
       36 GETTABLEKS                       R10 R9 K3 ["children"]
       38 JUMPIF                           R10 ; [+12]
       39 GETTABLEKS                       R10 R9 K4 ["key"]
       41 LOADB                            R11 1
       42 SETTABLE                         R11 R4 R10
       43 GETTABLEKS                       R12 R9 K4 ["key"]
       45 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       47 MOVE                             R11 R2
       48 GETIMPORT                        R10 K7 [table.insert]
       50 CALL                             R10 2 0
       51 FORGLOOP                         R5 2 ; [-20]
       53 JUMP                             ; [+35]
       54 NEWTABLE                         R4 0 0
       56 GETTABLEKS                       R5 R1 K2 ["selection"]
       58 LOADNIL                          R6
       59 LOADNIL                          R7
       60 FORGPREP                         R5
       61 LOADB                            R10 1
       62 SETTABLE                         R10 R4 R9
       63 FORGLOOP                         R5 2 ; [-3]
       65 GETTABLEKS                       R5 R0 K3 ["children"]
       67 LOADNIL                          R6
       68 LOADNIL                          R7
       69 FORGPREP                         R5
       70 GETTABLEKS                       R10 R9 K4 ["key"]
       72 LOADNIL                          R11
       73 SETTABLE                         R11 R4 R10
       74 FORGLOOP                         R5 2 ; [-5]
       76 MOVE                             R5 R4
       77 LOADNIL                          R6
       78 LOADNIL                          R7
       79 FORGPREP                         R5
       80 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       82 MOVE                             R11 R2
       83 MOVE                             R12 R8
       84 GETIMPORT                        R10 K7 [table.insert]
       86 CALL                             R10 2 0
       87 FORGLOOP                         R5 1 ; [-8]
       89 GETTABLEKS                       R4 R1 K8 ["SetCharacterSelection"]
       91 MOVE                             R5 R2
       92 CALL                             R4 1 0
       93 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R4 R1
        1 GETTABLE                         R3 R1 R4
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 MOVE                             R8 R0
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 FORGPREP                         R8
       10 GETTABLEKS                       R13 R12 K0 ["children"]
       12 LOADNIL                          R14
       13 LOADNIL                          R15
       14 FORGPREP                         R13
       15 GETTABLEKS                       R18 R17 K1 ["key"]
       17 JUMPIFNOTEQ                      R3 R18 ; [+3]
       19 MOVE                             R4 R11
       20 MOVE                             R5 R16
       21 GETTABLEKS                       R18 R2 K1 ["key"]
       23 GETTABLEKS                       R19 R17 K1 ["key"]
       25 JUMPIFNOTEQ                      R18 R19 ; [+3]
       27 MOVE                             R6 R11
       28 MOVE                             R7 R16
       29 FORGLOOP                         R13 2 ; [-15]
       31 FORGLOOP                         R8 2 ; [-22]
       33 RETURN                           R4 4

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["props"]
        7 GETTABLEKS                       R2 R1 K2 ["Items"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R1 K3 ["selection"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["getSelectionRangeData"]
       16 MOVE                             R5 R2
       17 MOVE                             R6 R3
       18 MOVE                             R7 R0
       19 CALL                             R4 3 4
       20 JUMPIFEQKNIL                     R4 ; [+3]
       22 JUMPIFNOTEQKNIL                  R5 ; [+7]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K5 ["plainSelect"]
       27 MOVE                             R9 R0
       28 CALL                             R8 1 0
       29 RETURN                           R0 0
       30 JUMPIFNOTLT                      R4 R6 ; [+12]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K6 ["selectInRange"]
       35 MOVE                             R9 R2
       36 MOVE                             R10 R3
       37 MOVE                             R11 R4
       38 MOVE                             R12 R5
       39 MOVE                             R13 R6
       40 MOVE                             R14 R7
       41 CALL                             R8 6 0
       42 JUMP                             ; [+35]
       43 JUMPIFNOTLT                      R6 R4 ; [+12]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K6 ["selectInRange"]
       48 MOVE                             R9 R2
       49 MOVE                             R10 R3
       50 MOVE                             R11 R6
       51 MOVE                             R12 R7
       52 MOVE                             R13 R4
       53 MOVE                             R14 R5
       54 CALL                             R8 6 0
       55 JUMP                             ; [+22]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K6 ["selectInRange"]
       59 MOVE                             R9 R2
       60 MOVE                             R10 R3
       61 MOVE                             R11 R6
       62 FASTCALL2                        MATH_MIN R7 R5 ; [+5]
       64 MOVE                             R13 R7
       65 MOVE                             R14 R5
       66 GETIMPORT                        R12 K9 [math.min]
       68 CALL                             R12 2 1
       69 MOVE                             R13 R6
       70 FASTCALL2                        MATH_MAX R7 R5 ; [+5]
       72 MOVE                             R15 R7
       73 MOVE                             R16 R5
       74 GETIMPORT                        R14 K11 [math.max]
       76 CALL                             R14 2 1
       77 CALL                             R8 6 0
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K1 ["props"]
       81 GETTABLEKS                       R8 R8 K12 ["SetCharacterSelection"]
       83 MOVE                             R9 R3
       84 CALL                             R8 1 0
       85 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["selection"]
        5 MOVE                             R3 R2
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R0 K2 ["key"]
       11 JUMPIFNOTEQ                      R7 R8 ; [+3]
       13 LOADB                            R8 1
       14 RETURN                           R8 1
       15 FORGLOOP                         R3 2 ; [-7]
       17 LOADB                            R3 0
       18 RETURN                           R3 1

PROTO_11:
        0 DUPTABLE                         R1 K3 [{[1], ["expanded"] = }]
        1 NEWTABLE                         R2 1 0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["InProgress"]
        6 LOADB                            R4 1
        7 SETTABLE                         R4 R2 R3
        8 SETTABLEKS                       R2 R1 K0 ["expandedNestedItem"]
       10 SETTABLEKS                       R1 R0 K5 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K6 ["onKeyPressed"]
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K7 ["onKeyReleased"]
       22 NEWCLOSURE                       R1 P2
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K8 ["plainSelect"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K9 ["plainToggleSelect"]
       31 NEWCLOSURE                       R1 P4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K10 ["selectAll"]
       35 DUPCLOSURE                       R1 K11 [PROTO_5]
       36 SETTABLEKS                       R1 R0 K12 ["selectInRange"]
       38 NEWCLOSURE                       R1 P6
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K13 ["areAllChildrenSelected"]
       42 NEWCLOSURE                       R1 P7
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U2
       45 SETTABLEKS                       R1 R0 K14 ["toggleSelectAllChildren"]
       47 DUPCLOSURE                       R1 K15 [PROTO_8]
       48 SETTABLEKS                       R1 R0 K16 ["getSelectionRangeData"]
       50 NEWCLOSURE                       R1 P9
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U2
       53 SETTABLEKS                       R1 R0 K17 ["shiftSelect"]
       55 NEWCLOSURE                       R1 P10
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R1 R0 K18 ["isItemSelected"]
       59 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["convertedCharacters"]
        4 GETTABLEKS                       R4 R1 K2 ["characterInfo"]
        6 JUMPIF                           R4 ; [+2]
        7 LOADNIL                          R4
        8 RETURN                           R4 1
        9 GETTABLEKS                       R4 R1 K2 ["characterInfo"]
       11 GETTABLEKS                       R4 R4 K3 ["model"]
       13 JUMPIF                           R4 ; [+2]
       14 LOADNIL                          R5
       15 RETURN                           R5 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["GetNpcHasWarnings"]
       19 MOVE                             R6 R4
       20 CALL                             R5 1 1
       21 JUMPIFNOT                        R5 ; [+2]
       22 LOADK                            R6 K5 ["Warning"]
       23 RETURN                           R6 1
       24 GETTABLEKS                       R7 R1 K2 ["characterInfo"]
       26 GETTABLEKS                       R7 R7 K6 ["key"]
       28 GETTABLE                         R6 R3 R7
       29 JUMPIFNOT                        R6 ; [+2]
       30 LOADK                            R6 K7 ["Success"]
       31 RETURN                           R6 1
       32 LOADNIL                          R6
       33 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["key"]
        4 GETTABLE                         R0 R1 R2
        5 GETTABLEKS                       R0 R0 K1 ["previewModel"]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["key"]
       11 GETTABLE                         R1 R2 R3
       12 GETTABLEKS                       R1 R1 K2 ["convertedModel"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["createElement"]
       17 GETUPVAL                         R3 3
       18 DUPTABLE                         R4 K4 [{"previewModel", "convertedModel"}]
       19 SETTABLEKS                       R0 R4 K1 ["previewModel"]
       21 SETTABLEKS                       R1 R4 K2 ["convertedModel"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreateWorldModels"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["key"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["characterInfo"]
        9 GETTABLEKS                       R2 R2 K3 ["model"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 DUPTABLE                         R2 K5 [{"expanded"}]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K6 ["state"]
       17 GETTABLEKS                       R4 R4 K4 ["expanded"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K1 ["key"]
       22 JUMPIFNOTEQ                      R4 R5 ; [+5]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K7 ["None"]
       27 JUMP                             ; [+3]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["key"]
       31 SETTABLEKS                       R3 R2 K4 ["expanded"]
       33 NAMECALL                         R0 R0 K8 ["setState"]
       35 CALL                             R0 2 0
       36 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K2 [coroutine.wrap]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_shiftDown"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["shiftSelect"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["plainToggleSelect"]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R4 K1 ["Stylizer"]
        4 GETTABLEKS                       R6 R4 K2 ["worldModels"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K3 ["createElement"]
        9 GETUPVAL                         R8 1
       10 DUPTABLE                         R9 K14 [{"AutomaticSize", "Selected", "Size", "LayoutOrder", "Text", "Expanded", "StatusKey", "RenderContent", "OnExpandedChanged", "OnClick"}]
       11 GETIMPORT                        R10 K17 [Enum.AutomaticSize.Y]
       13 SETTABLEKS                       R10 R9 K4 ["AutomaticSize"]
       15 GETTABLEKS                       R10 R0 K18 ["isItemSelected"]
       17 MOVE                             R11 R1
       18 CALL                             R10 1 1
       19 SETTABLEKS                       R10 R9 K5 ["Selected"]
       21 GETIMPORT                        R10 K21 [UDim2.new]
       23 LOADN                            R11 1
       24 LOADN                            R12 0
       25 LOADN                            R13 0
       26 GETTABLEKS                       R14 R5 K22 ["RowHeight"]
       28 CALL                             R10 4 1
       29 SETTABLEKS                       R10 R9 K6 ["Size"]
       31 SETTABLEKS                       R3 R9 K7 ["LayoutOrder"]
       33 GETTABLEKS                       R10 R1 K23 ["text"]
       35 SETTABLEKS                       R10 R9 K8 ["Text"]
       37 GETTABLEKS                       R11 R0 K24 ["state"]
       39 GETTABLEKS                       R11 R11 K25 ["expanded"]
       41 GETTABLEKS                       R12 R1 K26 ["key"]
       43 JUMPIFNOTEQ                      R11 R12 ; [+7]
       45 GETTABLEKS                       R12 R1 K26 ["key"]
       47 GETTABLE                         R11 R6 R12
       48 JUMPIFNOT                        R11 ; [+2]
       49 LOADB                            R10 1
       50 JUMP                             ; [+1]
       51 LOADB                            R10 0
       52 SETTABLEKS                       R10 R9 K9 ["Expanded"]
       54 MOVE                             R12 R1
       55 NAMECALL                         R10 R0 K27 ["getCharacterStatusKey"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K10 ["StatusKey"]
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R1
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          UPVAL U2
       65 SETTABLEKS                       R10 R9 K11 ["RenderContent"]
       67 NEWCLOSURE                       R10 P1
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U0
       72 SETTABLEKS                       R10 R9 K12 ["OnExpandedChanged"]
       74 NEWCLOSURE                       R10 P2
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R10 R9 K13 ["OnClick"]
       79 CALL                             R7 2 1
       80 GETTABLEKS                       R8 R1 K26 ["key"]
       82 SETTABLE                         R7 R2 R8
       83 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleSelectAllChildren"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["state"]
        3 GETTABLEKS                       R2 R2 K2 ["expandedNestedItem"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K3 ["key"]
        8 GETTABLE                         R1 R2 R3
        9 ORK                              R0 R1 K0 [False]
       10 GETUPVAL                         R1 0
       11 DUPTABLE                         R3 K4 [{"expandedNestedItem"}]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K5 ["Dictionary"]
       15 GETTABLEKS                       R4 R4 K6 ["join"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K1 ["state"]
       20 GETTABLEKS                       R5 R5 K2 ["expandedNestedItem"]
       22 NEWTABLE                         R6 1 0
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K3 ["key"]
       27 NOT                              R8 R0
       28 SETTABLE                         R8 R6 R7
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K2 ["expandedNestedItem"]
       32 NAMECALL                         R1 R1 K7 ["setState"]
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R4 K1 ["Stylizer"]
        4 DUPTABLE                         R6 K3 [{"Layout"}]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K4 ["createElement"]
        8 LOADK                            R8 K5 ["UIListLayout"]
        9 DUPTABLE                         R9 K8 [{"SortOrder", "Padding"}]
       10 GETIMPORT                        R10 K11 [Enum.SortOrder.LayoutOrder]
       12 SETTABLEKS                       R10 R9 K6 ["SortOrder"]
       14 GETIMPORT                        R10 K14 [UDim.new]
       16 LOADN                            R11 0
       17 GETTABLEKS                       R12 R5 K15 ["Spacing"]
       19 CALL                             R10 2 1
       20 SETTABLEKS                       R10 R9 K7 ["Padding"]
       22 CALL                             R7 2 1
       23 SETTABLEKS                       R7 R6 K2 ["Layout"]
       25 LOADN                            R7 0
       26 GETTABLEKS                       R8 R1 K16 ["children"]
       28 LOADNIL                          R9
       29 LOADNIL                          R10
       30 FORGPREP                         R8
       31 GETTABLEKS                       R13 R12 K16 ["children"]
       33 JUMPIFNOT                        R13 ; [+7]
       34 MOVE                             R15 R12
       35 MOVE                             R16 R6
       36 MOVE                             R17 R7
       37 NAMECALL                         R13 R0 K17 ["renderNestedItem"]
       39 CALL                             R13 4 0
       40 JUMP                             ; [+32]
       41 GETTABLEKS                       R13 R6 K18 ["SelectAllRow"]
       43 JUMPIF                           R13 ; [+23]
       44 GETUPVAL                         R13 0
       45 GETTABLEKS                       R13 R13 K4 ["createElement"]
       47 GETUPVAL                         R14 1
       48 DUPTABLE                         R15 K22 [{"IsChecked", "OnCheckboxClick", "OnResetPlugin"}]
       49 GETTABLEKS                       R16 R0 K23 ["areAllChildrenSelected"]
       51 MOVE                             R17 R1
       52 CALL                             R16 1 1
       53 SETTABLEKS                       R16 R15 K19 ["IsChecked"]
       55 NEWCLOSURE                       R16 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R16 R15 K20 ["OnCheckboxClick"]
       60 GETTABLEKS                       R16 R4 K21 ["OnResetPlugin"]
       62 SETTABLEKS                       R16 R15 K21 ["OnResetPlugin"]
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R6 K18 ["SelectAllRow"]
       67 MOVE                             R15 R12
       68 MOVE                             R16 R6
       69 MOVE                             R17 R7
       70 NAMECALL                         R13 R0 K24 ["renderItem"]
       72 CALL                             R13 4 0
       73 ADDK                             R7 R7 K25 [1]
       74 FORGLOOP                         R8 2 ; [-44]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R8 R8 K4 ["createElement"]
       79 GETUPVAL                         R9 2
       80 DUPTABLE                         R10 K36 [{["AutomaticSize"], ["Style"] = "Section", ["ContentPadding"] = 0, ["ContentSpacing"] = 0, ["Size"], ["LayoutOrder"], ["Text"], ["Expanded"], ["OnExpandedChanged"]}]
       81 GETIMPORT                        R11 K38 [Enum.AutomaticSize.Y]
       83 SETTABLEKS                       R11 R10 K26 ["AutomaticSize"]
       85 GETIMPORT                        R11 K40 [UDim2.new]
       87 LOADN                            R12 1
       88 LOADN                            R13 0
       89 LOADN                            R14 0
       90 GETTABLEKS                       R15 R5 K41 ["RowHeight"]
       92 CALL                             R11 4 1
       93 SETTABLEKS                       R11 R10 K32 ["Size"]
       95 SETTABLEKS                       R3 R10 K10 ["LayoutOrder"]
       97 GETTABLEKS                       R11 R1 K42 ["text"]
       99 SETTABLEKS                       R11 R10 K33 ["Text"]
      101 GETTABLEKS                       R13 R0 K44 ["state"]
      103 GETTABLEKS                       R13 R13 K45 ["expandedNestedItem"]
      105 GETTABLEKS                       R14 R1 K46 ["key"]
      107 GETTABLE                         R12 R13 R14
      108 ORK                              R11 R12 K43 [False]
      109 SETTABLEKS                       R11 R10 K34 ["Expanded"]
      111 NEWCLOSURE                       R11 P1
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R1
      114 CAPTURE                          UPVAL U3
      115 SETTABLEKS                       R11 R10 K35 ["OnExpandedChanged"]
      117 MOVE                             R11 R6
      118 CALL                             R8 3 1
      119 GETTABLEKS                       R9 R1 K46 ["key"]
      121 SETTABLE                         R8 R2 R9
      122 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Items"]
        8 NEWTABLE                         R5 0 0
       10 LOADN                            R6 0
       11 MOVE                             R7 R4
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 GETTABLEKS                       R12 R11 K4 ["children"]
       17 JUMPIFNOT                        R12 ; [+7]
       18 MOVE                             R14 R11
       19 MOVE                             R15 R5
       20 MOVE                             R16 R6
       21 NAMECALL                         R12 R0 K5 ["renderNestedItem"]
       23 CALL                             R12 4 0
       24 JUMP                             ; [+6]
       25 MOVE                             R14 R11
       26 MOVE                             R15 R5
       27 MOVE                             R16 R6
       28 NAMECALL                         R12 R0 K6 ["renderItem"]
       30 CALL                             R12 4 0
       31 ADDK                             R6 R6 K7 [1]
       32 FORGLOOP                         R7 2 ; [-18]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K8 ["createFragment"]
       37 DUPTABLE                         R8 K11 [{"ScrollingFrame", "KeyboardListener"}]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K12 ["createElement"]
       41 GETUPVAL                         R10 1
       42 DUPTABLE                         R11 K15 [{"Layout", "AutomaticCanvasSize", "LayoutOrder", "Size"}]
       43 GETIMPORT                        R12 K19 [Enum.FillDirection.Vertical]
       45 SETTABLEKS                       R12 R11 K13 ["Layout"]
       47 GETIMPORT                        R12 K22 [Enum.AutomaticSize.Y]
       49 SETTABLEKS                       R12 R11 K14 ["AutomaticCanvasSize"]
       51 SETTABLEKS                       R3 R11 K2 ["LayoutOrder"]
       53 SETTABLEKS                       R2 R11 K1 ["Size"]
       55 MOVE                             R12 R5
       56 CALL                             R9 3 1
       57 SETTABLEKS                       R9 R8 K9 ["ScrollingFrame"]
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K12 ["createElement"]
       62 GETUPVAL                         R10 2
       63 DUPTABLE                         R11 K25 [{"OnKeyPressed", "OnKeyReleased"}]
       64 GETTABLEKS                       R12 R0 K26 ["onKeyPressed"]
       66 SETTABLEKS                       R12 R11 K23 ["OnKeyPressed"]
       68 GETTABLEKS                       R12 R0 K27 ["onKeyReleased"]
       70 SETTABLEKS                       R12 R11 K24 ["OnKeyReleased"]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K10 ["KeyboardListener"]
       75 CALL                             R7 1 -1
       76 RETURN                           R7 -1

PROTO_22:
        0 DUPTABLE                         R2 K3 [{"selection", "convertedCharacters", "worldModels"}]
        1 GETTABLEKS                       R3 R0 K4 ["CharacterConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["selection"]
        5 SETTABLEKS                       R3 R2 K0 ["selection"]
        7 GETTABLEKS                       R3 R0 K4 ["CharacterConversion"]
        9 GETTABLEKS                       R3 R3 K1 ["convertedCharacters"]
       11 SETTABLEKS                       R3 R2 K1 ["convertedCharacters"]
       13 GETTABLEKS                       R3 R0 K4 ["CharacterConversion"]
       15 GETTABLEKS                       R3 R3 K2 ["worldModels"]
       17 SETTABLEKS                       R3 R2 K2 ["worldModels"]
       19 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R1 K2 [{"SetCharacterSelection", "CreateWorldModels"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetCharacterSelection"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["CreateWorldModels"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["ItemState"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Src"]
       48 GETTABLEKS                       R7 R7 K12 ["Util"]
       50 GETTABLEKS                       R7 R7 K14 ["Input"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Src"]
       57 GETTABLEKS                       R8 R8 K15 ["Modules"]
       59 GETTABLEKS                       R8 R8 K16 ["NpcManager"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K11 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Actions"]
       68 GETTABLEKS                       R9 R9 K18 ["SetCharacterSelection"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R0 K11 ["Src"]
       73 GETTABLEKS                       R9 R9 K19 ["Components"]
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R9 K20 ["SelectAllRow"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R12 R9 K21 ["CharacterConversion"]
       84 GETTABLEKS                       R12 R12 K22 ["SplitView"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R9 K21 ["CharacterConversion"]
       91 GETTABLEKS                       R13 R13 K23 ["ExpandableCharacterListItem"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K5 [require]
       96 GETTABLEKS                       R14 R0 K11 ["Src"]
       98 GETTABLEKS                       R14 R14 K24 ["Thunks"]
      100 GETTABLEKS                       R14 R14 K25 ["CreateWorldModels"]
      102 CALL                             R13 1 1
      103 GETTABLEKS                       R14 R2 K26 ["ContextServices"]
      105 GETTABLEKS                       R15 R2 K27 ["UI"]
      107 GETTABLEKS                       R16 R15 K28 ["ExpandablePane"]
      109 GETTABLEKS                       R17 R15 K29 ["ScrollingFrame"]
      111 GETTABLEKS                       R18 R15 K30 ["KeyboardListener"]
      113 GETTABLEKS                       R19 R2 K12 ["Util"]
      115 GETTABLEKS                       R20 R19 K31 ["deepCopy"]
      117 GETTABLEKS                       R21 R3 K32 ["PureComponent"]
      119 LOADK                            R23 K33 ["CharacterConversionList"]
      120 NAMECALL                         R21 R21 K34 ["extend"]
      122 CALL                             R21 2 1
      123 DUPCLOSURE                       R22 K35 [PROTO_11]
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R20
      127 SETTABLEKS                       R22 R21 K36 ["init"]
      129 DUPCLOSURE                       R22 K37 [PROTO_12]
      130 CAPTURE                          VAL R7
      131 SETTABLEKS                       R22 R21 K38 ["getCharacterStatusKey"]
      133 DUPCLOSURE                       R22 K39 [PROTO_17]
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R11
      137 SETTABLEKS                       R22 R21 K40 ["renderItem"]
      139 DUPCLOSURE                       R22 K41 [PROTO_20]
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R1
      144 SETTABLEKS                       R22 R21 K42 ["renderNestedItem"]
      146 DUPCLOSURE                       R22 K43 [PROTO_21]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R18
      150 SETTABLEKS                       R22 R21 K44 ["render"]
      152 GETTABLEKS                       R22 R14 K45 ["withContext"]
      154 DUPTABLE                         R23 K47 [{"Stylizer"}]
      155 GETTABLEKS                       R24 R14 K46 ["Stylizer"]
      157 SETTABLEKS                       R24 R23 K46 ["Stylizer"]
      159 CALL                             R22 1 1
      160 MOVE                             R23 R21
      161 CALL                             R22 1 1
      162 MOVE                             R21 R22
      163 DUPCLOSURE                       R22 K48 [PROTO_22]
      164 DUPCLOSURE                       R23 K49 [PROTO_25]
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R13
      167 GETTABLEKS                       R24 R4 K50 ["connect"]
      169 MOVE                             R25 R22
      170 MOVE                             R26 R23
      171 CALL                             R24 2 1
      172 MOVE                             R25 R21
      173 CALL                             R24 1 -1
      174 RETURN                           R24 -1
