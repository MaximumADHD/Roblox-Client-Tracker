PROTO_0:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K4 [{[1] = "insertNode", ["text"], ["items"]}]
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+9]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K5 ["Common"]
        8 LOADK                            R5 K6 ["AnimationEditor"]
        9 LOADK                            R6 K7 ["Menu"]
       10 LOADK                            R7 K8 ["InsertNode"]
       11 NAMECALL                         R2 R2 K9 ["getExternalText"]
       13 CALL                             R2 5 1
       14 JUMP                             ; [+1]
       15 LOADK                            R2 K10 ["Insert Node"]
       16 SETTABLEKS                       R2 R1 K2 ["text"]
       18 GETUPVAL                         R2 2
       19 SETTABLEKS                       R2 R1 K3 ["items"]
       21 SETLIST                          R0 R1 1 [1]
       23 GETUPVAL                         R1 3
       24 JUMPIFNOT                        R1 ; [+25]
       25 DUPTABLE                         R3 K12 [{[1] = "insertParameter", ["text"], ["items"]}]
       26 GETUPVAL                         R5 0
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+9]
       29 GETUPVAL                         R4 1
       30 LOADK                            R6 K5 ["Common"]
       31 LOADK                            R7 K6 ["AnimationEditor"]
       32 LOADK                            R8 K7 ["Menu"]
       33 LOADK                            R9 K13 ["InsertParameter"]
       34 NAMECALL                         R4 R4 K9 ["getExternalText"]
       36 CALL                             R4 5 1
       37 JUMP                             ; [+1]
       38 LOADK                            R4 K14 ["Insert Parameter"]
       39 SETTABLEKS                       R4 R3 K2 ["text"]
       41 GETUPVAL                         R4 4
       42 SETTABLEKS                       R4 R3 K3 ["items"]
       44 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       46 MOVE                             R2 R0
       47 GETIMPORT                        R1 K17 [table.insert]
       49 CALL                             R1 2 0
       50 NEWTABLE                         R1 0 2
       52 DUPTABLE                         R2 K18 [{"items"}]
       53 SETTABLEKS                       R0 R2 K3 ["items"]
       55 DUPTABLE                         R3 K18 [{"items"}]
       56 NEWTABLE                         R4 0 1
       58 DUPTABLE                         R5 K21 [{[1] = "frameSelection", ["text"], ["onActivated"]}]
       59 GETUPVAL                         R7 0
       60 CALL                             R7 0 1
       61 JUMPIFNOT                        R7 ; [+9]
       62 GETUPVAL                         R6 1
       63 LOADK                            R8 K5 ["Common"]
       64 LOADK                            R9 K6 ["AnimationEditor"]
       65 LOADK                            R10 K7 ["Menu"]
       66 LOADK                            R11 K22 ["FrameSelection"]
       67 NAMECALL                         R6 R6 K9 ["getExternalText"]
       69 CALL                             R6 5 1
       70 JUMP                             ; [+1]
       71 LOADK                            R6 K23 ["Frame Selection"]
       72 SETTABLEKS                       R6 R5 K2 ["text"]
       74 GETUPVAL                         R6 5
       75 GETTABLEKS                       R6 R6 K19 ["frameSelection"]
       77 SETTABLEKS                       R6 R5 K20 ["onActivated"]
       79 SETLIST                          R4 R5 1 [1]
       81 SETTABLEKS                       R4 R3 K3 ["items"]
       83 SETLIST                          R1 R2 2 [1]
       85 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["ContextServices"]
       10 GETTABLEKS                       R2 R2 K3 ["Localization"]
       12 NAMECALL                         R2 R2 K4 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["useConsumerHasParameters"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 4
       20 CALL                             R4 0 1
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R6 R0 K6 ["close"]
       24 LOADB                            R7 1
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 6
       27 GETTABLEKS                       R7 R0 K6 ["close"]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 7
       31 CALL                             R7 0 1
       32 GETUPVAL                         R8 8
       33 GETTABLEKS                       R9 R0 K6 ["close"]
       35 CALL                             R8 1 1
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K7 ["useMemo"]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          UPVAL U9
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 NEWTABLE                         R11 0 5
       48 MOVE                             R12 R4
       49 MOVE                             R13 R5
       50 GETTABLEKS                       R14 R1 K8 ["frameSelection"]
       52 MOVE                             R15 R2
       53 MOVE                             R16 R3
       54 SETLIST                          R11 R12 5 [1]
       56 CALL                             R9 2 1
       57 GETTABLEKS                       R10 R0 K9 ["isOpen"]
       59 JUMPIF                           R10 ; [+2]
       60 LOADNIL                          R10
       61 RETURN                           R10 1
       62 GETTABLEKS                       R10 R7 K10 ["isParameterOnlyInsertMenu"]
       64 JUMPIFNOT                        R10 ; [+3]
       65 JUMPIF                           R3 ; [+2]
       66 LOADNIL                          R10
       67 RETURN                           R10 1
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K11 ["createElement"]
       71 GETUPVAL                         R11 10
       72 GETTABLEKS                       R11 R11 K12 ["Menu"]
       74 DUPTABLE                         R12 K17 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
       75 GETTABLEKS                       R13 R0 K9 ["isOpen"]
       77 SETTABLEKS                       R13 R12 K9 ["isOpen"]
       79 GETTABLEKS                       R14 R7 K10 ["isParameterOnlyInsertMenu"]
       81 JUMPIFNOT                        R14 ; [+2]
       82 MOVE                             R13 R8
       83 JUMP                             ; [+6]
       84 GETTABLEKS                       R14 R7 K18 ["isDataOnlyInsertMenu"]
       86 JUMPIFNOT                        R14 ; [+2]
       87 MOVE                             R13 R4
       88 JUMP                             ; [+1]
       89 MOVE                             R13 R9
       90 SETTABLEKS                       R13 R12 K13 ["items"]
       92 SETTABLEKS                       R6 R12 K14 ["onActivated"]
       94 GETTABLEKS                       R13 R0 K6 ["close"]
       96 SETTABLEKS                       R13 R12 K15 ["onPressedOutside"]
       98 GETUPVAL                         R13 10
       99 GETTABLEKS                       R13 R13 K19 ["Enums"]
      101 GETTABLEKS                       R13 R13 K20 ["InputSize"]
      103 GETTABLEKS                       R13 R13 K21 ["XSmall"]
      105 SETTABLEKS                       R13 R12 K16 ["size"]
      107 CALL                             R10 2 -1
      108 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ParameterContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["ViewportRectContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUI_Localization2"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K16 ["useContextMenuInsertMode"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Hooks"]
       60 GETTABLEKS                       R9 R9 K17 ["useContextMenuOnActivated"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K15 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K18 ["useExistingParameterMenuItems"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K15 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K19 ["useInsertNodeMenuItems"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K15 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K20 ["useParameterMenuItems"]
       83 CALL                             R11 1 1
       84 DUPCLOSURE                       R12 K21 [PROTO_1]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R1
       96 RETURN                           R12 1
