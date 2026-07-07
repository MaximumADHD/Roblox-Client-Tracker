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
       24 DUPTABLE                         R4 K10 [{["tag"], ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["testId"] = "input-delete"}]
       25 GETUPVAL                         R6 2
       26 CALL                             R6 0 1
       27 JUMPIFNOT                        R6 ; [+2]
       28 LOADK                            R5 K11 ["auto-xy align-y-center"]
       29 JUMP                             ; [+1]
       30 LOADK                            R5 K12 ["fill auto-y"]
       31 SETTABLEKS                       R5 R4 K4 ["tag"]
       33 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       35 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       37 SETTABLEKS                       R1 R4 K6 ["onStateChanged"]
       39 DUPTABLE                         R5 K14 [{"affordance"}]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K15 ["Enums"]
       43 GETTABLEKS                       R6 R6 K16 ["StateLayerAffordance"]
       45 GETTABLEKS                       R6 R6 K17 ["None"]
       47 SETTABLEKS                       R6 R5 K13 ["affordance"]
       49 SETTABLEKS                       R5 R4 K7 ["stateLayer"]
       51 DUPTABLE                         R5 K19 [{"Icon"}]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K2 ["createElement"]
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K18 ["Icon"]
       58 DUPTABLE                         R8 K24 [{["name"] = "trash-can", ["size"], ["variant"]}]
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R9 R9 K15 ["Enums"]
       62 GETTABLEKS                       R9 R9 K25 ["IconSize"]
       64 GETTABLEKS                       R9 R9 K26 ["XSmall"]
       66 SETTABLEKS                       R9 R8 K22 ["size"]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K15 ["Enums"]
       71 GETTABLEKS                       R9 R9 K27 ["IconVariant"]
       73 GETTABLEKS                       R9 R9 K28 ["Regular"]
       75 SETTABLEKS                       R9 R8 K23 ["variant"]
       77 CALL                             R6 2 1
       78 SETTABLEKS                       R6 R5 K18 ["Icon"]
       80 CALL                             R2 3 -1
       81 RETURN                           R2 -1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagAnimGraphUIDeleteIconArea"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 GETTABLEKS                       R5 R2 K12 ["memo"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 -1
       36 RETURN                           R5 -1
