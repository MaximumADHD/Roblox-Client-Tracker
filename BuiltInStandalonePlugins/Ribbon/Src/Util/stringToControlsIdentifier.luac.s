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
       13 LOADK                            R5 K4 ["Invalid stringified controls identifier %*"]
       14 MOVE                             R7 R0
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 FASTCALL2                        ASSERT R3 R4 ; [+3]
       21 GETIMPORT                        R2 K7 [assert]
       23 CALL                             R2 2 0
       24 LOADN                            R4 1
       25 SUBK                             R5 R1 K8 [1]
       26 FASTCALL3                        STRING_SUB R0 R4 R5
       28 MOVE                             R3 R0
       29 GETIMPORT                        R2 K10 [string.sub]
       31 CALL                             R2 3 1
       32 ADDK                             R5 R1 K8 [1]
       33 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
       35 MOVE                             R4 R0
       36 GETIMPORT                        R3 K10 [string.sub]
       38 CALL                             R3 2 1
       39 GETIMPORT                        R4 K13 [table.freeze]
       41 DUPTABLE                         R5 K16 [{"Type", "Filename"}]
       42 SETTABLEKS                       R2 R5 K14 ["Type"]
       44 SETTABLEKS                       R3 R5 K15 ["Filename"]
       46 CALL                             R4 1 -1
       47 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
