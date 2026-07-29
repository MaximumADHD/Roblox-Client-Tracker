PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+41]
        2 NEWTABLE                         R0 0 1
        4 DUPTABLE                         R1 K5 [{[1] = "insertNode", ["text"] = "Insert Node", ["items"]}]
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R2 R1 K4 ["items"]
        8 SETLIST                          R0 R1 1 [1]
       10 GETUPVAL                         R1 2
       11 JUMPIFNOT                        R1 ; [+10]
       12 DUPTABLE                         R3 K8 [{[1] = "insertParameter", ["text"] = "Insert Parameter", ["items"]}]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R4 R3 K4 ["items"]
       16 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K11 [table.insert]
       21 CALL                             R1 2 0
       22 NEWTABLE                         R1 0 2
       24 DUPTABLE                         R2 K12 [{"items"}]
       25 SETTABLEKS                       R0 R2 K4 ["items"]
       27 DUPTABLE                         R3 K12 [{"items"}]
       28 NEWTABLE                         R4 0 1
       30 DUPTABLE                         R5 K16 [{[1] = "frameSelection", ["text"] = "Frame Selection", ["onActivated"]}]
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K13 ["frameSelection"]
       34 SETTABLEKS                       R6 R5 K15 ["onActivated"]
       36 SETLIST                          R4 R5 1 [1]
       38 SETTABLEKS                       R4 R3 K4 ["items"]
       40 SETLIST                          R1 R2 2 [1]
       42 RETURN                           R1 1
       43 NEWTABLE                         R0 0 2
       45 DUPTABLE                         R1 K12 [{"items"}]
       46 NEWTABLE                         R2 0 2
       48 GETUPVAL                         R3 5
       49 DUPTABLE                         R4 K5 [{[1] = "insertNode", ["text"] = "Insert Node", ["items"]}]
       50 GETUPVAL                         R5 1
       51 SETTABLEKS                       R5 R4 K4 ["items"]
       53 CALL                             R3 1 1
       54 DUPTABLE                         R4 K8 [{[1] = "insertParameter", ["text"] = "Insert Parameter", ["items"]}]
       55 GETUPVAL                         R5 3
       56 SETTABLEKS                       R5 R4 K4 ["items"]
       58 SETLIST                          R2 R3 2 [1]
       60 SETTABLEKS                       R2 R1 K4 ["items"]
       62 DUPTABLE                         R2 K12 [{"items"}]
       63 NEWTABLE                         R3 0 1
       65 DUPTABLE                         R4 K16 [{[1] = "frameSelection", ["text"] = "Frame Selection", ["onActivated"]}]
       66 GETUPVAL                         R5 4
       67 GETTABLEKS                       R5 R5 K13 ["frameSelection"]
       69 SETTABLEKS                       R5 R4 K15 ["onActivated"]
       71 SETLIST                          R3 R4 1 [1]
       73 SETTABLEKS                       R3 R2 K4 ["items"]
       75 SETLIST                          R0 R1 2 [1]
       77 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K2 ["useConsumerHasParameters"]
       12 CALL                             R2 0 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 4
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 5
       18 GETTABLEKS                       R5 R0 K3 ["close"]
       20 LOADB                            R6 1
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 6
       23 GETTABLEKS                       R6 R0 K3 ["close"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 7
       27 CALL                             R6 0 1
       28 GETUPVAL                         R7 8
       29 GETTABLEKS                       R8 R0 K3 ["close"]
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U9
       42 NEWTABLE                         R10 0 4
       44 MOVE                             R11 R3
       45 MOVE                             R12 R4
       46 GETTABLEKS                       R13 R1 K5 ["frameSelection"]
       48 GETUPVAL                         R15 2
       49 JUMPIFNOT                        R15 ; [+2]
       50 MOVE                             R14 R2
       51 JUMP                             ; [+1]
       52 LOADNIL                          R14
       53 SETLIST                          R10 R11 4 [1]
       55 CALL                             R8 2 1
       56 GETTABLEKS                       R9 R0 K6 ["isOpen"]
       58 JUMPIF                           R9 ; [+2]
       59 LOADNIL                          R9
       60 RETURN                           R9 1
       61 GETUPVAL                         R9 2
       62 JUMPIFNOT                        R9 ; [+6]
       63 GETTABLEKS                       R9 R6 K7 ["isParameterOnlyInsertMenu"]
       65 JUMPIFNOT                        R9 ; [+3]
       66 JUMPIF                           R2 ; [+2]
       67 LOADNIL                          R9
       68 RETURN                           R9 1
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K8 ["createElement"]
       72 GETUPVAL                         R10 10
       73 GETTABLEKS                       R10 R10 K9 ["Menu"]
       75 DUPTABLE                         R11 K14 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
       76 GETTABLEKS                       R12 R0 K6 ["isOpen"]
       78 SETTABLEKS                       R12 R11 K6 ["isOpen"]
       80 GETTABLEKS                       R13 R6 K7 ["isParameterOnlyInsertMenu"]
       82 JUMPIFNOT                        R13 ; [+2]
       83 MOVE                             R12 R7
       84 JUMP                             ; [+6]
       85 GETTABLEKS                       R13 R6 K15 ["isDataOnlyInsertMenu"]
       87 JUMPIFNOT                        R13 ; [+2]
       88 MOVE                             R12 R3
       89 JUMP                             ; [+1]
       90 MOVE                             R12 R8
       91 SETTABLEKS                       R12 R11 K10 ["items"]
       93 SETTABLEKS                       R5 R11 K11 ["onActivated"]
       95 GETTABLEKS                       R12 R0 K3 ["close"]
       97 SETTABLEKS                       R12 R11 K12 ["onPressedOutside"]
       99 GETUPVAL                         R12 10
      100 GETTABLEKS                       R12 R12 K16 ["Enums"]
      102 GETTABLEKS                       R12 R12 K17 ["InputSize"]
      104 GETTABLEKS                       R12 R12 K18 ["XSmall"]
      106 SETTABLEKS                       R12 R11 K13 ["size"]
      108 CALL                             R9 2 -1
      109 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_AllowNoParameters"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["ParameterContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["ViewportRectContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K15 ["useContextMenuInsertMode"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K16 ["useContextMenuOnActivated"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Hooks"]
       60 GETTABLEKS                       R9 R9 K17 ["useExistingParameterMenuItems"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K14 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K18 ["useInsertNodeMenuItems"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K14 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K19 ["useParameterMenuItems"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K20 [PROTO_0]
       78 DUPCLOSURE                       R12 K21 [PROTO_2]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R2
       90 RETURN                           R12 1
