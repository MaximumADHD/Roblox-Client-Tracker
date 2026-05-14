PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K2 ["table"] ; [+10]
       10 GETIMPORT                        R2 K4 [error]
       12 LOADK                            R4 K5 ["%* is not a table"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 CALL                             R2 1 0
       19 GETIMPORT                        R2 K8 [table.isfrozen]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 1
       23 JUMPIF                           R2 ; [+9]
       24 GETIMPORT                        R2 K4 [error]
       26 LOADK                            R4 K9 ["%* is not frozen"]
       27 MOVE                             R6 R1
       28 NAMECALL                         R4 R4 K6 ["format"]
       30 CALL                             R4 2 1
       31 MOVE                             R3 R4
       32 CALL                             R2 1 0
       33 MOVE                             R2 R0
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 FASTCALL1                        TYPEOF R6 ; [+3]
       38 MOVE                             R8 R6
       39 GETIMPORT                        R7 K1 [typeof]
       41 CALL                             R7 1 1
       42 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+11]
       44 GETUPVAL                         R7 0
       45 MOVE                             R8 R6
       46 LOADK                            R10 K10 ["%*.%*"]
       47 MOVE                             R12 R1
       48 MOVE                             R13 R5
       49 NAMECALL                         R10 R10 K6 ["format"]
       51 CALL                             R10 3 1
       52 MOVE                             R9 R10
       53 CALL                             R7 2 0
       54 FORGLOOP                         R2 2 ; [-18]
       56 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["parent"]
        6 JUMPIFEQKNIL                     R3 ; [+50]
        8 GETIMPORT                        R4 K3 [table.find]
       10 MOVE                             R5 R1
       11 MOVE                             R6 R3
       12 CALL                             R4 2 1
       13 JUMPIFEQKNIL                     R4 ; [+22]
       15 GETIMPORT                        R4 K5 [error]
       17 LOADK                            R6 K6 ["Circular ancestry: %*.%* was about to reach %* again"]
       18 GETIMPORT                        R8 K8 [table.concat]
       20 MOVE                             R9 R2
       21 LOADK                            R10 K9 ["."]
       22 CALL                             R8 2 1
       23 GETTABLEKS                       R9 R0 K10 ["datum"]
       25 GETTABLEKS                       R9 R9 K11 ["name"]
       27 GETTABLEKS                       R10 R3 K10 ["datum"]
       29 GETTABLEKS                       R10 R10 K11 ["name"]
       31 NAMECALL                         R6 R6 K12 ["format"]
       33 CALL                             R6 4 1
       34 MOVE                             R5 R6
       35 CALL                             R4 1 0
       36 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       38 MOVE                             R5 R1
       39 MOVE                             R6 R3
       40 GETIMPORT                        R4 K14 [table.insert]
       42 CALL                             R4 2 0
       43 LOADN                            R6 1
       44 GETTABLEKS                       R7 R3 K10 ["datum"]
       46 GETTABLEKS                       R7 R7 K11 ["name"]
       48 FASTCALL3                        TABLE_INSERT R2 R6 R7
       50 MOVE                             R5 R2
       51 GETIMPORT                        R4 K14 [table.insert]
       53 CALL                             R4 3 0
       54 GETTABLEKS                       R3 R3 K0 ["parent"]
       56 JUMPBACK                         ; [-51]
       57 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQ                      R2 R3 ; [+2]
        2 RETURN                           R0 0
        3 GETIMPORT                        R4 K2 [table.concat]
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 LOADK                            R6 K3 ["."]
        9 CALL                             R4 2 1
       10 GETIMPORT                        R5 K5 [error]
       12 LOADK                            R7 K6 ["%*.%* - %* didn't match: %* ~= %*"]
       13 MOVE                             R9 R4
       14 GETTABLEKS                       R10 R0 K7 ["datum"]
       16 GETTABLEKS                       R10 R10 K8 ["name"]
       18 MOVE                             R11 R1
       19 MOVE                             R12 R2
       20 MOVE                             R13 R3
       21 NAMECALL                         R7 R7 K9 ["format"]
       23 CALL                             R7 6 1
       24 MOVE                             R6 R7
       25 CALL                             R5 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["parent"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+33]
        4 GETTABLEKS                       R1 R0 K1 ["datum"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["rootId"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+2]
       13 JUMP                             ; [+22]
       14 GETIMPORT                        R3 K6 [table.concat]
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 LOADK                            R5 K7 ["."]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K9 [error]
       23 LOADK                            R6 K10 ["%*.%* - ID of node with no parent didn't match: %* ~= %*"]
       24 MOVE                             R8 R3
       25 GETTABLEKS                       R9 R0 K1 ["datum"]
       27 GETTABLEKS                       R9 R9 K11 ["name"]
       29 MOVE                             R10 R1
       30 MOVE                             R11 R2
       31 NAMECALL                         R6 R6 K12 ["format"]
       33 CALL                             R6 5 1
       34 MOVE                             R5 R6
       35 CALL                             R4 1 0
       36 LOADN                            R1 1
       37 GETTABLEKS                       R2 R0 K13 ["children"]
       39 JUMPIFNOT                        R2 ; [+13]
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R2 R2 K14 ["iterate"]
       43 GETTABLEKS                       R3 R0 K13 ["children"]
       45 CALL                             R2 1 3
       46 FORGPREP                         R2
       47 GETUPVAL                         R7 3
       48 MOVE                             R8 R5
       49 CALL                             R7 1 1
       50 ADD                              R1 R1 R7
       51 FORGLOOP                         R2 1 ; [-5]
       53 GETUPVAL                         R2 4
       54 MOVE                             R3 R0
       55 CALL                             R2 1 1
       56 MOVE                             R3 R1
       57 JUMPIFNOTEQ                      R2 R3 ; [+2]
       59 JUMP                             ; [+22]
       60 GETIMPORT                        R4 K6 [table.concat]
       62 GETUPVAL                         R5 1
       63 MOVE                             R6 R0
       64 CALL                             R5 1 1
       65 LOADK                            R6 K7 ["."]
       66 CALL                             R4 2 1
       67 GETIMPORT                        R5 K9 [error]
       69 LOADK                            R7 K15 ["%*.%* - tree descendant count didn't match: %* ~= %*"]
       70 MOVE                             R9 R4
       71 GETTABLEKS                       R10 R0 K1 ["datum"]
       73 GETTABLEKS                       R10 R10 K11 ["name"]
       75 MOVE                             R11 R2
       76 MOVE                             R12 R3
       77 NAMECALL                         R7 R7 K12 ["format"]
       79 CALL                             R7 5 1
       80 MOVE                             R6 R7
       81 CALL                             R5 1 0
       82 GETIMPORT                        R2 K6 [table.concat]
       84 GETUPVAL                         R3 1
       85 MOVE                             R4 R0
       86 CALL                             R3 1 1
       87 LOADK                            R4 K7 ["."]
       88 CALL                             R2 2 1
       89 GETUPVAL                         R3 5
       90 GETTABLEKS                       R4 R0 K1 ["datum"]
       92 LOADK                            R6 K16 ["<%*>.datum"]
       93 MOVE                             R8 R2
       94 NAMECALL                         R6 R6 K12 ["format"]
       96 CALL                             R6 2 1
       97 MOVE                             R5 R6
       98 CALL                             R3 2 0
       99 GETUPVAL                         R3 5
      100 GETTABLEKS                       R4 R0 K17 ["uiState"]
      102 LOADK                            R6 K18 ["<%*>.uiState"]
      103 MOVE                             R8 R2
      104 NAMECALL                         R6 R6 K12 ["format"]
      106 CALL                             R6 2 1
      107 MOVE                             R5 R6
      108 CALL                             R3 2 0
      109 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["ExplorerNodeChildrenMutable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Flags"]
       30 GETTABLEKS                       R5 R5 K11 ["getFFlagDebugExplorerExpensiveSanityChecking"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Util"]
       37 GETTABLEKS                       R6 R6 K12 ["getTreeCount"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_0]
       41 CAPTURE                          VAL R6
       42 DUPCLOSURE                       R7 K14 [PROTO_1]
       43 DUPCLOSURE                       R8 K15 [PROTO_2]
       44 CAPTURE                          VAL R7
       45 DUPCLOSURE                       R9 K16 [PROTO_3]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R10 K17 [PROTO_4]
       53 CAPTURE                          VAL R9
       54 MOVE                             R12 R4
       55 CALL                             R12 0 1
       56 JUMPIFNOT                        R12 ; [+2]
       57 MOVE                             R11 R10
       58 RETURN                           R11 1
       59 DUPCLOSURE                       R11 K18 [PROTO_5]
       60 RETURN                           R11 1
