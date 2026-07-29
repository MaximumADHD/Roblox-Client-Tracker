PROTO_0:
        0 FASTCALL2K                       BIT32_BAND R0 K1 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K1 [65535]
        4 GETIMPORT                        R2 K4 [bit32.band]
        6 CALL                             R2 2 1
        7 MULK                             R1 R2 K0 [16777619]
        8 FASTCALL2K                       BIT32_RSHIFT R0 K5 ; [+5]
       10 MOVE                             R4 R0
       11 LOADK                            R5 K5 [16]
       12 GETIMPORT                        R3 K7 [bit32.rshift]
       14 CALL                             R3 2 1
       15 MULK                             R2 R3 K0 [16777619]
       16 FASTCALL2K                       BIT32_BAND R2 K1 ; [+5]
       18 MOVE                             R7 R2
       19 LOADK                            R8 K1 [65535]
       20 GETIMPORT                        R6 K4 [bit32.band]
       22 CALL                             R6 2 1
       23 FASTCALL2K                       BIT32_LSHIFT R6 K5 ; [+4]
       25 LOADK                            R7 K5 [16]
       26 GETIMPORT                        R5 K9 [bit32.lshift]
       28 CALL                             R5 2 1
       29 ADD                              R4 R1 R5
       30 FASTCALL2K                       BIT32_BAND R4 K10 ; [+4]
       32 LOADK                            R5 K10 [4294967295]
       33 GETIMPORT                        R3 K4 [bit32.band]
       35 CALL                             R3 2 1
       36 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R1 K0 [2166136261]
        1 LOADN                            R4 1
        2 LENGTH                           R2 R0
        3 LOADN                            R3 1
        4 FORNPREP                         R2
        5 MOVE                             R6 R1
        6 FASTCALL2                        STRING_BYTE R0 R4 ; [+5]
        8 MOVE                             R8 R0
        9 MOVE                             R9 R4
       10 GETIMPORT                        R7 K3 [string.byte]
       12 CALL                             R7 2 -1
       13 FASTCALL                         BIT32_BXOR ; [+2]
       14 GETIMPORT                        R5 K6 [bit32.bxor]
       16 CALL                             R5 -1 1
       17 FASTCALL2K                       BIT32_BAND R5 K8 ; [+5]
       19 MOVE                             R8 R5
       20 LOADK                            R9 K8 [65535]
       21 GETIMPORT                        R7 K10 [bit32.band]
       23 CALL                             R7 2 1
       24 MULK                             R6 R7 K7 [16777619]
       25 FASTCALL2K                       BIT32_RSHIFT R5 K11 ; [+5]
       27 MOVE                             R9 R5
       28 LOADK                            R10 K11 [16]
       29 GETIMPORT                        R8 K13 [bit32.rshift]
       31 CALL                             R8 2 1
       32 MULK                             R7 R8 K7 [16777619]
       33 FASTCALL2K                       BIT32_BAND R7 K8 ; [+5]
       35 MOVE                             R12 R7
       36 LOADK                            R13 K8 [65535]
       37 GETIMPORT                        R11 K10 [bit32.band]
       39 CALL                             R11 2 1
       40 FASTCALL2K                       BIT32_LSHIFT R11 K11 ; [+4]
       42 LOADK                            R12 K11 [16]
       43 GETIMPORT                        R10 K15 [bit32.lshift]
       45 CALL                             R10 2 1
       46 ADD                              R9 R6 R10
       47 FASTCALL2K                       BIT32_BAND R9 K16 ; [+4]
       49 LOADK                            R10 K16 [4294967295]
       50 GETIMPORT                        R8 K10 [bit32.band]
       52 CALL                             R8 2 1
       53 MOVE                             R1 R8
       54 FORNLOOP                         R2
       55 GETIMPORT                        R2 K18 [string.format]
       57 LOADK                            R3 K19 ["%08x"]
       58 MOVE                             R4 R1
       59 CALL                             R2 2 -1
       60 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["compute"]
        7 RETURN                           R0 1
