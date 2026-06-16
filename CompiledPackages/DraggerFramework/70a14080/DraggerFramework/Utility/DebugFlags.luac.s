PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DraggerFrameworkFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 GETUPVAL                         R1 2
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 1
       14 GETTABLE                         R1 R0 R2
       15 GETTABLEKS                       R1 R1 K2 ["Value"]
       17 RETURN                           R1 1

PROTO_1:
        0 ORK                              R2 R1 K0 [False]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 DUPTABLE                         R2 K6 [{"LogAnalytics"}]
       10 LOADK                            R4 K5 ["LogAnalytics"]
       11 LOADB                            R5 0
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R5
       16 SETTABLEKS                       R3 R2 K5 ["LogAnalytics"]
       18 RETURN                           R2 1
