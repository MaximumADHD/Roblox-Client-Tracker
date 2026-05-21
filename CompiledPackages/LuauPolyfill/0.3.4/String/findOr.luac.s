PROTO_0:
        0 GETIMPORT                        R3 K2 [utf8.offset]
        2 MOVE                             R4 R0
        3 ORK                              R5 R2 K3 [1]
        4 CALL                             R3 2 1
        5 NEWTABLE                         R4 0 0
        7 GETIMPORT                        R5 K5 [ipairs]
        9 MOVE                             R6 R1
       10 CALL                             R5 1 3
       11 FORGPREP_INEXT                   R5
       12 GETIMPORT                        R10 K8 [string.find]
       14 MOVE                             R11 R0
       15 MOVE                             R12 R9
       16 MOVE                             R13 R3
       17 CALL                             R10 3 2
       18 JUMPIFNOT                        R10 ; [+48]
       19 LOADN                            R14 1
       20 SUBK                             R15 R10 K3 [1]
       21 FASTCALL3                        STRING_SUB R0 R14 R15
       23 MOVE                             R13 R0
       24 GETIMPORT                        R12 K10 [string.sub]
       26 CALL                             R12 3 1
       27 GETIMPORT                        R13 K12 [utf8.len]
       29 MOVE                             R14 R12
       30 CALL                             R13 1 2
       31 JUMPIFNOTEQKNIL                  R13 ; [+14]
       33 GETIMPORT                        R15 K14 [error]
       35 LOADK                            R16 K15 ["string `%s` has an invalid byte at position %s"]
       36 MOVE                             R18 R12
       37 FASTCALL1                        TOSTRING R14 ; [+3]
       38 MOVE                             R20 R14
       39 GETIMPORT                        R19 K17 [tostring]
       41 CALL                             R19 1 1
       42 NAMECALL                         R16 R16 K18 ["format"]
       44 CALL                             R16 3 -1
       45 CALL                             R15 -1 0
       46 ADDK                             R15 R13 K3 [1]
       47 DUPTABLE                         R16 K21 [{"index", "match"}]
       48 SETTABLEKS                       R15 R16 K19 ["index"]
       50 FASTCALL3                        STRING_SUB R0 R10 R11
       52 MOVE                             R18 R0
       53 MOVE                             R19 R10
       54 MOVE                             R20 R11
       55 GETIMPORT                        R17 K10 [string.sub]
       57 CALL                             R17 3 1
       58 SETTABLEKS                       R17 R16 K20 ["match"]
       60 FASTCALL2                        TABLE_INSERT R4 R16 ; [+5]
       62 MOVE                             R18 R4
       63 MOVE                             R19 R16
       64 GETIMPORT                        R17 K24 [table.insert]
       66 CALL                             R17 2 0
       67 FORGLOOP                         R5 2 [inext] ; [-56]
       69 LENGTH                           R5 R4
       70 JUMPIFNOTEQKN                    R5 K25 [0] ; [+3]
       72 LOADNIL                          R5
       73 RETURN                           R5 1
       74 LOADNIL                          R5
       75 GETIMPORT                        R6 K5 [ipairs]
       77 MOVE                             R7 R4
       78 CALL                             R6 1 3
       79 FORGPREP_INEXT                   R6
       80 JUMPIFNOTEQKNIL                  R5 ; [+2]
       82 MOVE                             R5 R10
       83 GETTABLEKS                       R11 R10 K19 ["index"]
       85 GETTABLEKS                       R12 R5 K19 ["index"]
       87 JUMPIFNOTLT                      R11 R12 ; [+2]
       89 MOVE                             R5 R10
       90 FORGLOOP                         R6 2 [inext] ; [-11]
       92 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
