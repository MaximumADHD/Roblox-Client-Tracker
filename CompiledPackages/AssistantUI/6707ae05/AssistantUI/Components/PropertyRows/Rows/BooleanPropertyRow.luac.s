PROTO_0:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setValue"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["setValue"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 DUPTABLE                         R4 K10 [{["label"] = "", ["size"], ["isChecked"], ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K11 ["Enums"]
       18 GETTABLEKS                       R5 R5 K12 ["InputSize"]
       20 GETTABLEKS                       R5 R5 K13 ["Small"]
       22 SETTABLEKS                       R5 R4 K4 ["size"]
       24 GETTABLEKS                       R6 R0 K15 ["value"]
       26 ORK                              R5 R6 K14 [False]
       27 SETTABLEKS                       R5 R4 K5 ["isChecked"]
       29 GETTABLEKS                       R6 R0 K16 ["interactable"]
       31 NOT                              R5 R6
       32 SETTABLEKS                       R5 R4 K6 ["isDisabled"]
       34 SETTABLEKS                       R1 R4 K7 ["onActivated"]
       36 GETTABLEKS                       R5 R0 K8 ["LayoutOrder"]
       38 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K17 ["SegmentationPropertyRow"]
       43 GETTABLEKS                       R5 R5 K18 ["BooleanCheckbox"]
       45 SETTABLEKS                       R5 R4 K9 ["testId"]
       47 CALL                             R2 2 -1
       48 RETURN                           R2 -1

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
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K9 ["PropertyRowTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Util"]
       34 GETTABLEKS                       R6 R6 K11 ["TestIds"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R2 K12 ["Checkbox"]
       39 GETTABLEKS                       R7 R3 K13 ["createElement"]
       41 DUPCLOSURE                       R8 K14 [PROTO_2]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 RETURN                           R8 1
