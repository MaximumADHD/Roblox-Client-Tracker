PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useHoverContext"]
        3 GETTABLEKS                       R2 R0 K1 ["id"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["useCallback"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R2
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 3
       19 CALL                             R4 0 1
       20 GETTABLEKS                       R5 R4 K3 ["Color"]
       22 GETTABLEKS                       R5 R5 K4 ["State"]
       24 GETTABLEKS                       R5 R5 K5 ["Hover"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K6 ["createElement"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K7 ["View"]
       32 DUPTABLE                         R8 K14 [{"tag", "LayoutOrder", "onActivated", "backgroundStyle", "onStateChanged", "stateLayer"}]
       33 LOADK                            R9 K15 ["size-0-0 auto-xy row"]
       34 SETTABLEKS                       R9 R8 K8 ["tag"]
       36 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
       38 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       40 GETTABLEKS                       R9 R0 K10 ["onActivated"]
       42 SETTABLEKS                       R9 R8 K10 ["onActivated"]
       44 JUMPIFNOT                        R1 ; [+2]
       45 MOVE                             R9 R5
       46 JUMP                             ; [+1]
       47 LOADNIL                          R9
       48 SETTABLEKS                       R9 R8 K11 ["backgroundStyle"]
       50 SETTABLEKS                       R3 R8 K12 ["onStateChanged"]
       52 DUPTABLE                         R9 K17 [{"affordance"}]
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R10 R10 K18 ["Enums"]
       56 GETTABLEKS                       R10 R10 K19 ["StateLayerAffordance"]
       58 GETTABLEKS                       R10 R10 K20 ["None"]
       60 SETTABLEKS                       R10 R9 K16 ["affordance"]
       62 SETTABLEKS                       R9 R8 K13 ["stateLayer"]
       64 GETTABLEKS                       R9 R0 K21 ["children"]
       66 CALL                             R6 3 -1
       67 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETGLOBAL                        R3 K1 ["HoverContextWrapper"]
        5 MOVE                             R4 R1
        6 MOVE                             R5 R0
        7 CALL                             R2 3 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K1 [script]
       13 LOADK                            R4 K5 ["InlineLayoutElements"]
       14 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K7 [require]
       19 GETTABLEKS                       R4 R1 K8 ["React"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K10 ["Hooks"]
       29 GETTABLEKS                       R5 R5 K11 ["useTokens"]
       31 GETIMPORT                        R6 K7 [require]
       33 GETTABLEKS                       R7 R2 K12 ["InlineSpanElement"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K7 [require]
       38 GETTABLEKS                       R8 R2 K13 ["HoverContext"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K7 [require]
       43 GETTABLEKS                       R9 R2 K14 ["RenderableInlineElement"]
       45 CALL                             R8 1 1
       46 NEWTABLE                         R9 1 0
       48 DUPCLOSURE                       R10 K15 [PROTO_1]
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 SETGLOBAL                        R10 K16 ["HoverContextWrapper"]
       55 DUPCLOSURE                       R10 K17 [PROTO_2]
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R10 R9 K18 ["new"]
       59 RETURN                           R9 1
