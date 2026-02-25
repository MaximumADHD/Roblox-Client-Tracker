PROTO_0:
        0 LOADN                            R3 1
        1 LOADN                            R4 13
        2 FASTCALL3                        STRING_SUB R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [string.sub]
        7 CALL                             R1 3 1
        8 JUMPIFNOTEQKS                    R1 K3 ["rbxassetid://"] ; [+9]
       10 FASTCALL2K                       STRING_SUB R0 K4 ; [+5]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K4 [14]
       14 GETIMPORT                        R1 K2 [string.sub]
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 FASTCALL1                        TONUMBER R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K6 [tonumber]
       22 CALL                             R1 1 1
       23 LOADB                            R2 1
       24 JUMPIFEQKS                       R0 K7 [""] ; [+9]
       26 LOADB                            R2 0
       27 JUMPIFEQKNIL                     R1 ; [+6]
       29 LOADK                            R3 K8 [9.22337203685478E+18]
       30 JUMPIFLE                         R1 R3 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
