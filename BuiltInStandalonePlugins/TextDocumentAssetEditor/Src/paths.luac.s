PROTO_0:
        0 LOADN                            R2 97
        1 JUMPIFNOTLE                      R2 R0 ; [+5]
        3 LOADB                            R1 1
        4 LOADN                            R2 122
        5 JUMPIFLE                         R0 R2 ; [+15]
        7 LOADN                            R2 48
        8 JUMPIFNOTLE                      R2 R0 ; [+5]
       10 LOADB                            R1 1
       11 LOADN                            R2 57
       12 JUMPIFLE                         R0 R2 ; [+8]
       14 LOADB                            R1 1
       15 JUMPIFEQKN                       R0 K0 [95] ; [+5]
       17 JUMPIFEQKN                       R0 K1 [45] ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKS                       R0 K0 [""] ; [+18]
        2 LENGTH                           R1 R0
        3 LOADN                            R2 1024
        4 JUMPIFLT                         R2 R1 ; [+14]
        6 LOADN                            R3 1
        7 LOADN                            R4 1
        8 NAMECALL                         R1 R0 K1 ["sub"]
       10 CALL                             R1 3 1
       11 JUMPIFNOTEQKS                    R1 K2 ["/"] ; [+7]
       13 LOADN                            R3 -1
       14 NAMECALL                         R1 R0 K1 ["sub"]
       16 CALL                             R1 2 1
       17 JUMPIFNOTEQKS                    R1 K2 ["/"] ; [+3]
       19 LOADB                            R1 0
       20 RETURN                           R1 1
       21 LOADK                            R3 K3 ["[^/]+"]
       22 NAMECALL                         R1 R0 K4 ["gmatch"]
       24 CALL                             R1 2 3
       25 FORGPREP                         R1
       26 LENGTH                           R6 R4
       27 LOADN                            R7 255
       28 JUMPIFLT                         R7 R6 ; [+5]
       30 JUMPIFEQKS                       R4 K5 ["."] ; [+3]
       32 JUMPIFNOTEQKS                    R4 K6 [".."] ; [+3]
       34 LOADB                            R6 0
       35 RETURN                           R6 1
       36 LOADN                            R8 1
       37 LENGTH                           R6 R4
       38 LOADN                            R7 1
       39 FORNPREP                         R6
       40 FASTCALL2                        STRING_BYTE R4 R8 ; [+5]
       42 MOVE                             R11 R4
       43 MOVE                             R12 R8
       44 GETIMPORT                        R10 K9 [string.byte]
       46 CALL                             R10 2 1
       47 LOADN                            R11 97
       48 JUMPIFNOTLE                      R11 R10 ; [+5]
       50 LOADB                            R9 1
       51 LOADN                            R11 122
       52 JUMPIFLE                         R10 R11 ; [+15]
       54 LOADN                            R11 48
       55 JUMPIFNOTLE                      R11 R10 ; [+5]
       57 LOADB                            R9 1
       58 LOADN                            R11 57
       59 JUMPIFLE                         R10 R11 ; [+8]
       61 LOADB                            R9 1
       62 JUMPIFEQKN                       R10 K10 [95] ; [+5]
       64 JUMPIFEQKN                       R10 K11 [45] ; [+2]
       66 LOADB                            R9 0 +1
       67 LOADB                            R9 1
       68 JUMPIF                           R9 ; [+2]
       69 LOADB                            R9 0
       70 RETURN                           R9 1
       71 FORNLOOP                         R6
       72 FORGLOOP                         R1 1 ; [-47]
       74 LOADK                            R4 K12 ["//"]
       75 LOADN                            R5 1
       76 LOADB                            R6 1
       77 NAMECALL                         R2 R0 K13 ["find"]
       79 CALL                             R2 4 1
       80 NOT                              R1 R2
       81 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R4 K1 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R2 R0 K2 ["match"]
        3 CALL                             R2 2 1
        4 ORK                              R1 R2 K0 [""]
        5 NAMECALL                         R1 R1 K3 ["lower"]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
       10 LOADK                            R2 K0 [""]
       11 RETURN                           R2 1
       12 LOADN                            R4 1
       13 LOADN                            R5 1
       14 NAMECALL                         R2 R1 K4 ["sub"]
       16 CALL                             R2 3 1
       17 JUMPIFEQKS                       R2 K5 ["/"] ; [+4]
       19 LOADK                            R2 K5 ["/"]
       20 MOVE                             R3 R1
       21 CONCAT                           R1 R2 R3
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["isValid"]
        7 DUPCLOSURE                       R2 K3 [PROTO_2]
        8 SETTABLEKS                       R2 R0 K4 ["normalize"]
       10 RETURN                           R0 1
