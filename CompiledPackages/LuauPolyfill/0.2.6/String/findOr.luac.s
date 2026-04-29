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
       18 JUMPIFNOT                        R10 ; [+43]
       19 LOADN                            R14 1
       20 SUBK                             R15 R10 K3 [1]
       21 FASTCALL3                        STRING_SUB R0 R14 R15
       23 MOVE                             R13 R0
       24 GETIMPORT                        R12 K10 [string.sub]
       26 CALL                             R12 3 1
       27 GETIMPORT                        R13 K12 [utf8.len]
       29 MOVE                             R14 R12
       30 CALL                             R13 1 2
       31 JUMPIF                           R13 ; [+9]
       32 GETIMPORT                        R15 K14 [error]
       34 LOADK                            R16 K15 ["string `%s` has an invalid byte at position %d"]
       35 MOVE                             R18 R12
       36 MOVE                             R19 R14
       37 NAMECALL                         R16 R16 K16 ["format"]
       39 CALL                             R16 3 -1
       40 CALL                             R15 -1 0
       41 ADDK                             R15 R13 K3 [1]
       42 DUPTABLE                         R16 K19 [{"index", "match"}]
       43 SETTABLEKS                       R15 R16 K17 ["index"]
       45 FASTCALL3                        STRING_SUB R0 R10 R11
       47 MOVE                             R18 R0
       48 MOVE                             R19 R10
       49 MOVE                             R20 R11
       50 GETIMPORT                        R17 K10 [string.sub]
       52 CALL                             R17 3 1
       53 SETTABLEKS                       R17 R16 K18 ["match"]
       55 FASTCALL2                        TABLE_INSERT R4 R16 ; [+5]
       57 MOVE                             R18 R4
       58 MOVE                             R19 R16
       59 GETIMPORT                        R17 K22 [table.insert]
       61 CALL                             R17 2 0
       62 FORGLOOP                         R5 2 [inext] ; [-51]
       64 LENGTH                           R5 R4
       65 JUMPIFNOTEQKN                    R5 K23 [0] ; [+3]
       67 LOADNIL                          R5
       68 RETURN                           R5 1
       69 LOADNIL                          R5
       70 GETIMPORT                        R6 K5 [ipairs]
       72 MOVE                             R7 R4
       73 CALL                             R6 1 3
       74 FORGPREP_INEXT                   R6
       75 JUMPIFNOTEQKNIL                  R5 ; [+2]
       77 MOVE                             R5 R10
       78 GETTABLEKS                       R11 R10 K17 ["index"]
       80 GETTABLEKS                       R12 R5 K17 ["index"]
       82 JUMPIFNOTLT                      R11 R12 ; [+2]
       84 MOVE                             R5 R10
       85 FORGLOOP                         R6 2 [inext] ; [-11]
       87 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
