PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Default", "Hover", "Pressed"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["Color"]
        4 GETTABLEKS                       R2 R2 K5 ["State"]
        6 GETTABLEKS                       R2 R2 K6 ["Idle"]
        8 SETTABLEKS                       R2 R1 K0 ["Default"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["Color"]
       13 GETTABLEKS                       R2 R2 K5 ["State"]
       15 GETTABLEKS                       R2 R2 K1 ["Hover"]
       17 SETTABLEKS                       R2 R1 K1 ["Hover"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K4 ["Color"]
       22 GETTABLEKS                       R2 R2 K5 ["State"]
       24 GETTABLEKS                       R2 R2 K7 ["Press"]
       26 SETTABLEKS                       R2 R1 K2 ["Pressed"]
       28 GETUPVAL                         R2 1
       29 GETTABLE                         R3 R1 R0
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useBinding"]
        5 GETTABLEKS                       R3 R1 K1 ["Color"]
        7 GETTABLEKS                       R3 R3 K2 ["State"]
        9 GETTABLEKS                       R3 R3 K3 ["Idle"]
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 1
       20 MOVE                             R7 R1
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 2
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K5 ["View"]
       28 DUPTABLE                         R7 K12 [{"tag", "onActivated", "onStateChanged", "stateLayer", "LayoutOrder", "Visible"}]
       29 GETTABLEKS                       R8 R0 K13 ["clickableViewProps"]
       31 GETTABLEKS                       R8 R8 K6 ["tag"]
       33 SETTABLEKS                       R8 R7 K6 ["tag"]
       35 GETTABLEKS                       R8 R0 K7 ["onActivated"]
       37 SETTABLEKS                       R8 R7 K7 ["onActivated"]
       39 SETTABLEKS                       R4 R7 K8 ["onStateChanged"]
       41 DUPTABLE                         R8 K15 [{"affordance"}]
       42 GETUPVAL                         R9 4
       43 GETTABLEKS                       R9 R9 K16 ["None"]
       45 SETTABLEKS                       R9 R8 K14 ["affordance"]
       47 SETTABLEKS                       R8 R7 K9 ["stateLayer"]
       49 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       51 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       53 GETTABLEKS                       R8 R0 K11 ["Visible"]
       55 SETTABLEKS                       R8 R7 K11 ["Visible"]
       57 DUPTABLE                         R8 K18 [{"HoverAffordance"}]
       58 GETUPVAL                         R9 2
       59 GETUPVAL                         R10 3
       60 GETTABLEKS                       R10 R10 K5 ["View"]
       62 DUPTABLE                         R11 K20 [{"tag", "backgroundStyle"}]
       63 GETTABLEKS                       R12 R0 K21 ["affordanceViewProps"]
       65 GETTABLEKS                       R12 R12 K6 ["tag"]
       67 SETTABLEKS                       R12 R11 K6 ["tag"]
       69 SETTABLEKS                       R2 R11 K19 ["backgroundStyle"]
       71 GETTABLEKS                       R13 R0 K21 ["affordanceViewProps"]
       73 JUMPIFNOT                        R13 ; [+5]
       74 GETTABLEKS                       R12 R0 K21 ["affordanceViewProps"]
       76 GETTABLEKS                       R12 R12 K22 ["children"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R12
       80 CALL                             R9 3 1
       81 SETTABLEKS                       R9 R8 K17 ["HoverAffordance"]
       83 GETTABLEKS                       R9 R0 K22 ["children"]
       85 CALL                             R5 4 -1
       86 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["createElement"]
       21 GETTABLEKS                       R5 R2 K10 ["Enums"]
       23 GETTABLEKS                       R5 R5 K11 ["StateLayerAffordance"]
       25 GETTABLEKS                       R6 R2 K12 ["Hooks"]
       27 GETTABLEKS                       R6 R6 K13 ["useTokens"]
       29 DUPCLOSURE                       R7 K14 [PROTO_1]
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R5
       35 RETURN                           R7 1
