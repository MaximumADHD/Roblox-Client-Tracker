PROTO_0:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["filter"]
        7 MOVE                             R2 R0
        8 DUPCLOSURE                       R3 K2 [PROTO_0]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["Selection"]
        5 NAMECALL                         R1 R0 K2 ["getService"]
        7 CALL                             R1 2 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["useState"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R6 R1 K4 ["SelectionChanged"]
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R8 0 0
       24 CALL                             R5 3 0
       25 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["MaterialFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["useEventConnection"]
       37 GETTABLEKS                       R7 R2 K12 ["Context"]
       39 GETTABLEKS                       R6 R7 K13 ["StudioServices"]
       41 DUPCLOSURE                       R7 K14 [PROTO_3]
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 RETURN                           R7 1
