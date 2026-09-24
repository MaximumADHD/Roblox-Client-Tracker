PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKS                       R0 K0 ["Default"] ; [+5]
        3 JUMPIFEQKS                       R0 K1 ["Disabled"] ; [+3]
        5 JUMPIFNOTEQKS                    R0 K2 ["Initialize"] ; [+9]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["Color"]
       10 GETTABLEKS                       R2 R2 K4 ["State"]
       12 GETTABLEKS                       R2 R2 K5 ["Idle"]
       14 JUMP                             ; [+27]
       15 JUMPIFEQKS                       R0 K6 ["Hover"] ; [+3]
       17 JUMPIFNOTEQKS                    R0 K7 ["Selected"] ; [+9]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["Color"]
       22 GETTABLEKS                       R2 R2 K4 ["State"]
       24 GETTABLEKS                       R2 R2 K6 ["Hover"]
       26 JUMP                             ; [+15]
       27 JUMPIFEQKS                       R0 K8 ["Pressed"] ; [+3]
       29 JUMPIFNOTEQKS                    R0 K9 ["SelectedPressed"] ; [+9]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K3 ["Color"]
       34 GETTABLEKS                       R2 R2 K4 ["State"]
       36 GETTABLEKS                       R2 R2 K10 ["Press"]
       38 JUMP                             ; [+3]
       39 GETUPVAL                         R2 2
       40 MOVE                             R3 R0
       41 CALL                             R2 1 1
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

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
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U2
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R1
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 3
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K5 ["View"]
       29 DUPTABLE                         R7 K12 [{"tag", "onActivated", "onStateChanged", "stateLayer", "LayoutOrder", "Visible"}]
       30 GETTABLEKS                       R8 R0 K13 ["clickableViewProps"]
       32 GETTABLEKS                       R8 R8 K6 ["tag"]
       34 SETTABLEKS                       R8 R7 K6 ["tag"]
       36 GETTABLEKS                       R8 R0 K7 ["onActivated"]
       38 SETTABLEKS                       R8 R7 K7 ["onActivated"]
       40 SETTABLEKS                       R4 R7 K8 ["onStateChanged"]
       42 DUPTABLE                         R8 K15 [{"affordance"}]
       43 GETUPVAL                         R9 5
       44 GETTABLEKS                       R9 R9 K16 ["None"]
       46 SETTABLEKS                       R9 R8 K14 ["affordance"]
       48 SETTABLEKS                       R8 R7 K9 ["stateLayer"]
       50 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       52 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       54 GETTABLEKS                       R8 R0 K11 ["Visible"]
       56 SETTABLEKS                       R8 R7 K11 ["Visible"]
       58 DUPTABLE                         R8 K18 [{"HoverAffordance"}]
       59 GETUPVAL                         R9 3
       60 GETUPVAL                         R10 4
       61 GETTABLEKS                       R10 R10 K5 ["View"]
       63 DUPTABLE                         R11 K20 [{"tag", "backgroundStyle"}]
       64 GETTABLEKS                       R12 R0 K21 ["affordanceViewProps"]
       66 GETTABLEKS                       R12 R12 K6 ["tag"]
       68 SETTABLEKS                       R12 R11 K6 ["tag"]
       70 SETTABLEKS                       R2 R11 K19 ["backgroundStyle"]
       72 GETTABLEKS                       R13 R0 K21 ["affordanceViewProps"]
       74 JUMPIFNOT                        R13 ; [+5]
       75 GETTABLEKS                       R12 R0 K21 ["affordanceViewProps"]
       77 GETTABLEKS                       R12 R12 K22 ["children"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R12
       81 CALL                             R9 3 1
       82 SETTABLEKS                       R9 R8 K17 ["HoverAffordance"]
       84 GETTABLEKS                       R9 R0 K22 ["children"]
       86 CALL                             R5 4 -1
       87 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["exhaustiveMatch"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R3 K11 ["createElement"]
       28 GETTABLEKS                       R6 R2 K12 ["Enums"]
       30 GETTABLEKS                       R6 R6 K13 ["StateLayerAffordance"]
       32 GETTABLEKS                       R7 R2 K14 ["Hooks"]
       34 GETTABLEKS                       R7 R7 K15 ["useTokens"]
       36 DUPCLOSURE                       R8 K16 [PROTO_1]
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R6
       43 RETURN                           R8 1
