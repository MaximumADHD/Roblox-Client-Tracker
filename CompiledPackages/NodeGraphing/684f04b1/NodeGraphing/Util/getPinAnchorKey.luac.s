PROTO_0:
        0 JUMPIFEQKNIL                     R3 ; [+11]
        2 LOADK                            R5 K0 ["anchor_%*_%*_%*_%*"]
        3 MOVE                             R7 R0
        4 MOVE                             R8 R1
        5 MOVE                             R9 R2
        6 MOVE                             R10 R3
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 5 1
       10 MOVE                             R4 R5
       11 RETURN                           R4 1
       12 LOADK                            R5 K2 ["anchor_%*_%*_%*"]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R1
       15 MOVE                             R9 R2
       16 NAMECALL                         R5 R5 K1 ["format"]
       18 CALL                             R5 4 1
       19 MOVE                             R4 R5
       20 RETURN                           R4 1

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
