PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Pressed"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["OnDelete"]
       12 CALL                             R1 0 0
       13 GETUPVAL                         R1 2
       14 LOADB                            R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["Enums"]
       18 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       20 GETTABLEKS                       R3 R3 K4 ["Hover"]
       22 JUMPIFEQ                         R0 R3 ; [+12]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["Enums"]
       27 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       29 GETTABLEKS                       R3 R3 K2 ["Pressed"]
       31 JUMPIFEQ                         R0 R3 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["OnDelete"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Hooks"]
        8 GETTABLEKS                       R1 R1 K2 ["useTokens"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["useState"]
       14 LOADB                            R3 0
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R3
       23 NEWTABLE                         R6 0 1
       25 GETTABLEKS                       R7 R0 K0 ["OnDelete"]
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K5 ["createElement"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K6 ["View"]
       36 DUPTABLE                         R7 K14 [{["tag"] = "auto-xy align-y-center", ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["testId"] = "input-delete"}]
       37 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       39 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       41 SETTABLEKS                       R4 R7 K10 ["onStateChanged"]
       43 DUPTABLE                         R8 K16 [{"affordance"}]
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K17 ["Enums"]
       47 GETTABLEKS                       R9 R9 K18 ["StateLayerAffordance"]
       49 GETTABLEKS                       R9 R9 K19 ["None"]
       51 SETTABLEKS                       R9 R8 K15 ["affordance"]
       53 SETTABLEKS                       R8 R7 K11 ["stateLayer"]
       55 DUPTABLE                         R8 K21 [{"Icon"}]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R9 R9 K5 ["createElement"]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K20 ["Icon"]
       62 DUPTABLE                         R11 K27 [{["name"] = "trash-can", ["size"], ["variant"], ["style"]}]
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K17 ["Enums"]
       66 GETTABLEKS                       R12 R12 K28 ["IconSize"]
       68 GETTABLEKS                       R12 R12 K29 ["XSmall"]
       70 SETTABLEKS                       R12 R11 K24 ["size"]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K17 ["Enums"]
       75 GETTABLEKS                       R12 R12 K30 ["IconVariant"]
       77 GETTABLEKS                       R12 R12 K31 ["Regular"]
       79 SETTABLEKS                       R12 R11 K25 ["variant"]
       81 JUMPIFNOT                        R2 ; [+7]
       82 GETTABLEKS                       R12 R1 K32 ["Color"]
       84 GETTABLEKS                       R12 R12 K33 ["Content"]
       86 GETTABLEKS                       R12 R12 K34 ["Emphasis"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R12
       90 SETTABLEKS                       R12 R11 K26 ["style"]
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K20 ["Icon"]
       95 CALL                             R5 3 -1
       96 RETURN                           R5 -1

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
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 GETTABLEKS                       R4 R2 K10 ["memo"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1
