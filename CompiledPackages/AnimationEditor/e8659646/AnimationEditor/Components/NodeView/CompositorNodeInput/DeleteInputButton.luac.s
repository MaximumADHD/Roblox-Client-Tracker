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
       24 DUPTABLE                         R4 K9 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer", "testId"}]
       25 LOADK                            R5 K10 ["auto-y fill"]
       26 SETTABLEKS                       R5 R4 K4 ["tag"]
       28 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       30 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       32 SETTABLEKS                       R1 R4 K6 ["onStateChanged"]
       34 DUPTABLE                         R5 K12 [{"affordance"}]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K13 ["Enums"]
       38 GETTABLEKS                       R6 R6 K14 ["StateLayerAffordance"]
       40 GETTABLEKS                       R6 R6 K15 ["None"]
       42 SETTABLEKS                       R6 R5 K11 ["affordance"]
       44 SETTABLEKS                       R5 R4 K7 ["stateLayer"]
       46 LOADK                            R5 K16 ["input-delete"]
       47 SETTABLEKS                       R5 R4 K8 ["testId"]
       49 DUPTABLE                         R5 K18 [{"Icon"}]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K2 ["createElement"]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K17 ["Icon"]
       56 DUPTABLE                         R8 K22 [{"name", "size", "variant"}]
       57 LOADK                            R9 K23 ["trash-can"]
       58 SETTABLEKS                       R9 R8 K19 ["name"]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K13 ["Enums"]
       63 GETTABLEKS                       R9 R9 K24 ["IconSize"]
       65 GETTABLEKS                       R9 R9 K25 ["XSmall"]
       67 SETTABLEKS                       R9 R8 K20 ["size"]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K13 ["Enums"]
       72 GETTABLEKS                       R9 R9 K26 ["IconVariant"]
       74 GETTABLEKS                       R9 R9 K27 ["Regular"]
       76 SETTABLEKS                       R9 R8 K21 ["variant"]
       78 CALL                             R6 2 1
       79 SETTABLEKS                       R6 R5 K17 ["Icon"]
       81 CALL                             R2 3 -1
       82 RETURN                           R2 -1

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
