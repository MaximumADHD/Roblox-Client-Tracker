PROTO_0:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 9
        2 JUMPIFNOTLT                      R1 R2 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 0
        7 JUMPIFNOT                        R2 ; [+6]
        8 LOADN                            R2 16
        9 JUMPIFNOTLT                      R2 R1 ; [+9]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 JUMP                             ; [+5]
       14 LOADN                            R2 12
       15 JUMPIFNOTLT                      R2 R1 ; [+3]
       17 LOADB                            R2 0
       18 RETURN                           R2 1
       19 LOADN                            R4 1
       20 LOADN                            R5 1
       21 FASTCALL3                        STRING_SUB R0 R4 R5
       23 MOVE                             R3 R0
       24 GETIMPORT                        R2 K2 [string.sub]
       26 CALL                             R2 3 1
       27 GETIMPORT                        R3 K4 [string.find]
       29 MOVE                             R4 R0
       30 LOADK                            R6 K5 ["[^"]
       31 MOVE                             R7 R2
       32 LOADK                            R8 K6 ["]"]
       33 CONCAT                           R5 R6 R8
       34 CALL                             R3 2 1
       35 JUMPIF                           R3 ; [+2]
       36 LOADB                            R3 0
       37 RETURN                           R3 1
       38 LOADN                            R3 0
       39 LOADN                            R4 1
       40 GETIMPORT                        R5 K4 [string.find]
       42 MOVE                             R6 R0
       43 LOADK                            R7 K7 ["0"]
       44 MOVE                             R8 R4
       45 LOADB                            R9 1
       46 CALL                             R5 4 1
       47 MOVE                             R4 R5
       48 JUMPIFNOT                        R4 ; [+5]
       49 ADDK                             R3 R3 K8 [1]
       50 ADDK                             R4 R4 K8 [1]
       51 JUMP                             ; [+1]
       52 JUMP                             ; [+1]
       53 JUMPBACK                         ; [-14]
       54 DIV                              R6 R3 R1
       55 LOADK                            R7 K9 [0.5]
       56 JUMPIFLE                         R6 R7 ; [+2]
       58 LOADB                            R5 0 +1
       59 LOADB                            R5 1
       60 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AudioDiscoveryHandleRandomAssetIds"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 DUPCLOSURE                       R1 K4 [PROTO_0]
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1
