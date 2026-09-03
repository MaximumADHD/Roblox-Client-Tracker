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
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+23]
       16 GETUPVAL                         R1 3
       17 LOADB                            R2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["Enums"]
       21 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       23 GETTABLEKS                       R3 R3 K4 ["Hover"]
       25 JUMPIFEQ                         R0 R3 ; [+12]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K0 ["Enums"]
       30 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       32 GETTABLEKS                       R3 R3 K2 ["Pressed"]
       34 JUMPIFEQ                         R0 R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

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
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R6 0 1
       26 GETTABLEKS                       R7 R0 K0 ["OnDelete"]
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K5 ["createElement"]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K6 ["View"]
       37 DUPTABLE                         R7 K14 [{["tag"] = "auto-xy align-y-center", ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["testId"] = "input-delete"}]
       38 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       40 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       42 SETTABLEKS                       R4 R7 K10 ["onStateChanged"]
       44 DUPTABLE                         R8 K16 [{"affordance"}]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K17 ["Enums"]
       48 GETTABLEKS                       R9 R9 K18 ["StateLayerAffordance"]
       50 GETTABLEKS                       R9 R9 K19 ["None"]
       52 SETTABLEKS                       R9 R8 K15 ["affordance"]
       54 SETTABLEKS                       R8 R7 K11 ["stateLayer"]
       56 DUPTABLE                         R8 K21 [{"Icon"}]
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R9 R9 K5 ["createElement"]
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R10 R10 K20 ["Icon"]
       63 DUPTABLE                         R11 K27 [{["name"] = "trash-can", ["size"], ["variant"], ["style"]}]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K17 ["Enums"]
       67 GETTABLEKS                       R12 R12 K28 ["IconSize"]
       69 GETTABLEKS                       R12 R12 K29 ["XSmall"]
       71 SETTABLEKS                       R12 R11 K24 ["size"]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K17 ["Enums"]
       76 GETTABLEKS                       R12 R12 K30 ["IconVariant"]
       78 GETTABLEKS                       R12 R12 K31 ["Regular"]
       80 SETTABLEKS                       R12 R11 K25 ["variant"]
       82 GETUPVAL                         R13 2
       83 CALL                             R13 0 1
       84 JUMPIFNOT                        R13 ; [+8]
       85 JUMPIFNOT                        R2 ; [+7]
       86 GETTABLEKS                       R12 R1 K32 ["Color"]
       88 GETTABLEKS                       R12 R12 K33 ["Content"]
       90 GETTABLEKS                       R12 R12 K34 ["Emphasis"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R12
       94 SETTABLEKS                       R12 R11 K26 ["style"]
       96 CALL                             R9 2 1
       97 SETTABLEKS                       R9 R8 K20 ["Icon"]
       99 CALL                             R5 3 -1
      100 RETURN                           R5 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagAnimGraphUIDeleteInputButtonChanges"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_1]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 GETTABLEKS                       R5 R2 K12 ["memo"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 -1
       36 RETURN                           R5 -1
