PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["OnInvokeSuspendOverride"]
        5 CALL                             R0 3 1
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["ContextServices"]
        3 GETTABLEKS                       R3 R4 K1 ["Plugin"]
        5 NAMECALL                         R3 R3 K2 ["use"]
        7 CALL                             R3 1 1
        8 NAMECALL                         R3 R3 K3 ["get"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K4 ["useMemo"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R1
       16 MOVE                             R6 R2
       17 CALL                             R4 2 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 3
       27 MOVE                             R8 R3
       28 MOVE                             R9 R0
       29 MOVE                             R10 R4
       30 SETLIST                          R7 R8 3 [1]
       32 CALL                             R5 2 0
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_3]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
