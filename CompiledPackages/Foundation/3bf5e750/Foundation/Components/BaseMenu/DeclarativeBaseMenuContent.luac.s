PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["items"]
        6 NEWTABLE                         R2 0 2
        8 LOADN                            R3 1
        9 LOADK                            R4 K1 ["items"]
       10 SETLIST                          R2 R3 2 [1]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K1 ["items"]
       17 RETURN                           R0 1
       18 NEWTABLE                         R0 0 1
       20 DUPTABLE                         R1 K2 [{"items"}]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K1 ["items"]
       24 SETTABLEKS                       R2 R1 K1 ["items"]
       26 SETLIST                          R0 R1 1 [1]
       28 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K11 [{["LayoutOrder"], ["key"], ["icon"], ["isChecked"], ["isDisabled"], ["text"], ["onActivated"], ["id"], ["testId"] = "--foundation-menu-item"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 GETTABLEKS                       R5 R0 K8 ["id"]
        9 SETTABLEKS                       R5 R4 K2 ["key"]
       11 GETTABLEKS                       R5 R0 K3 ["icon"]
       13 SETTABLEKS                       R5 R4 K3 ["icon"]
       15 GETTABLEKS                       R5 R0 K4 ["isChecked"]
       17 SETTABLEKS                       R5 R4 K4 ["isChecked"]
       19 GETTABLEKS                       R5 R0 K5 ["isDisabled"]
       21 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       23 GETTABLEKS                       R5 R0 K6 ["text"]
       25 SETTABLEKS                       R5 R4 K6 ["text"]
       27 GETTABLEKS                       R5 R0 K7 ["onActivated"]
       29 SETTABLEKS                       R5 R4 K7 ["onActivated"]
       31 GETTABLEKS                       R5 R0 K8 ["id"]
       33 SETTABLEKS                       R5 R4 K8 ["id"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"key", "LayoutOrder", "title"}]
        5 SETTABLEKS                       R1 R4 K1 ["key"]
        7 SETTABLEKS                       R1 R4 K2 ["LayoutOrder"]
        9 GETTABLEKS                       R5 R0 K3 ["title"]
       11 SETTABLEKS                       R5 R4 K3 ["title"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K5 ["map"]
       16 GETTABLEKS                       R6 R0 K6 ["items"]
       18 DUPCLOSURE                       R7 K7 [PROTO_1]
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U3
       21 CALL                             R5 2 -1
       22 CALL                             R2 -1 -1
       23 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["items"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["createElement"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["Fragment"]
       19 LOADNIL                          R4
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["map"]
       23 MOVE                             R6 R1
       24 DUPCLOSURE                       R7 K5 [PROTO_2]
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U3
       29 CALL                             R5 2 -1
       30 CALL                             R2 -1 -1
       31 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K11 ["BaseMenuGroup"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K12 ["BaseMenuItem"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K13 [PROTO_3]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 GETTABLEKS                       R8 R3 K14 ["memo"]
       51 MOVE                             R9 R7
       52 CALL                             R8 1 -1
       53 RETURN                           R8 -1
