PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R9 R2
        7 LOADK                            R12 K0 ["AssetProperty"]
        8 MOVE                             R13 R7
        9 NAMECALL                         R10 R0 K1 ["getText"]
       11 CALL                             R10 3 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R8 K4 [table.insert]
       15 CALL                             R8 -1 0
       16 FORGLOOP                         R3 2 ; [-11]
       18 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 1
        4 JUMPIFNOT                        R5 ; [+44]
        5 NAMECALL                         R5 R0 K0 ["getItemsCache"]
        7 CALL                             R5 1 1
        8 NAMECALL                         R6 R1 K1 ["getCurrentScope"]
       10 CALL                             R6 1 1
       11 MOVE                             R7 R3
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 GETTABLEKS                       R14 R6 K2 ["Uid"]
       17 MOVE                             R15 R2
       18 MOVE                             R16 R11
       19 NAMECALL                         R12 R5 K3 ["getItemField"]
       21 CALL                             R12 4 1
       22 GETUPVAL                         R15 1
       23 GETTABLEKS                       R14 R15 K4 ["AssetInfoField"]
       25 GETTABLEKS                       R13 R14 K5 ["Creator"]
       27 JUMPIFNOTEQ                      R11 R13 ; [+3]
       29 GETTABLEKS                       R12 R12 K6 ["Name"]
       31 JUMPIFNOTEQKNIL                  R12 ; [+2]
       33 LOADB                            R14 0 +1
       34 LOADB                            R14 1
       35 FASTCALL1                        ASSERT R14 ; [+2]
       36 GETIMPORT                        R13 K8 [assert]
       38 CALL                             R13 1 0
       39 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       41 MOVE                             R14 R4
       42 MOVE                             R15 R12
       43 GETIMPORT                        R13 K11 [table.insert]
       45 CALL                             R13 2 0
       46 FORGLOOP                         R7 2 ; [-32]
       48 RETURN                           R4 1
       49 FASTCALL1                        TYPEOF R2 ; [+3]
       50 MOVE                             R8 R2
       51 GETIMPORT                        R7 K13 [typeof]
       53 CALL                             R7 1 1
       54 JUMPIFEQKS                       R7 K14 ["number"] ; [+2]
       56 LOADB                            R6 0 +1
       57 LOADB                            R6 1
       58 FASTCALL1                        ASSERT R6 ; [+2]
       59 GETIMPORT                        R5 K8 [assert]
       61 CALL                             R5 1 0
       62 NAMECALL                         R6 R0 K15 ["getItems"]
       64 CALL                             R6 1 1
       65 GETTABLE                         R5 R6 R2
       66 MOVE                             R6 R3
       67 LOADNIL                          R7
       68 LOADNIL                          R8
       69 FORGPREP                         R6
       70 GETTABLE                         R11 R5 R10
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R13 R14 K4 ["AssetInfoField"]
       74 GETTABLEKS                       R12 R13 K5 ["Creator"]
       76 JUMPIFNOTEQ                      R10 R12 ; [+3]
       78 GETTABLEKS                       R11 R11 K6 ["Name"]
       80 JUMPIFNOTEQKNIL                  R11 ; [+2]
       82 LOADB                            R13 0 +1
       83 LOADB                            R13 1
       84 FASTCALL1                        ASSERT R13 ; [+2]
       85 GETIMPORT                        R12 K8 [assert]
       87 CALL                             R12 1 0
       88 FASTCALL2                        TABLE_INSERT R4 R11 ; [+5]
       90 MOVE                             R13 R4
       91 MOVE                             R14 R11
       92 GETIMPORT                        R12 K11 [table.insert]
       94 CALL                             R12 2 0
       95 FORGLOOP                         R6 2 ; [-26]
       97 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R5 0 1
        2 GETUPVAL                         R6 0
        3 MOVE                             R7 R2
        4 MOVE                             R8 R4
        5 CALL                             R6 2 1
        6 SETLIST                          R5 R6 1 [1]
        8 MOVE                             R6 R3
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 GETUPVAL                         R11 1
       13 MOVE                             R12 R0
       14 MOVE                             R13 R1
       15 MOVE                             R14 R10
       16 MOVE                             R15 R4
       17 CALL                             R11 4 1
       18 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       20 MOVE                             R13 R5
       21 MOVE                             R14 R11
       22 GETIMPORT                        R12 K2 [table.insert]
       24 CALL                             R12 2 0
       25 FORGLOOP                         R6 2 ; [-14]
       27 GETUPVAL                         R6 2
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 3
       31 MOVE                             R9 R6
       32 NAMECALL                         R7 R7 K3 ["CopyToClipboard"]
       34 CALL                             R7 2 0
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["GetService"]
       25 LOADK                            R4 K11 ["StudioService"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K8 ["Util"]
       33 GETTABLEKS                       R5 R6 K12 ["convertTableToCsv"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R0 K6 ["Src"]
       40 GETTABLEKS                       R7 R8 K13 ["Flags"]
       42 GETTABLEKS                       R6 R7 K14 ["getFFlagAmrUpdatedItemsCache"]
       44 CALL                             R5 1 1
       45 DUPCLOSURE                       R6 K15 [PROTO_0]
       46 DUPCLOSURE                       R7 K16 [PROTO_1]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R8 K17 [PROTO_2]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 RETURN                           R8 1
