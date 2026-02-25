PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R1 2
        4 JUMPIFEQKNIL                     R1 ; [+4]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOTEQKN                    R1 K0 [0] ; [+5]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R1 K3 [task.delay]
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R0
       17 CALL                             R1 2 1
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useState"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["useLayoutEffect"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R6 0 2
       14 MOVE                             R7 R0
       15 MOVE                             R8 R1
       16 SETLIST                          R6 R7 2 [1]
       18 CALL                             R4 2 0
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_3]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
