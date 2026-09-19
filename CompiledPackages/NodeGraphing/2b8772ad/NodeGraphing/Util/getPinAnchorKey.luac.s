PROTO_0:
        0 JUMPIFEQKNIL                     R3 ; [+10]
        2 LOADK                            R4 K0 ["anchor_%*_%*_%*_%*"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 NAMECALL                         R4 R4 K1 ["format"]
        9 CALL                             R4 5 1
       10 RETURN                           R4 1
       11 LOADK                            R4 K2 ["anchor_%*_%*_%*"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 NAMECALL                         R4 R4 K1 ["format"]
       17 CALL                             R4 4 1
       18 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
