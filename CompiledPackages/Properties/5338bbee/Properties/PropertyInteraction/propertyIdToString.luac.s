PROTO_0:
        0 LOADK                            R2 K0 ["%*: %*"]
        1 GETTABLEKS                       R4 R0 K1 ["metaType"]
        3 GETTABLEKS                       R5 R0 K2 ["name"]
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 GETTABLEKS                       R2 R0 K1 ["metaType"]
       11 JUMPIFEQKS                       R2 K4 ["Property"] ; [+5]
       13 GETTABLEKS                       R2 R0 K1 ["metaType"]
       15 JUMPIFNOTEQKS                    R2 K5 ["Virtual"] ; [+10]
       17 MOVE                             R2 R1
       18 LOADK                            R4 K6 [" on %*"]
       19 GETTABLEKS                       R6 R0 K7 ["className"]
       21 NAMECALL                         R4 R4 K3 ["format"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 CONCAT                           R1 R2 R3
       26 RETURN                           R1 1

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
