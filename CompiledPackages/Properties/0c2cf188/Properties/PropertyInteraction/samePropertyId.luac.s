PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["name"]
        3 GETTABLEKS                       R4 R1 K0 ["name"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+16]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["metaType"]
       10 GETTABLEKS                       R4 R1 K1 ["metaType"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+9]
       14 GETTABLEKS                       R3 R0 K2 ["className"]
       16 GETTABLEKS                       R4 R1 K2 ["className"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
