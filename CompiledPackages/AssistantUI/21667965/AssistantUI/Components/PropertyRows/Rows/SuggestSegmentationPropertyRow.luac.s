PROTO_0:
        0 DUPTABLE                         R0 K1 [{"SuggestSegmentation"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["Gen3d"]
        3 LOADK                            R4 K3 ["SuggestSegmentationTitle"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["SuggestSegmentation"]
        9 RETURN                           R0 1

PROTO_1:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setValue"]
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        9 DUPCLOSURE                       R3 K2 [PROTO_0]
       10 CAPTURE                          UPVAL U1
       11 NEWTABLE                         R4 0 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K3 ["locale"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R5 0 1
       26 GETTABLEKS                       R6 R0 K5 ["setValue"]
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 2
       32 CALL                             R4 0 1
       33 GETUPVAL                         R5 3
       34 GETUPVAL                         R6 4
       35 DUPTABLE                         R7 K9 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-xxsmall", ["LayoutOrder"]}]
       36 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       38 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       40 DUPTABLE                         R8 K12 [{"Check", "Label"}]
       41 GETUPVAL                         R9 3
       42 GETUPVAL                         R10 5
       43 DUPTABLE                         R11 K20 [{["isChecked"], ["size"], ["label"] = "", ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
       44 SETTABLEKS                       R1 R11 K13 ["isChecked"]
       46 GETUPVAL                         R12 6
       47 GETTABLEKS                       R12 R12 K21 ["XSmall"]
       49 SETTABLEKS                       R12 R11 K14 ["size"]
       51 GETTABLEKS                       R13 R0 K22 ["interactable"]
       53 NOT                              R12 R13
       54 SETTABLEKS                       R12 R11 K17 ["isDisabled"]
       56 SETTABLEKS                       R3 R11 K18 ["onActivated"]
       58 MOVE                             R12 R4
       59 CALL                             R12 0 1
       60 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       62 GETUPVAL                         R12 7
       63 GETTABLEKS                       R12 R12 K23 ["SegmentationPropertyRow"]
       65 GETTABLEKS                       R12 R12 K24 ["SuggestCheckbox"]
       67 SETTABLEKS                       R12 R11 K19 ["testId"]
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K10 ["Check"]
       72 GETUPVAL                         R9 3
       73 GETUPVAL                         R10 8
       74 DUPTABLE                         R11 K27 [{["tag"] = "size-0-0 auto-xy text-body-small text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
       75 GETTABLEKS                       R12 R2 K28 ["SuggestSegmentation"]
       77 SETTABLEKS                       R12 R11 K26 ["Text"]
       79 MOVE                             R12 R4
       80 CALL                             R12 0 1
       81 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K11 ["Label"]
       86 CALL                             R5 3 -1
       87 RETURN                           R5 -1

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
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETIMPORT                        R6 K1 [script]
       28 GETTABLEKS                       R6 R6 K4 ["Parent"]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K10 ["PropertyRowTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Util"]
       39 GETTABLEKS                       R7 R7 K12 ["TestIds"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Resources"]
       46 GETTABLEKS                       R8 R8 K14 ["Localization"]
       48 GETTABLEKS                       R8 R8 K15 ["Translator"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R2 K16 ["Checkbox"]
       53 GETTABLEKS                       R9 R2 K17 ["Text"]
       55 GETTABLEKS                       R10 R2 K18 ["View"]
       57 GETTABLEKS                       R11 R2 K19 ["Enums"]
       59 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       61 GETTABLEKS                       R12 R4 K21 ["createNextOrder"]
       63 GETTABLEKS                       R13 R3 K22 ["createElement"]
       65 DUPCLOSURE                       R14 K23 [PROTO_3]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R9
       75 RETURN                           R14 1
