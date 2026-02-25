PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["note"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["note"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnToolChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 2
        9 JUMPIF                           R1 ; [+3]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R1 R2 K2 ["OnNoteChanged"]
       16 NEWCLOSURE                       R3 P2
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U3
       19 NAMECALL                         R1 R1 K1 ["Connect"]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R1 2
        4 NAMECALL                         R1 R1 K0 ["note"]
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["getTool"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R4 R2 K1 ["note"]
        6 CALL                             R4 1 -1
        7 CALL                             R3 -1 2
        8 GETUPVAL                         R5 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R4
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R7 0 2
       16 MOVE                             R8 R2
       17 MOVE                             R9 R1
       18 SETLIST                          R7 R8 2 [1]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R5 1
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R1
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 0
       32 RETURN                           R3 1

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
       18 DUPCLOSURE                       R4 K10 [PROTO_6]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
