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
       37 DUPTABLE                         R7 K13 [{["tag"], ["LayoutOrder"], ["onStateChanged"], ["stateLayer"], ["testId"] = "input-delete"}]
       38 GETUPVAL                         R9 3
       39 CALL                             R9 0 1
       40 JUMPIFNOT                        R9 ; [+2]
       41 LOADK                            R8 K14 ["auto-xy align-y-center"]
       42 JUMP                             ; [+1]
       43 LOADK                            R8 K15 ["fill auto-y"]
       44 SETTABLEKS                       R8 R7 K7 ["tag"]
       46 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       48 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       50 SETTABLEKS                       R4 R7 K9 ["onStateChanged"]
       52 DUPTABLE                         R8 K17 [{"affordance"}]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K18 ["Enums"]
       56 GETTABLEKS                       R9 R9 K19 ["StateLayerAffordance"]
       58 GETTABLEKS                       R9 R9 K20 ["None"]
       60 SETTABLEKS                       R9 R8 K16 ["affordance"]
       62 SETTABLEKS                       R8 R7 K10 ["stateLayer"]
       64 DUPTABLE                         R8 K22 [{"Icon"}]
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R9 R9 K5 ["createElement"]
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K21 ["Icon"]
       71 DUPTABLE                         R11 K28 [{["name"] = "trash-can", ["size"], ["variant"], ["style"]}]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K18 ["Enums"]
       75 GETTABLEKS                       R12 R12 K29 ["IconSize"]
       77 GETTABLEKS                       R12 R12 K30 ["XSmall"]
       79 SETTABLEKS                       R12 R11 K25 ["size"]
       81 GETUPVAL                         R12 0
       82 GETTABLEKS                       R12 R12 K18 ["Enums"]
       84 GETTABLEKS                       R12 R12 K31 ["IconVariant"]
       86 GETTABLEKS                       R12 R12 K32 ["Regular"]
       88 SETTABLEKS                       R12 R11 K26 ["variant"]
       90 GETUPVAL                         R13 2
       91 CALL                             R13 0 1
       92 JUMPIFNOT                        R13 ; [+8]
       93 JUMPIFNOT                        R2 ; [+7]
       94 GETTABLEKS                       R12 R1 K33 ["Color"]
       96 GETTABLEKS                       R12 R12 K34 ["Content"]
       98 GETTABLEKS                       R12 R12 K35 ["Emphasis"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R12
      102 SETTABLEKS                       R12 R11 K27 ["style"]
      104 CALL                             R9 2 1
      105 SETTABLEKS                       R9 R8 K21 ["Icon"]
      107 CALL                             R5 3 -1
      108 RETURN                           R5 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Flags"]
       32 GETTABLEKS                       R5 R5 K11 ["getFFlagAnimGraphUIDeleteInputButtonChanges"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 GETTABLEKS                       R6 R2 K13 ["memo"]
       42 MOVE                             R7 R5
       43 CALL                             R6 1 -1
       44 RETURN                           R6 -1
