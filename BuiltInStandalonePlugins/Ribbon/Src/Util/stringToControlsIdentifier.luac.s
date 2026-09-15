PROTO_0:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["_"]
        4 CALL                             R1 2 1
        5 LOADB                            R3 0
        6 JUMPIFEQKNIL                     R1 ; [+6]
        8 LOADN                            R4 1
        9 JUMPIFLT                         R4 R1 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 LOADK                            R4 K4 ["Invalid stringified controls identifier %*"]
       14 MOVE                             R6 R0
       15 NAMECALL                         R4 R4 K5 ["format"]
       17 CALL                             R4 2 1
       18 FASTCALL2                        ASSERT R3 R4 ; [+3]
       20 GETIMPORT                        R2 K7 [assert]
       22 CALL                             R2 2 0
       23 LOADN                            R4 1
       24 SUBK                             R5 R1 K8 [1]
       25 FASTCALL3                        STRING_SUB R0 R4 R5
       27 MOVE                             R3 R0
       28 GETIMPORT                        R2 K10 [string.sub]
       30 CALL                             R2 3 1
       31 ADDK                             R5 R1 K8 [1]
       32 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
       34 MOVE                             R4 R0
       35 GETIMPORT                        R3 K10 [string.sub]
       37 CALL                             R3 2 1
       38 GETIMPORT                        R4 K13 [table.freeze]
       40 DUPTABLE                         R5 K16 [{"Type", "Filename"}]
       41 SETTABLEKS                       R2 R5 K14 ["Type"]
       43 SETTABLEKS                       R3 R5 K15 ["Filename"]
       45 CALL                             R4 1 -1
       46 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
