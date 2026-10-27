PROTO_0:
        0 JUMPIFEQKNIL                     R4 ; [+9]
        2 LOADK                            R5 K0 ["anchor_%*_%*_input_%*"]
        3 MOVE                             R7 R0
        4 MOVE                             R8 R1
        5 MOVE                             R9 R4
        6 NAMECALL                         R5 R5 K1 ["format"]
        8 CALL                             R5 4 1
        9 RETURN                           R5 1
       10 JUMPIFEQKNIL                     R3 ; [+10]
       12 LOADK                            R5 K2 ["anchor_%*_%*_%*_%*"]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R1
       15 MOVE                             R9 R2
       16 MOVE                             R10 R3
       17 NAMECALL                         R5 R5 K1 ["format"]
       19 CALL                             R5 5 1
       20 RETURN                           R5 1
       21 LOADK                            R5 K3 ["anchor_%*_%*_%*"]
       22 MOVE                             R7 R0
       23 MOVE                             R8 R1
       24 MOVE                             R9 R2
       25 NAMECALL                         R5 R5 K1 ["format"]
       27 CALL                             R5 4 1
       28 RETURN                           R5 1

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
