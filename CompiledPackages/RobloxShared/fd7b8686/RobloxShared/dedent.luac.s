PROTO_0:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 LOADK                            R2 K0 [""]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["isArray"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+16]
       13 LOADN                            R5 1
       14 LENGTH                           R3 R0
       15 LOADN                            R4 1
       16 FORNPREP                         R3
       17 MOVE                             R6 R2
       18 GETTABLE                         R7 R0 R5
       19 CONCAT                           R2 R6 R7
       20 LENGTH                           R6 R1
       21 JUMPIFNOTLE                      R5 R6 ; [+5]
       23 GETTABLE                         R6 R1 R5
       24 MOVE                             R7 R2
       25 MOVE                             R8 R6
       26 CONCAT                           R2 R7 R8
       27 FORNLOOP                         R3
       28 JUMP                             ; [+1]
       29 MOVE                             R2 R0
       30 GETGLOBAL                        R3 K2 ["removeTrailingSpacesAndTabs"]
       32 GETGLOBAL                        R4 K3 ["removeLeadingNewLines"]
       34 MOVE                             R5 R2
       35 CALL                             R4 1 -1
       36 CALL                             R3 -1 1
       37 LOADK                            R4 K0 [""]
       38 LOADN                            R7 1
       39 FASTCALL1                        STRING_LEN R3 ; [+3]
       40 MOVE                             R9 R3
       41 GETIMPORT                        R8 K6 [string.len]
       43 CALL                             R8 1 1
       44 MOVE                             R5 R8
       45 LOADN                            R6 1
       46 FORNPREP                         R5
       47 FASTCALL3                        STRING_SUB R3 R7 R7
       49 MOVE                             R9 R3
       50 MOVE                             R10 R7
       51 MOVE                             R11 R7
       52 GETIMPORT                        R8 K8 [string.sub]
       54 CALL                             R8 3 1
       55 JUMPIFEQKS                       R8 K9 [" "] ; [+3]
       57 JUMPIFNOTEQKS                    R8 K10 ["\t"] ; [+5]
       59 MOVE                             R9 R4
       60 MOVE                             R10 R8
       61 CONCAT                           R4 R9 R10
       62 FORNLOOP                         R5
       63 GETGLOBAL                        R5 K11 ["removeCommonIndent"]
       65 MOVE                             R6 R3
       66 MOVE                             R7 R4
       67 CALL                             R5 2 -1
       68 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["findOr"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 1
        6 LOADK                            R4 K1 ["\n*"]
        7 SETLIST                          R3 R4 1 [1]
        9 CALL                             R1 2 1
       10 JUMPIFEQKNIL                     R1 ; [+19]
       12 GETTABLEKS                       R2 R1 K2 ["index"]
       14 JUMPIFNOTEQKN                    R2 K3 [1] ; [+15]
       16 GETTABLEKS                       R6 R1 K4 ["match"]
       18 FASTCALL1                        STRING_LEN R6 ; [+2]
       19 GETIMPORT                        R5 K7 [string.len]
       21 CALL                             R5 1 1
       22 ADDK                             R4 R5 K3 [1]
       23 FASTCALL2                        STRING_SUB R0 R4 ; [+4]
       25 MOVE                             R3 R0
       26 GETIMPORT                        R2 K9 [string.sub]
       28 CALL                             R2 2 1
       29 MOVE                             R0 R2
       30 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADN                            R3 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["findOr"]
        6 MOVE                             R5 R0
        7 NEWTABLE                         R6 0 2
        9 LOADK                            R7 K1 [" +"]
       10 LOADK                            R8 K2 ["\t+"]
       11 SETLIST                          R6 R7 2 [1]
       13 MOVE                             R7 R3
       14 CALL                             R4 3 1
       15 MOVE                             R1 R4
       16 JUMPIFEQKNIL                     R1 ; [+40]
       18 JUMPIFEQKNIL                     R2 ; [+28]
       20 GETTABLEKS                       R5 R2 K3 ["index"]
       22 GETTABLEKS                       R7 R2 K4 ["match"]
       24 FASTCALL1                        STRING_LEN R7 ; [+2]
       25 GETIMPORT                        R6 K7 [string.len]
       27 CALL                             R6 1 1
       28 ADD                              R4 R5 R6
       29 GETTABLEKS                       R5 R1 K3 ["index"]
       31 JUMPIFNOTEQ                      R4 R5 ; [+15]
       33 DUPTABLE                         R4 K8 [{"index", "match"}]
       34 GETTABLEKS                       R5 R2 K3 ["index"]
       36 SETTABLEKS                       R5 R4 K3 ["index"]
       38 GETTABLEKS                       R6 R2 K4 ["match"]
       40 GETTABLEKS                       R7 R1 K4 ["match"]
       42 CONCAT                           R5 R6 R7
       43 SETTABLEKS                       R5 R4 K4 ["match"]
       45 MOVE                             R2 R4
       46 JUMP                             ; [+1]
       47 MOVE                             R2 R1
       48 GETTABLEKS                       R4 R1 K3 ["index"]
       50 GETTABLEKS                       R6 R1 K4 ["match"]
       52 FASTCALL1                        STRING_LEN R6 ; [+2]
       53 GETIMPORT                        R5 K7 [string.len]
       55 CALL                             R5 1 1
       56 ADD                              R3 R4 R5
       57 JUMPIFEQKNIL                     R1 ; [+9]
       59 FASTCALL1                        STRING_LEN R0 ; [+3]
       60 MOVE                             R5 R0
       61 GETIMPORT                        R4 K7 [string.len]
       63 CALL                             R4 1 1
       64 JUMPIFLT                         R4 R3 ; [+2]
       66 JUMPBACK                         ; [-64]
       67 JUMPIFEQKNIL                     R2 ; [+29]
       69 GETTABLEKS                       R5 R2 K3 ["index"]
       71 GETTABLEKS                       R7 R2 K4 ["match"]
       73 FASTCALL1                        STRING_LEN R7 ; [+2]
       74 GETIMPORT                        R6 K7 [string.len]
       76 CALL                             R6 1 1
       77 ADD                              R4 R5 R6
       78 FASTCALL1                        STRING_LEN R0 ; [+3]
       79 MOVE                             R7 R0
       80 GETIMPORT                        R6 K7 [string.len]
       82 CALL                             R6 1 1
       83 ADDK                             R5 R6 K9 [1]
       84 JUMPIFNOTEQ                      R4 R5 ; [+12]
       86 LOADN                            R6 1
       87 GETTABLEKS                       R8 R2 K3 ["index"]
       89 SUBK                             R7 R8 K9 [1]
       90 FASTCALL3                        STRING_SUB R0 R6 R7
       92 MOVE                             R5 R0
       93 GETIMPORT                        R4 K11 [string.sub]
       95 CALL                             R4 3 1
       96 RETURN                           R4 1
       97 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [string.gsub]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 LOADK                            R5 K3 [""]
        5 LOADN                            R6 1
        6 CALL                             R2 4 1
        7 GETIMPORT                        R3 K2 [string.gsub]
        9 MOVE                             R4 R2
       10 LOADK                            R6 K4 ["\n"]
       11 MOVE                             R7 R1
       12 CONCAT                           R5 R6 R7
       13 LOADK                            R6 K4 ["\n"]
       14 CALL                             R3 3 1
       15 MOVE                             R2 R3
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["String"]
       16 DUPCLOSURE                       R5 K8 [PROTO_0]
       17 CAPTURE                          VAL R3
       18 SETGLOBAL                        R5 K9 ["dedent"]
       20 DUPCLOSURE                       R5 K10 [PROTO_1]
       21 CAPTURE                          VAL R4
       22 SETGLOBAL                        R5 K11 ["removeLeadingNewLines"]
       24 DUPCLOSURE                       R5 K12 [PROTO_2]
       25 CAPTURE                          VAL R4
       26 SETGLOBAL                        R5 K13 ["removeTrailingSpacesAndTabs"]
       28 DUPCLOSURE                       R5 K14 [PROTO_3]
       29 SETGLOBAL                        R5 K15 ["removeCommonIndent"]
       31 DUPTABLE                         R5 K16 [{"dedent"}]
       32 GETGLOBAL                        R6 K9 ["dedent"]
       34 SETTABLEKS                       R6 R5 K9 ["dedent"]
       36 RETURN                           R5 1
