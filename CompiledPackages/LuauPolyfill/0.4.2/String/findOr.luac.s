PROTO_0:
        0 GETIMPORT                        R3 K2 [utf8.offset]
        2 MOVE                             R4 R0
        3 ORK                              R5 R2 K3 [1]
        4 CALL                             R3 2 1
        5 NEWTABLE                         R4 0 0
        7 MOVE                             R5 R1
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETUPVAL                         R12 0
       12 LOADK                            R13 K4 ["%%%1"]
       13 NAMECALL                         R10 R9 K5 ["gsub"]
       15 CALL                             R10 3 1
       16 MOVE                             R9 R10
       17 GETIMPORT                        R10 K8 [string.find]
       19 MOVE                             R11 R0
       20 MOVE                             R12 R9
       21 MOVE                             R13 R3
       22 CALL                             R10 3 2
       23 JUMPIFNOT                        R10 ; [+48]
       24 LOADN                            R14 1
       25 SUBK                             R15 R10 K3 [1]
       26 FASTCALL3                        STRING_SUB R0 R14 R15
       28 MOVE                             R13 R0
       29 GETIMPORT                        R12 K10 [string.sub]
       31 CALL                             R12 3 1
       32 GETIMPORT                        R13 K12 [utf8.len]
       34 MOVE                             R14 R12
       35 CALL                             R13 1 2
       36 JUMPIFNOTEQKNIL                  R13 ; [+14]
       38 GETIMPORT                        R15 K14 [error]
       40 LOADK                            R16 K15 ["string `%s` has an invalid byte at position %s"]
       41 MOVE                             R18 R12
       42 FASTCALL1                        TOSTRING R14 ; [+3]
       43 MOVE                             R20 R14
       44 GETIMPORT                        R19 K17 [tostring]
       46 CALL                             R19 1 1
       47 NAMECALL                         R16 R16 K18 ["format"]
       49 CALL                             R16 3 -1
       50 CALL                             R15 -1 0
       51 ADDK                             R15 R13 K3 [1]
       52 DUPTABLE                         R16 K21 [{"index", "match"}]
       53 SETTABLEKS                       R15 R16 K19 ["index"]
       55 FASTCALL3                        STRING_SUB R0 R10 R11
       57 MOVE                             R18 R0
       58 MOVE                             R19 R10
       59 MOVE                             R20 R11
       60 GETIMPORT                        R17 K10 [string.sub]
       62 CALL                             R17 3 1
       63 SETTABLEKS                       R17 R16 K20 ["match"]
       65 FASTCALL2                        TABLE_INSERT R4 R16 ; [+5]
       67 MOVE                             R18 R4
       68 MOVE                             R19 R16
       69 GETIMPORT                        R17 K24 [table.insert]
       71 CALL                             R17 2 0
       72 FORGLOOP                         R5 2 ; [-62]
       74 LENGTH                           R5 R4
       75 JUMPIFNOTEQKN                    R5 K25 [0] ; [+3]
       77 LOADNIL                          R5
       78 RETURN                           R5 1
       79 LOADNIL                          R5
       80 MOVE                             R6 R4
       81 LOADNIL                          R7
       82 LOADNIL                          R8
       83 FORGPREP                         R6
       84 JUMPIFNOTEQKNIL                  R5 ; [+2]
       86 MOVE                             R5 R10
       87 GETTABLEKS                       R11 R10 K19 ["index"]
       89 GETTABLEKS                       R12 R5 K19 ["index"]
       91 JUMPIFNOTLT                      R11 R12 ; [+2]
       93 MOVE                             R5 R10
       94 FORGLOOP                         R6 2 ; [-11]
       96 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["(["]
        2 LOADK                            R4 K1 ["$%^()-[].?"]
        3 LOADK                            R6 K2 ["(.)"]
        4 LOADK                            R7 K3 ["%%%1"]
        5 NAMECALL                         R4 R4 K4 ["gsub"]
        7 CALL                             R4 3 1
        8 MOVE                             R2 R4
        9 LOADK                            R3 K5 ["])"]
       10 CONCAT                           R0 R1 R3
       11 DUPCLOSURE                       R1 K6 [PROTO_0]
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1
