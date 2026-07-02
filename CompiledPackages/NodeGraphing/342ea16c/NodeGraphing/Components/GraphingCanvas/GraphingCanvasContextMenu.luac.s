PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 2
        5 GETUPVAL                         R3 0
        6 DUPTABLE                         R4 K6 [{["id"] = "insertNode", ["text"] = "Insert Node", [3]}]
        7 GETUPVAL                         R5 1
        8 SETTABLEKS                       R5 R4 K0 ["items"]
       10 CALL                             R3 1 1
       11 DUPTABLE                         R4 K9 [{["id"] = "insertParameter", ["text"] = "Insert Parameter", [3]}]
       12 GETUPVAL                         R5 2
       13 SETTABLEKS                       R5 R4 K0 ["items"]
       15 SETLIST                          R2 R3 2 [1]
       17 SETTABLEKS                       R2 R1 K0 ["items"]
       19 DUPTABLE                         R2 K1 [{"items"}]
       20 NEWTABLE                         R3 0 1
       22 DUPTABLE                         R4 K13 [{["id"] = "frameSelection", ["text"] = "Frame Selection", ["onActivated"]}]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K10 ["frameSelection"]
       26 SETTABLEKS                       R5 R4 K12 ["onActivated"]
       28 SETLIST                          R3 R4 1 [1]
       30 SETTABLEKS                       R3 R2 K0 ["items"]
       32 SETLIST                          R0 R1 2 [1]
       34 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R4 R0 K2 ["close"]
       12 LOADB                            R5 1
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R5 R0 K2 ["close"]
       17 CALL                             R4 1 1
       18 GETUPVAL                         R5 5
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 6
       21 GETTABLEKS                       R7 R0 K2 ["close"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R9 0 3
       34 MOVE                             R10 R2
       35 MOVE                             R11 R3
       36 GETTABLEKS                       R12 R1 K4 ["frameSelection"]
       38 SETLIST                          R9 R10 3 [1]
       40 CALL                             R7 2 1
       41 GETTABLEKS                       R8 R0 K5 ["isOpen"]
       43 JUMPIF                           R8 ; [+2]
       44 LOADNIL                          R8
       45 RETURN                           R8 1
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K6 ["createElement"]
       49 GETUPVAL                         R9 8
       50 GETTABLEKS                       R9 R9 K7 ["Menu"]
       52 DUPTABLE                         R10 K12 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
       53 GETTABLEKS                       R11 R0 K5 ["isOpen"]
       55 SETTABLEKS                       R11 R10 K5 ["isOpen"]
       57 GETTABLEKS                       R12 R5 K13 ["isParameterOnlyInsertMenu"]
       59 JUMPIFNOT                        R12 ; [+2]
       60 MOVE                             R11 R6
       61 JUMP                             ; [+6]
       62 GETTABLEKS                       R12 R5 K14 ["isDataOnlyInsertMenu"]
       64 JUMPIFNOT                        R12 ; [+2]
       65 MOVE                             R11 R2
       66 JUMP                             ; [+1]
       67 MOVE                             R11 R7
       68 SETTABLEKS                       R11 R10 K8 ["items"]
       70 SETTABLEKS                       R4 R10 K9 ["onActivated"]
       72 GETTABLEKS                       R11 R0 K2 ["close"]
       74 SETTABLEKS                       R11 R10 K10 ["onPressedOutside"]
       76 GETUPVAL                         R11 8
       77 GETTABLEKS                       R11 R11 K15 ["Enums"]
       79 GETTABLEKS                       R11 R11 K16 ["InputSize"]
       81 GETTABLEKS                       R11 R11 K17 ["XSmall"]
       83 SETTABLEKS                       R11 R10 K11 ["size"]
       85 CALL                             R8 2 -1
       86 RETURN                           R8 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ViewportRectContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K12 ["useContextMenuInsertMode"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K13 ["useContextMenuOnActivated"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K14 ["useExistingParameterMenuItems"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K15 ["useInsertNodeMenuItems"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Hooks"]
       60 GETTABLEKS                       R9 R9 K16 ["useParameterMenuItems"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K17 [PROTO_0]
       64 DUPCLOSURE                       R10 K18 [PROTO_2]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R1
       74 RETURN                           R10 1
