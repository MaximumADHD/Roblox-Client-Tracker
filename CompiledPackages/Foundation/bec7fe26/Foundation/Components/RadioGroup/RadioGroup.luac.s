PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["value"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onValueChanged"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 GETTABLEKS                       R4 R2 K1 ["value"]
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 1
       18 GETTABLEKS                       R8 R2 K1 ["value"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 0
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R7 0 2
       31 MOVE                             R8 R4
       32 GETTABLEKS                       R9 R2 K4 ["onValueChanged"]
       34 SETLIST                          R7 R8 2 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K5 ["createElement"]
       40 GETUPVAL                         R7 3
       41 GETUPVAL                         R8 4
       42 MOVE                             R9 R2
       43 DUPTABLE                         R10 K9 [{["tag"] = "auto-xy col gap-medium", ["ref"]}]
       44 SETTABLEKS                       R1 R10 K8 ["ref"]
       46 CALL                             R8 2 1
       47 DUPTABLE                         R9 K11 [{"RadioGroupContext"}]
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R10 R10 K5 ["createElement"]
       51 GETUPVAL                         R11 5
       52 GETTABLEKS                       R11 R11 K12 ["Provider"]
       54 DUPTABLE                         R12 K13 [{"value"}]
       55 DUPTABLE                         R13 K16 [{"value", "onValueChanged", "Selectable", "testId"}]
       56 SETTABLEKS                       R3 R13 K1 ["value"]
       58 SETTABLEKS                       R5 R13 K4 ["onValueChanged"]
       60 GETTABLEKS                       R14 R2 K14 ["Selectable"]
       62 SETTABLEKS                       R14 R13 K14 ["Selectable"]
       64 GETTABLEKS                       R14 R2 K15 ["testId"]
       66 SETTABLEKS                       R14 R13 K15 ["testId"]
       68 SETTABLEKS                       R13 R12 K1 ["value"]
       70 GETTABLEKS                       R13 R2 K17 ["children"]
       72 CALL                             R10 3 1
       73 SETTABLEKS                       R10 R9 K10 ["RadioGroupContext"]
       75 CALL                             R6 3 -1
       76 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["withCommonProps"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Utility"]
       39 GETTABLEKS                       R7 R7 K13 ["withDefaults"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K14 ["RadioGroupContext"]
       50 CALL                             R7 1 1
       51 DUPTABLE                         R8 K19 [{["Selectable"] = True, ["testId"] = "--foundation-radio-group"}]
       52 DUPCLOSURE                       R9 K20 [PROTO_2]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 GETTABLEKS                       R10 R2 K21 ["memo"]
       61 GETTABLEKS                       R11 R2 K22 ["forwardRef"]
       63 MOVE                             R12 R9
       64 CALL                             R11 1 -1
       65 CALL                             R10 -1 -1
       66 RETURN                           R10 -1
