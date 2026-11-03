PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K2 ["table"] ; [+9]
       10 GETIMPORT                        R2 K4 [error]
       12 LOADK                            R3 K5 ["%* is not a table"]
       13 MOVE                             R5 R1
       14 NAMECALL                         R3 R3 K6 ["format"]
       16 CALL                             R3 2 1
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K8 [table.isfrozen]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 JUMPIF                           R2 ; [+8]
       23 GETIMPORT                        R2 K4 [error]
       25 LOADK                            R3 K9 ["%* is not frozen"]
       26 MOVE                             R5 R1
       27 NAMECALL                         R3 R3 K6 ["format"]
       29 CALL                             R3 2 1
       30 CALL                             R2 1 0
       31 MOVE                             R2 R0
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 FASTCALL1                        TYPEOF R6 ; [+3]
       36 MOVE                             R8 R6
       37 GETIMPORT                        R7 K1 [typeof]
       39 CALL                             R7 1 1
       40 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+10]
       42 GETUPVAL                         R7 0
       43 MOVE                             R8 R6
       44 LOADK                            R9 K10 ["%*.%*"]
       45 MOVE                             R11 R1
       46 MOVE                             R12 R5
       47 NAMECALL                         R9 R9 K6 ["format"]
       49 CALL                             R9 3 1
       50 CALL                             R7 2 0
       51 FORGLOOP                         R2 2 ; [-17]
       53 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["parent"]
        6 JUMPIFEQKNIL                     R3 ; [+49]
        8 GETIMPORT                        R4 K3 [table.find]
       10 MOVE                             R5 R1
       11 MOVE                             R6 R3
       12 CALL                             R4 2 1
       13 JUMPIFEQKNIL                     R4 ; [+21]
       15 GETIMPORT                        R4 K5 [error]
       17 LOADK                            R5 K6 ["Circular ancestry: %*.%* was about to reach %* again"]
       18 GETIMPORT                        R7 K8 [table.concat]
       20 MOVE                             R8 R2
       21 LOADK                            R9 K9 ["."]
       22 CALL                             R7 2 1
       23 GETTABLEKS                       R8 R0 K10 ["datum"]
       25 GETTABLEKS                       R8 R8 K11 ["name"]
       27 GETTABLEKS                       R9 R3 K10 ["datum"]
       29 GETTABLEKS                       R9 R9 K11 ["name"]
       31 NAMECALL                         R5 R5 K12 ["format"]
       33 CALL                             R5 4 1
       34 CALL                             R4 1 0
       35 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       37 MOVE                             R5 R1
       38 MOVE                             R6 R3
       39 GETIMPORT                        R4 K14 [table.insert]
       41 CALL                             R4 2 0
       42 LOADN                            R6 1
       43 GETTABLEKS                       R7 R3 K10 ["datum"]
       45 GETTABLEKS                       R7 R7 K11 ["name"]
       47 FASTCALL3                        TABLE_INSERT R2 R6 R7
       49 MOVE                             R5 R2
       50 GETIMPORT                        R4 K14 [table.insert]
       52 CALL                             R4 3 0
       53 GETTABLEKS                       R3 R3 K0 ["parent"]
       55 JUMPBACK                         ; [-50]
       56 RETURN                           R2 1

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
       12 LOADK                            R6 K6 ["%*.%* - %* didn't match: %* ~= %*"]
       13 MOVE                             R8 R4
       14 GETTABLEKS                       R9 R0 K7 ["datum"]
       16 GETTABLEKS                       R9 R9 K8 ["name"]
       18 MOVE                             R10 R1
       19 MOVE                             R11 R2
       20 MOVE                             R12 R3
       21 NAMECALL                         R6 R6 K9 ["format"]
       23 CALL                             R6 6 1
       24 CALL                             R5 1 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["parent"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+32]
        4 GETTABLEKS                       R1 R0 K1 ["datum"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["rootId"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+2]
       13 JUMP                             ; [+21]
       14 GETIMPORT                        R3 K6 [table.concat]
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 LOADK                            R5 K7 ["."]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K9 [error]
       23 LOADK                            R5 K10 ["%*.%* - ID of node with no parent didn't match: %* ~= %*"]
       24 MOVE                             R7 R3
       25 GETTABLEKS                       R8 R0 K1 ["datum"]
       27 GETTABLEKS                       R8 R8 K11 ["name"]
       29 MOVE                             R9 R1
       30 MOVE                             R10 R2
       31 NAMECALL                         R5 R5 K12 ["format"]
       33 CALL                             R5 5 1
       34 CALL                             R4 1 0
       35 LOADN                            R1 1
       36 GETTABLEKS                       R2 R0 K13 ["children"]
       38 JUMPIFNOT                        R2 ; [+13]
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R2 R2 K14 ["iterate"]
       42 GETTABLEKS                       R3 R0 K13 ["children"]
       44 CALL                             R2 1 3
       45 FORGPREP                         R2
       46 GETUPVAL                         R7 3
       47 MOVE                             R8 R5
       48 CALL                             R7 1 1
       49 ADD                              R1 R1 R7
       50 FORGLOOP                         R2 1 ; [-5]
       52 GETUPVAL                         R2 4
       53 MOVE                             R3 R0
       54 CALL                             R2 1 1
       55 MOVE                             R3 R1
       56 JUMPIFNOTEQ                      R2 R3 ; [+2]
       58 JUMP                             ; [+21]
       59 GETIMPORT                        R4 K6 [table.concat]
       61 GETUPVAL                         R5 1
       62 MOVE                             R6 R0
       63 CALL                             R5 1 1
       64 LOADK                            R6 K7 ["."]
       65 CALL                             R4 2 1
       66 GETIMPORT                        R5 K9 [error]
       68 LOADK                            R6 K15 ["%*.%* - tree descendant count didn't match: %* ~= %*"]
       69 MOVE                             R8 R4
       70 GETTABLEKS                       R9 R0 K1 ["datum"]
       72 GETTABLEKS                       R9 R9 K11 ["name"]
       74 MOVE                             R10 R2
       75 MOVE                             R11 R3
       76 NAMECALL                         R6 R6 K12 ["format"]
       78 CALL                             R6 5 1
       79 CALL                             R5 1 0
       80 GETIMPORT                        R2 K6 [table.concat]
       82 GETUPVAL                         R3 1
       83 MOVE                             R4 R0
       84 CALL                             R3 1 1
       85 LOADK                            R4 K7 ["."]
       86 CALL                             R2 2 1
       87 GETUPVAL                         R3 5
       88 GETTABLEKS                       R4 R0 K1 ["datum"]
       90 LOADK                            R5 K16 ["<%*>.datum"]
       91 MOVE                             R7 R2
       92 NAMECALL                         R5 R5 K12 ["format"]
       94 CALL                             R5 2 1
       95 CALL                             R3 2 0
       96 GETUPVAL                         R3 5
       97 GETTABLEKS                       R4 R0 K17 ["uiState"]
       99 LOADK                            R5 K18 ["<%*>.uiState"]
      100 MOVE                             R7 R2
      101 NAMECALL                         R5 R5 K12 ["format"]
      103 CALL                             R5 2 1
      104 CALL                             R3 2 0
      105 RETURN                           R1 1

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
