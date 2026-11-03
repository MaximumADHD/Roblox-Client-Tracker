PROTO_0:
        0 LOADK                            R1 K0 ["%*: %*"]
        1 GETTABLEKS                       R3 R0 K1 ["metaType"]
        3 GETTABLEKS                       R4 R0 K2 ["name"]
        5 NAMECALL                         R1 R1 K3 ["format"]
        7 CALL                             R1 3 1
        8 GETTABLEKS                       R2 R0 K1 ["metaType"]
       10 JUMPIFEQKS                       R2 K4 ["Property"] ; [+5]
       12 GETTABLEKS                       R2 R0 K1 ["metaType"]
       14 JUMPIFNOTEQKS                    R2 K5 ["Virtual"] ; [+9]
       16 MOVE                             R2 R1
       17 LOADK                            R3 K6 [" on %*"]
       18 GETTABLEKS                       R5 R0 K7 ["className"]
       20 NAMECALL                         R3 R3 K3 ["format"]
       22 CALL                             R3 2 1
       23 CONCAT                           R1 R2 R3
       24 RETURN                           R1 1

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
