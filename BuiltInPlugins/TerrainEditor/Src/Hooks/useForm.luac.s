PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["form"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["form"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["form"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["form"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnToolChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K2 ["OnGizmoChanged"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K3 ["OnInternalsChanged"]
       20 NEWCLOSURE                       R4 P2
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 NAMECALL                         R2 R2 K1 ["Connect"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R3 R4 K4 ["OnShortcutChanged"]
       29 NEWCLOSURE                       R5 P3
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 NAMECALL                         R3 R3 K1 ["Connect"]
       34 CALL                             R3 2 1
       35 NEWCLOSURE                       R4 P4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getTool"]
        3 CALL                             R1 1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K1 ["saveForm"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 NAMECALL                         R2 R2 K2 ["form"]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["getTool"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R3 R1 K1 ["form"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 2
        8 GETUPVAL                         R4 1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R6 0 1
       15 MOVE                             R7 R1
       16 SETLIST                          R6 R7 1 [1]
       18 CALL                             R4 2 0
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R1
       23 MOVE                             R5 R2
       24 MOVE                             R6 R4
       25 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 DUPCLOSURE                       R4 K10 [PROTO_7]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
