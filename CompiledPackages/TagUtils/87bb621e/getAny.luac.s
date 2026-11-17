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
       13 LOADK                            R3 K4 ["getAny should receive at least one tag"]
       14 GETIMPORT                        R1 K6 [assert]
       16 CALL                             R1 2 0
       17 JUMPIFNOTEQKN                    R0 K7 [1] ; [+8]
       19 GETVARARGS                       R1 1
       20 GETUPVAL                         R2 0
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R2 K8 ["GetTagged"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
       26 NEWTABLE                         R1 0 0
       28 NEWTABLE                         R2 0 0
       30 LOADN                            R5 1
       31 MOVE                             R3 R0
       32 LOADN                            R4 1
       33 FORNPREP                         R3
       34 FASTCALL1                        SELECT_VARARG R5 ; [+4]
       35 GETIMPORT                        R6 K2 [select]
       37 MOVE                             R7 R5
       38 GETVARARGS                       R8 -1
       39 CALL                             R6 -1 1
       40 GETIMPORT                        R7 K10 [ipairs]
       42 GETUPVAL                         R8 0
       43 MOVE                             R10 R6
       44 NAMECALL                         R8 R8 K8 ["GetTagged"]
       46 CALL                             R8 2 -1
       47 CALL                             R7 -1 3
       48 FORGPREP_INEXT                   R7
       49 GETTABLE                         R12 R1 R11
       50 JUMPIF                           R12 ; [+9]
       51 LOADB                            R12 1
       52 SETTABLE                         R12 R1 R11
       53 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
       55 MOVE                             R13 R2
       56 MOVE                             R14 R11
       57 GETIMPORT                        R12 K13 [table.insert]
       59 CALL                             R12 2 0
       60 FORGLOOP                         R7 2 [inext] ; [-12]
       62 FORNLOOP                         R3
       63 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
