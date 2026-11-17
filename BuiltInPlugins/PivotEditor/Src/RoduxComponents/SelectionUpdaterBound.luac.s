PROTO_0:
        0 DUPTABLE                         R2 K1 [{"targetObject"}]
        1 GETTABLEKS                       R3 R0 K0 ["targetObject"]
        3 SETTABLEKS                       R3 R2 K0 ["targetObject"]
        5 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"selectObjectForEditing", "selectInvalidSelection"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["selectObjectForEditing"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["selectInvalidSelection"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["RoactRodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["SelectObjectForEditing"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Actions"]
       31 GETTABLEKS                       R4 R4 K10 ["SelectInvalidSelection"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Components"]
       40 GETTABLEKS                       R5 R5 K12 ["SelectionUpdater"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K13 [PROTO_0]
       44 DUPCLOSURE                       R6 K14 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 GETTABLEKS                       R7 R1 K15 ["connect"]
       49 MOVE                             R8 R5
       50 MOVE                             R9 R6
       51 CALL                             R7 2 1
       52 MOVE                             R8 R4
       53 CALL                             R7 1 -1
       54 RETURN                           R7 -1
