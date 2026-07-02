PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Pressed"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["OnDelete"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["OnDelete"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["useCallback"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R3 0 1
       13 GETTABLEKS                       R4 R0 K0 ["OnDelete"]
       15 SETLIST                          R3 R4 1 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["createElement"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K3 ["View"]
       24 DUPTABLE                         R4 K11 [{["tag"] = "fill auto-y", ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["testId"] = "input-delete"}]
       25 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       27 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       29 SETTABLEKS                       R1 R4 K7 ["onStateChanged"]
       31 DUPTABLE                         R5 K13 [{"affordance"}]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K14 ["Enums"]
       35 GETTABLEKS                       R6 R6 K15 ["StateLayerAffordance"]
       37 GETTABLEKS                       R6 R6 K16 ["None"]
       39 SETTABLEKS                       R6 R5 K12 ["affordance"]
       41 SETTABLEKS                       R5 R4 K8 ["stateLayer"]
       43 DUPTABLE                         R5 K18 [{"Icon"}]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K2 ["createElement"]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K17 ["Icon"]
       50 DUPTABLE                         R8 K23 [{["name"] = "trash-can", ["size"], ["variant"]}]
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K14 ["Enums"]
       54 GETTABLEKS                       R9 R9 K24 ["IconSize"]
       56 GETTABLEKS                       R9 R9 K25 ["XSmall"]
       58 SETTABLEKS                       R9 R8 K21 ["size"]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K14 ["Enums"]
       63 GETTABLEKS                       R9 R9 K26 ["IconVariant"]
       65 GETTABLEKS                       R9 R9 K27 ["Regular"]
       67 SETTABLEKS                       R9 R8 K22 ["variant"]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K17 ["Icon"]
       72 CALL                             R2 3 -1
       73 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
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
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 GETTABLEKS                       R4 R2 K10 ["memo"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1
