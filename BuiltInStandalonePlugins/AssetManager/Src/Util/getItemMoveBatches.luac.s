PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 LOADN                            R5 0
        5 LOADN                            R6 0
        6 MOVE                             R7 R0
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 MOVE                             R14 R1
       11 MOVE                             R15 R11
       12 GETUPVAL                         R16 0
       13 GETTABLEKS                       R16 R16 K0 ["AssetInfoField"]
       15 GETTABLEKS                       R16 R16 K1 ["AssetType"]
       17 NAMECALL                         R12 R2 K2 ["getItemField"]
       19 CALL                             R12 4 1
       20 LOADB                            R13 1
       21 JUMPIFEQKNIL                     R12 ; [+10]
       23 GETUPVAL                         R14 0
       24 GETTABLEKS                       R14 R14 K1 ["AssetType"]
       26 GETTABLEKS                       R14 R14 K3 ["Folder"]
       28 JUMPIFEQ                         R12 R14 ; [+2]
       30 LOADB                            R13 0 +1
       31 LOADB                            R13 1
       32 MOVE                             R14 R13
       33 JUMPIFNOT                        R14 ; [+7]
       34 GETUPVAL                         R15 1
       35 GETTABLEKS                       R15 R15 K4 ["MoveBatchFolderMax"]
       37 JUMPIFLE                         R15 R5 ; [+2]
       39 LOADB                            R14 0 +1
       40 LOADB                            R14 1
       41 NOT                              R15 R13
       42 JUMPIFNOT                        R15 ; [+7]
       43 GETUPVAL                         R16 1
       44 GETTABLEKS                       R16 R16 K5 ["MoveBatchAssetMax"]
       46 JUMPIFLE                         R16 R6 ; [+2]
       48 LOADB                            R15 0 +1
       49 LOADB                            R15 1
       50 JUMPIF                           R14 ; [+1]
       51 JUMPIFNOT                        R15 ; [+11]
       52 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       54 MOVE                             R17 R3
       55 MOVE                             R18 R4
       56 GETIMPORT                        R16 K8 [table.insert]
       58 CALL                             R16 2 0
       59 NEWTABLE                         R4 0 0
       61 LOADN                            R5 0
       62 LOADN                            R6 0
       63 FASTCALL2                        TABLE_INSERT R4 R11 ; [+5]
       65 MOVE                             R17 R4
       66 MOVE                             R18 R11
       67 GETIMPORT                        R16 K8 [table.insert]
       69 CALL                             R16 2 0
       70 JUMPIFNOT                        R13 ; [+2]
       71 ADDK                             R5 R5 K9 [1]
       72 JUMP                             ; [+1]
       73 ADDK                             R6 R6 K9 [1]
       74 FORGLOOP                         R7 2 ; [-65]
       76 LENGTH                           R7 R4
       77 LOADN                            R8 0
       78 JUMPIFNOTLT                      R8 R7 ; [+8]
       80 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       82 MOVE                             R8 R3
       83 MOVE                             R9 R4
       84 GETIMPORT                        R7 K8 [table.insert]
       86 CALL                             R7 2 0
       87 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Controllers"]
       29 GETTABLEKS                       R4 R4 K11 ["ItemsCache"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 RETURN                           R4 1
