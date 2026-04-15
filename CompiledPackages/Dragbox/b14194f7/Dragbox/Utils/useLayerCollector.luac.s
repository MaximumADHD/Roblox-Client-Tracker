PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["LayerCollector"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Disconnect"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["Connect"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["AncestryChanged"]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1
       16 LOADNIL                          R0
       17 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K2 ["useEffect"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R0
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 0
       32 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dragbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Utils"]
       18 GETTABLEKS                       R4 R5 K9 ["Wrappers"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["Signal"]
       23 GETTABLEKS                       R5 R3 K11 ["Connection"]
       25 DUPCLOSURE                       R6 K12 [PROTO_0]
       26 DUPCLOSURE                       R7 K13 [PROTO_4]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R6
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 RETURN                           R7 1
