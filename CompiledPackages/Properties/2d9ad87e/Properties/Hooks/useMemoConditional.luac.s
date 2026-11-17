PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 GETUPVAL                         R2 2
        6 JUMPIFEQ                         R1 R2 ; [+12]
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 MOVE                             R3 R0
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+4]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K0 ["current"]
       18 RETURN                           R1 1
       19 GETUPVAL                         R1 1
       20 SETTABLEKS                       R0 R1 K0 ["current"]
       22 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useRef"]
        3 GETUPVAL                         R4 1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useMemo"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 MOVE                             R6 R2
       14 CALL                             R4 2 -1
       15 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 0
       16 DUPCLOSURE                       R3 K8 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 RETURN                           R3 1
