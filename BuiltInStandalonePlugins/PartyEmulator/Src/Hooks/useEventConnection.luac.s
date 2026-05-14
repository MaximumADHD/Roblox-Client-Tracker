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
        2 NAMECALL                         R0 R0 K0 ["Connect"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 NEWTABLE                         R6 0 2
       15 MOVE                             R7 R0
       16 MOVE                             R8 R3
       17 SETLIST                          R6 R7 2 [1]
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_3]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
