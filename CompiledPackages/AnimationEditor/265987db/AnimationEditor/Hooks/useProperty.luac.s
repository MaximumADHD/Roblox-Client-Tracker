PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 GETTABLE                         R0 R1 R2
        8 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 NEWCLOSURE                       R0 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U3
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R3 4
       13 NAMECALL                         R1 R1 K0 ["GetPropertyChangedSignal"]
       15 CALL                             R1 2 1
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K1 ["Connect"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 3
       22 CALL                             R2 1 0
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R1
       25 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useCallback"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R5 0 2
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 SETLIST                          R5 R6 2 [1]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K1 ["useState"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 2
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K2 ["useEffect"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 NEWTABLE                         R8 0 2
       30 MOVE                             R9 R0
       31 MOVE                             R10 R1
       32 SETLIST                          R8 R9 2 [1]
       34 CALL                             R6 2 0
       35 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_4]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
