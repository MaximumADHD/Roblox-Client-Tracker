PROTO_0:
        0 DUPTABLE                         R2 K3 [{"debugInterface", "devtools", "rootToTarget"}]
        1 SETTABLEKS                       R0 R2 K0 ["debugInterface"]
        3 SETTABLEKS                       R1 R2 K1 ["devtools"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K2 ["rootToTarget"]
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateTargets"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["devtools"]
        2 GETTABLEKS                       R1 R1 K1 ["store"]
        4 LOADK                            R3 K2 ["roots"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R1 R1 K3 ["addListener"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["root"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOTEQKNIL                  R1 ; [+8]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["debugInterface"]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K2 ["removeTarget"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["debugInterface"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["devtools"]
       11 GETUPVAL                         R7 2
       12 CALL                             R2 5 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["getRendererIDForElement"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["devtools"]
        8 GETTABLEKS                       R4 R4 K2 ["hook"]
       10 GETTABLEKS                       R4 R4 K3 ["rendererInterfaces"]
       12 GETTABLE                         R3 R4 R2
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R3 K4 ["getDisplayNameForRoot"]
       16 CALL                             R4 2 1
       17 JUMPIFNOTEQKS                    R4 K5 ["Anonymous"] ; [+4]
       19 LOADK                            R5 K6 ["#"]
       20 MOVE                             R6 R1
       21 CONCAT                           R4 R5 R6
       22 GETUPVAL                         R6 2
       23 GETTABLE                         R5 R6 R1
       24 JUMPIF                           R5 ; [+11]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K7 ["debugInterface"]
       28 MOVE                             R7 R4
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R1
       33 NAMECALL                         R5 R5 K8 ["addTarget"]
       35 CALL                             R5 3 1
       36 MOVE                             R6 R1
       37 MOVE                             R7 R5
       38 RETURN                           R6 2

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["devtools"]
        2 GETTABLEKS                       R1 R1 K1 ["store"]
        4 NAMECALL                         R2 R1 K2 ["getRoots"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R0 K3 ["rootToTarget"]
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R4
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R0
       17 CALL                             R5 2 0
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R2
       20 NEWCLOSURE                       R7 P1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U3
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R0 K3 ["rootToTarget"]
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Roact17"]
       15 GETTABLEKS                       R3 R3 K6 ["types"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Roact17"]
       22 GETTABLEKS                       R4 R4 K7 ["Classes"]
       24 GETTABLEKS                       R4 R4 K8 ["Roact17Worker"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R1 K9 ["Dash"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K10 ["collect"]
       34 GETTABLEKS                       R6 R4 K11 ["collectSet"]
       36 GETTABLEKS                       R7 R4 K12 ["class"]
       38 GETTABLEKS                       R8 R4 K13 ["forEach"]
       40 MOVE                             R9 R7
       41 LOADK                            R10 K14 ["Roact17TargetWatcher"]
       42 DUPCLOSURE                       R11 K15 [PROTO_0]
       43 CALL                             R9 2 1
       44 DUPCLOSURE                       R10 K16 [PROTO_2]
       45 SETTABLEKS                       R10 R9 K17 ["_init"]
       47 DUPCLOSURE                       R10 K18 [PROTO_6]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R10 R9 K19 ["_updateTargets"]
       54 RETURN                           R9 1
