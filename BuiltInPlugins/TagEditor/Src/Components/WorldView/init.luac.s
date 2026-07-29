PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"partsList", "tags"}]
        5 SETTABLEKS                       R0 R3 K1 ["partsList"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["tags"]
       10 SETTABLEKS                       R4 R3 K2 ["tags"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K3 [{"render"}]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R4 R3 K2 ["render"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1
       16 LOADNIL                          R1
       17 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"enabled", "tags"}]
        1 GETTABLEKS                       R2 R0 K3 ["WorldView"]
        3 SETTABLEKS                       R2 R1 K0 ["enabled"]
        5 GETTABLEKS                       R2 R0 K4 ["TagData"]
        7 SETTABLEKS                       R2 R1 K1 ["tags"]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K8 ["WorldVisual"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["WorldProvider"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K10 [PROTO_1]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 DUPCLOSURE                       R6 K11 [PROTO_2]
       42 GETTABLEKS                       R7 R2 K12 ["connect"]
       44 MOVE                             R8 R6
       45 CALL                             R7 1 1
       46 MOVE                             R8 R5
       47 CALL                             R7 1 1
       48 MOVE                             R5 R7
       49 RETURN                           R5 1
