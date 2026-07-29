PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPart"]
        3 LOADK                            R2 K1 ["value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["finishEditing"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["parts"]
        2 GETTABLEKS                       R1 R1 K1 ["value"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
        9 GETTABLEKS                       R3 R0 K1 ["getInfo"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K3 ["readonly"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R0 K5 ["setPart"]
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R6 0 1
       33 GETTABLEKS                       R7 R0 K6 ["beginEditingAsync"]
       35 SETLIST                          R6 R7 1 [1]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       41 NEWCLOSURE                       R6 P2
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R7 0 1
       45 GETTABLEKS                       R8 R0 K7 ["finishEditing"]
       47 SETLIST                          R7 R8 1 [1]
       49 CALL                             R5 2 1
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K8 ["createElement"]
       53 GETUPVAL                         R7 2
       54 DUPTABLE                         R8 K13 [{"propertyPart", "readonly", "onEditStart", "onChange", "onEditFinish"}]
       55 DUPCLOSURE                       R11 K14 [PROTO_3]
       56 NAMECALL                         R9 R1 K15 ["map"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K9 ["propertyPart"]
       61 SETTABLEKS                       R2 R8 K3 ["readonly"]
       63 SETTABLEKS                       R4 R8 K10 ["onEditStart"]
       65 SETTABLEKS                       R3 R8 K11 ["onChange"]
       67 SETTABLEKS                       R5 R8 K12 ["onEditFinish"]
       69 CALL                             R6 2 -1
       70 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["PropertyEditorTypes"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["SignalsReact"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["Number"]
       32 GETTABLEKS                       R6 R6 K13 ["SingleNumberInput"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K14 [PROTO_4]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 GETTABLEKS                       R7 R3 K15 ["memo"]
       41 MOVE                             R8 R6
       42 CALL                             R7 1 -1
       43 RETURN                           R7 -1
