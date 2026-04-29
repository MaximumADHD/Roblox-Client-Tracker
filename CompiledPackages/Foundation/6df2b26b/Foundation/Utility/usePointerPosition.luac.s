PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Position"]
        2 GETTABLEKS                       R1 R2 K1 ["X"]
        4 LOADN                            R2 0
        5 JUMPIFLT                         R2 R1 ; [+8]
        7 GETTABLEKS                       R2 R0 K0 ["Position"]
        9 GETTABLEKS                       R1 R2 K2 ["Y"]
       11 LOADN                            R2 0
       12 JUMPIFNOTLT                      R2 R1 ; [+14]
       14 GETUPVAL                         R1 0
       15 GETIMPORT                        R2 K5 [Vector2.new]
       17 GETTABLEKS                       R4 R0 K0 ["Position"]
       19 GETTABLEKS                       R3 R4 K1 ["X"]
       21 GETTABLEKS                       R5 R0 K0 ["Position"]
       23 GETTABLEKS                       R4 R5 K2 ["Y"]
       25 CALL                             R2 2 -1
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["Disconnect"]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-6]
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R1 0 3
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K0 ["Connect"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K1 ["InputBegan"]
       13 MOVE                             R4 R0
       14 CALL                             R2 2 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K0 ["Connect"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K2 ["InputChanged"]
       21 MOVE                             R5 R0
       22 CALL                             R3 2 1
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K0 ["Connect"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K3 ["InputEnded"]
       29 MOVE                             R6 R0
       30 CALL                             R4 2 -1
       31 SETLIST                          R1 R2 -1 [1]
       33 NEWCLOSURE                       R2 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U3
       36 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 GETIMPORT                        R2 K3 [Vector2.zero]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R5 0 1
       16 MOVE                             R6 R0
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 0
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R5 K9 ["Wrappers"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["Signal"]
       23 GETTABLEKS                       R5 R3 K11 ["Connection"]
       25 DUPCLOSURE                       R6 K12 [PROTO_3]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R5
       29 RETURN                           R6 1
