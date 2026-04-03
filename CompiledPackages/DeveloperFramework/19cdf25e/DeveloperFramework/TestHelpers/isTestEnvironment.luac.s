PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TestFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 LOADK                            R3 K2 ["IsTestEnvironment"]
        7 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 JUMPIFNOT                        R1 ; [+8]
       13 LOADK                            R5 K3 ["BoolValue"]
       14 NAMECALL                         R3 R1 K4 ["IsA"]
       16 CALL                             R3 2 1
       17 JUMPIFNOT                        R3 ; [+3]
       18 GETTABLEKS                       R2 R1 K5 ["Value"]
       20 RETURN                           R2 1
       21 LOADB                            R2 0
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["TestHelpers"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 DUPCLOSURE                       R1 K5 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1
