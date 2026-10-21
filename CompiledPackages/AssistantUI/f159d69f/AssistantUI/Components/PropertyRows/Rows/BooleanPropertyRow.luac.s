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
       12 GETTABLEKS                       R2 R0 K2 ["definition"]
       14 GETTABLEKS                       R4 R2 K3 ["type"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K4 ["ROW_TYPES"]
       19 GETTABLEKS                       R5 R5 K5 ["LabeledBoolean"]
       21 JUMPIFNOTEQ                      R4 R5 ; [+4]
       23 GETTABLEKS                       R3 R2 K6 ["label"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R3
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R5 3
       29 DUPTABLE                         R6 K13 [{"label", "size", "isChecked", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
       30 ORK                              R7 R3 K14 [""]
       31 SETTABLEKS                       R7 R6 K6 ["label"]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K15 ["Enums"]
       36 GETTABLEKS                       R7 R7 K16 ["InputSize"]
       38 GETTABLEKS                       R7 R7 K17 ["Small"]
       40 SETTABLEKS                       R7 R6 K7 ["size"]
       42 GETTABLEKS                       R8 R0 K19 ["value"]
       44 ORK                              R7 R8 K18 [False]
       45 SETTABLEKS                       R7 R6 K8 ["isChecked"]
       47 GETTABLEKS                       R8 R0 K20 ["interactable"]
       49 NOT                              R7 R8
       50 SETTABLEKS                       R7 R6 K9 ["isDisabled"]
       52 SETTABLEKS                       R1 R6 K10 ["onActivated"]
       54 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       56 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R7 R7 K21 ["SegmentationPropertyRow"]
       61 GETTABLEKS                       R7 R7 K22 ["BooleanCheckbox"]
       63 SETTABLEKS                       R7 R6 K12 ["testId"]
       65 CALL                             R4 2 -1
       66 RETURN                           R4 -1

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
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 RETURN                           R8 1
