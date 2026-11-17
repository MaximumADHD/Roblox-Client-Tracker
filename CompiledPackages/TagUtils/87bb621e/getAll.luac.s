PROTO_0:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       13 LOADK                            R3 K4 ["getAll should receive at least one tag"]
       14 GETIMPORT                        R1 K6 [assert]
       16 CALL                             R1 2 0
       17 GETVARARGS                       R1 1
       18 JUMPIFNOTEQKN                    R0 K7 [1] ; [+7]
       20 GETUPVAL                         R2 0
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R2 K8 ["GetTagged"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
       26 NEWTABLE                         R2 0 0
       28 GETIMPORT                        R3 K10 [ipairs]
       30 GETUPVAL                         R4 0
       31 MOVE                             R6 R1
       32 NAMECALL                         R4 R4 K8 ["GetTagged"]
       34 CALL                             R4 2 -1
       35 CALL                             R3 -1 3
       36 FORGPREP_INEXT                   R3
       37 LOADB                            R8 1
       38 LOADN                            R11 2
       39 MOVE                             R9 R0
       40 LOADN                            R10 1
       41 FORNPREP                         R9
       42 FASTCALL1                        SELECT_VARARG R11 ; [+4]
       43 GETIMPORT                        R12 K2 [select]
       45 MOVE                             R13 R11
       46 GETVARARGS                       R14 -1
       47 CALL                             R12 -1 1
       48 GETUPVAL                         R13 0
       49 MOVE                             R15 R7
       50 MOVE                             R16 R12
       51 NAMECALL                         R13 R13 K11 ["HasTag"]
       53 CALL                             R13 3 1
       54 JUMPIF                           R13 ; [+2]
       55 LOADB                            R8 0
       56 JUMP                             ; [+1]
       57 FORNLOOP                         R9
       58 JUMPIFNOT                        R8 ; [+7]
       59 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       61 MOVE                             R10 R2
       62 MOVE                             R11 R7
       63 GETIMPORT                        R9 K14 [table.insert]
       65 CALL                             R9 2 0
       66 FORGLOOP                         R3 2 [inext] ; [-30]
       68 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
